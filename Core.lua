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

    BC.initialized = true
    BC:Print("v" .. BC.VERSION .. " loaded.")
    BC:Debug("Initialization complete.")

    BC.Events:Fire("ADDON_INITIALIZED")
end

eventHandlers.PLAYER_ENTERING_WORLD = function()
    BC.Events:Fire("PLAYER_ENTERED_WORLD")
end

-- Register core events
local events = {
    "ADDON_LOADED",
    "PLAYER_ENTERING_WORLD",
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
        BC:Print("  /bc - Show help")
        BC:Print("  /bc debug - Toggle debug mode")
    elseif cmd == "debug" then
        BC.debugMode = not BC.debugMode
        BC:Print("Debug mode: " .. (BC.debugMode and "ON" or "OFF"))
    end
end
