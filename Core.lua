--[[
    Breadcrumb - TBC Anniversary Quest Guide
    Core Module - Main addon framework and initialization
]]

local ADDON_NAME, BC = ...

-- Global addon namespace
Breadcrumb = BC

-- Container API compatibility: TBC Anniversary uses C_Container namespace,
-- Classic Era uses legacy globals. Map legacy names to C_Container if needed.
if not GetContainerNumSlots and C_Container then
    GetContainerNumSlots = C_Container.GetContainerNumSlots
    GetContainerItemLink = C_Container.GetContainerItemLink
    GetContainerNumFreeSlots = C_Container.GetContainerNumFreeSlots
    GetContainerItemInfo = function(bag, slot)
        local info = C_Container.GetContainerItemInfo(bag, slot)
        if not info then return nil end
        return info.iconFileID, info.stackCount, info.isLocked, info.quality,
               info.isReadable, info.hasLoot, info.hyperlink, info.isFiltered,
               info.hasNoValue, info.itemID, info.isBound
    end
end

-- Version info
BC.VERSION = "0.1.0"
BC.BUILD = "TBC-Anniversary"

-- Addon state
BC.initialized = false
BC.debugMode = false

-- Color codes for chat messages
BC.Colors = {
    addon = "|cFF4CAF50",       -- Green for addon name
    success = "|cFF00FF00",     -- Green
    warning = "|cFFFFFF00",     -- Yellow
    error = "|cFFFF0000",       -- Red
    info = "|cFFAAAAAA",        -- Gray
    highlight = "|cFFFFD700",   -- Gold
}

-- ============================================================================
-- Event Bus (pub/sub)
-- Modules subscribe in Initialize(); Core fires without knowing who listens.
-- ============================================================================

local Events = {}
BC.Events = Events

local listeners = {}

function Events:Register(event, callback)
    if not listeners[event] then
        listeners[event] = {}
    end
    table.insert(listeners[event], callback)
end

function Events:Fire(event, ...)
    if listeners[event] then
        for _, callback in ipairs(listeners[event]) do
            callback(...)
        end
    end
end

-- ============================================================================
-- Debug / Chat helpers
-- ============================================================================

function BC:Debug(msg)
    if self.debugMode then
        DEFAULT_CHAT_FRAME:AddMessage(BC.Colors.info .. "[Breadcrumb] " .. msg .. "|r")
    end
end

function BC:Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage(BC.Colors.addon .. "Breadcrumb|r: " .. msg)
end

-- ============================================================================
-- Event handling
-- ============================================================================

local eventFrame = CreateFrame("Frame")
local eventHandlers = {}

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if eventHandlers[event] then
        eventHandlers[event](...)
    end
end)

-- ============================================================================
-- Initialization
-- ============================================================================

eventHandlers.ADDON_LOADED = function(addonName)
    if addonName ~= ADDON_NAME then return end

    -- Initialize SavedVariables
    BreadcrumbDB = BreadcrumbDB or {}
    BreadcrumbCharDB = BreadcrumbCharDB or {}

    BC.db = BreadcrumbDB
    BC.charDb = BreadcrumbCharDB

    -- Defaults
    if BC.db.settings == nil then
        BC.db.settings = {}
    end

    -- Initialize modules (after SavedVariables are loaded)
    if BC.StepResolver then BC.StepResolver:Initialize() end
    if BC.TrackerFrame then BC.TrackerFrame:Initialize() end
    if BC.HudArrow then BC.HudArrow:Initialize() end
    if BC.ItemBar then BC.ItemBar:Initialize() end
    if BC.MinimapButton then BC.MinimapButton:Initialize() end

    BC.initialized = true
    BC:Print("v" .. BC.VERSION .. " loaded. Type /bc for help.")
    BC:Debug("Initialization complete.")

    BC.Events:Fire("ADDON_INITIALIZED")
end

-- Quest events → forward to event bus
eventHandlers.PLAYER_ENTERING_WORLD = function()
    BC.Events:Fire("PLAYER_ENTERED_WORLD")
end

eventHandlers.QUEST_LOG_UPDATE = function()
    BC.Events:Fire("QUEST_LOG_UPDATE")
end

eventHandlers.QUEST_ACCEPTED = function(questLogIndex, questID)
    BC.Events:Fire("QUEST_ACCEPTED", questLogIndex, questID)
end

eventHandlers.QUEST_TURNED_IN = function(questID, xpReward, moneyReward)
    BC.Events:Fire("QUEST_TURNED_IN", questID)
end

eventHandlers.QUEST_REMOVED = function(questID)
    BC.Events:Fire("QUEST_REMOVED", questID)
end

eventHandlers.ZONE_CHANGED_NEW_AREA = function()
    BC.Events:Fire("ZONE_CHANGED")
end

-- Register core events
local events = {
    "ADDON_LOADED",
    "PLAYER_ENTERING_WORLD",
    "QUEST_LOG_UPDATE",
    "QUEST_ACCEPTED",
    "QUEST_TURNED_IN",
    "QUEST_REMOVED",
    "ZONE_CHANGED_NEW_AREA",
}

for _, event in ipairs(events) do
    eventFrame:RegisterEvent(event)
end

-- ============================================================================
-- Slash commands
-- ============================================================================

SLASH_BREADCRUMB1 = "/breadcrumb"
SLASH_BREADCRUMB2 = "/bc"
SlashCmdList["BREADCRUMB"] = function(msg)
    local cmd = strtrim(msg):lower()

    if cmd == "" or cmd == "help" then
        BC:Print("Commands:")
        BC:Print("  /bc status - Show current state")
        BC:Print("  /bc arrow - Toggle HUD arrow")
        BC:Print("  /bc tracker - Toggle step tracker")
        BC:Print("  /bc debug - Toggle debug mode")
    elseif cmd == "status" then
        -- Force a fresh scan
        if BC.StepResolver then
            BC.StepResolver:ScanAllQuests()
            BC.StepResolver:ResolveAllSteps()
        end

        local questID = BC.StepResolver:GetSelectedQuest()
        BC:Print("--- Breadcrumb Status ---")
        local tracked = BC.StepResolver:GetTrackedQuests()
        BC:Print("Tracked quests: " .. #tracked)
        BC:Print("Selected quest: " .. (questID and tostring(questID) or "none"))

        -- Quest data loaded?
        local questData = questID and BC.QuestData:GetQuest(questID)
        BC:Print("Quest data found: " .. (questData and ("YES - " .. questData.name) or "NO"))
        if questData then
            BC:Print("Quest mapID: " .. tostring(questData.mapID))
            BC:Print("Steps in data: " .. tostring(#questData.steps))
        end

        -- Quest log state
        if BC.StepResolver then
            BC:Print("Quest in log: " .. (BC.StepResolver:IsQuestInLog() and "YES" or "NO"))
        end

        -- Objectives
        if questData and questID then
            for i = 1, 5 do
                local obj = BC.StepResolver:GetObjective(questID, i)
                if obj then
                    BC:Print("  Objective " .. i .. ": " .. obj.text .. " done=" .. tostring(obj.done) .. " " .. obj.have .. "/" .. obj.need)
                end
            end
        end

        -- Active step
        local _, stepIndex, stepData = BC.StepResolver:GetActiveStep()
        if stepData then
            BC:Print("Active step " .. tostring(stepIndex) .. ": " .. stepData.description)
            BC:Print("  type=" .. (stepData.type or "?") .. " coords=" .. tostring(stepData.mapX) .. "," .. tostring(stepData.mapY))
        else
            BC:Print("Active step: NONE (bug - quest in log but no step resolved)")
        end

        -- Player map
        local playerMap = C_Map.GetBestMapForUnit("player")
        local playerMapInfo = playerMap and C_Map.GetMapInfo(playerMap)
        BC:Print("Player mapID: " .. tostring(playerMap) .. " (" .. (playerMapInfo and playerMapInfo.name or "?") .. ")")
        if questData and playerMap ~= questData.mapID then
            local info = C_Map.GetMapInfo(playerMap)
            local chain = tostring(playerMap) .. " (" .. (playerMapInfo and playerMapInfo.name or "?") .. ")"
            while info and info.parentMapID and info.parentMapID ~= 0 do
                local parentInfo = C_Map.GetMapInfo(info.parentMapID)
                chain = chain .. " -> " .. tostring(info.parentMapID) .. " (" .. (parentInfo and parentInfo.name or "?") .. ")"
                if info.parentMapID == questData.mapID then
                    chain = chain .. " (MATCH)"
                    break
                end
                info = C_Map.GetMapInfo(info.parentMapID)
            end
            BC:Print("Map chain: " .. chain)
        elseif questData then
            BC:Print("Same zone: YES")
        end

        -- Player position
        local py, px = UnitPosition("player")
        BC:Print("UnitPosition: x=" .. string.format("%.1f", px or 0) .. " y=" .. string.format("%.1f", py or 0))

        -- Player map coords
        if playerMap then
            local pos = C_Map.GetPlayerMapPosition(playerMap, "player")
            if pos then
                local mx, my = pos:GetXY()
                BC:Print("Map coords: " .. string.format("%.3f, %.3f", mx, my))
            else
                BC:Print("Map coords: nil (GetPlayerMapPosition failed)")
            end
        end

        -- Arrow
        local arrowFrame = _G["BreadcrumbHudArrow"]
        BC:Print("Arrow: " .. (arrowFrame and (arrowFrame:IsShown() and "VISIBLE" or "HIDDEN") or "NOT CREATED"))

    elseif cmd == "arrow" then
        if BC.HudArrow then BC.HudArrow:Toggle() end
    elseif cmd == "tracker" then
        if BC.TrackerFrame then BC.TrackerFrame:Toggle() end
    elseif cmd == "debug" then
        BC.debugMode = not BC.debugMode
        BC:Print("Debug mode: " .. (BC.debugMode and "ON" or "OFF"))
    end
end
