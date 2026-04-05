--[[
    Breadcrumb - HUD Arrow
    Free-floating directional arrow + distance display.
    Uses TomTom Arrow-1024.tga spritesheet (108 pre-rotated frames).
]]

local ADDON_NAME, BC = ...

local M = {}
BC.HudArrow = M

-- Math locals
local TWO_PI = math.pi * 2
local floor = math.floor
local sqrt = math.sqrt
local abs = math.abs
local atan2 = math.atan2

-- Spritesheet config (TomTom Arrow-1024.tga: 9 cols x 12 rows = 108 frames)
local TEX_W, TEX_H = 1024, 1024
local CELL_W, CELL_H = 112, 84
local COLS = 9
local FRAMES = 108

local frame
local mapDataCache = {}

-- Check if the player's current map is the quest map or a child of it
local function IsPlayerInQuestZone(questMapID)
    local playerMap = C_Map.GetBestMapForUnit("player")
    if not playerMap then return false, nil end
    if playerMap == questMapID then return true, playerMap end

    -- Walk up the map hierarchy (sub-zone → zone → continent)
    local info = C_Map.GetMapInfo(playerMap)
    while info and info.parentMapID and info.parentMapID ~= 0 do
        if info.parentMapID == questMapID then
            return true, playerMap
        end
        info = C_Map.GetMapInfo(info.parentMapID)
    end

    return false, playerMap
end

-- ============================================================================
-- Map coordinate math
-- ============================================================================

local function GetMapData(uiMapID)
    if mapDataCache[uiMapID] then return mapDataCache[uiMapID] end

    local v0 = CreateVector2D(0, 0)
    local v5 = CreateVector2D(0.5, 0.5)
    local _, tl = C_Map.GetWorldPosFromMapPos(uiMapID, v0)
    local _, ct = C_Map.GetWorldPosFromMapPos(uiMapID, v5)
    if not tl or not ct then return nil end

    -- WoW world coords: GetXY() returns (north/south, east/west)
    local top, left = tl:GetXY()
    local bot, right = ct:GetXY()
    local w = (left - right) * 2
    local h = (top - bot) * 2
    if w == 0 or h == 0 then return nil end

    mapDataCache[uiMapID] = { width = w, height = h, left = left, top = top }
    return mapDataCache[uiMapID]
end

local function ZoneToWorld(x, y, md)
    return md.left - md.width * x, md.top - md.height * y
end

-- ============================================================================
-- Arrow spritesheet
-- ============================================================================

local function GetArrowTexCoords(angle)
    angle = angle % TWO_PI
    if angle < 0 then angle = angle + TWO_PI end

    local cell = floor(angle / TWO_PI * FRAMES + 0.5) % FRAMES
    local col = cell % COLS
    local row = floor(cell / COLS)

    return (col * CELL_W) / TEX_W,
           ((col + 1) * CELL_W) / TEX_W,
           (row * CELL_H) / TEX_H,
           ((row + 1) * CELL_H) / TEX_H
end

-- ============================================================================
-- Frame creation — arrow + distance only, no backdrop
-- ============================================================================

local function CreateArrowFrame()
    frame = CreateFrame("Frame", "BreadcrumbHudArrow", UIParent)
    frame:SetSize(56, 62)
    frame:SetPoint("CENTER", UIParent, "CENTER", 0, 200)
    frame:SetFrameStrata("HIGH")
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")

    frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if BC.db and BC.db.settings then
            local point, _, relPoint, x, y = self:GetPoint()
            BC.db.settings.arrowPosition = { point, relPoint, x, y }
        end
    end)

    -- Arrow texture
    frame.arrow = frame:CreateTexture(nil, "ARTWORK")
    frame.arrow:SetSize(56, 42)
    frame.arrow:SetPoint("TOP", frame, "TOP", 0, 0)
    frame.arrow:SetTexture("Interface\\AddOns\\Breadcrumb\\media\\arrow")

    -- Distance text
    -- Distance text
    frame.dist = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    frame.dist:SetPoint("TOP", frame.arrow, "BOTTOM", 0, -2)
    frame.dist:SetJustifyH("CENTER")
    frame.dist:SetTextColor(0.82, 0.84, 0.88)

    -- Zone travel hint (shown when player is in the wrong zone)
    frame.zoneHint = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    frame.zoneHint:SetPoint("TOP", frame.arrow, "BOTTOM", 0, -2)
    frame.zoneHint:SetJustifyH("CENTER")
    frame.zoneHint:SetTextColor(1.0, 0.82, 0.0)
    frame.zoneHint:Hide()

    -- Load saved position
    if BC.db and BC.db.settings and BC.db.settings.arrowPosition then
        local pos = BC.db.settings.arrowPosition
        frame:ClearAllPoints()
        frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
    end

    -- OnUpdate
    local elapsed = 0
    frame:SetScript("OnUpdate", function(self, dt)
        elapsed = elapsed + dt
        if elapsed >= 0.03 then
            elapsed = 0
            M:UpdateArrow()
        end
    end)

    return frame
end

-- ============================================================================
-- Arrow update
-- ============================================================================

function M:UpdateArrow()
    if not frame or not frame:IsShown() then return end

    local questData, _, stepData = BC.StepResolver:GetActiveStep()
    if not stepData or not stepData.mapX or not stepData.mapY then
        frame.arrow:Hide()
        frame.dist:SetText("")
        frame.zoneHint:Hide()
        return
    end

    if not questData then
        frame.arrow:Hide()
        frame.dist:SetText("")
        frame.zoneHint:Hide()
        return
    end

    -- Step can override the quest's mapID (e.g. kill target in a different zone)
    local stepMapID = stepData.mapID or questData.mapID

    local inZone, playerMap = IsPlayerInQuestZone(stepMapID)
    if not inZone then
        -- Show which zone the player needs to travel to
        frame.arrow:Hide()
        frame.dist:SetText("")
        local mapInfo = C_Map.GetMapInfo(stepMapID)
        local zoneName = mapInfo and mapInfo.name or ("Zone " .. stepMapID)
        frame.zoneHint:SetText("Travel to: " .. zoneName)
        frame.zoneHint:Show()
        frame:SetHeight(56 + frame.zoneHint:GetStringHeight() + 4)
        return
    end

    frame.zoneHint:Hide()

    -- Use step's mapID for coordinate conversion
    local md = GetMapData(stepMapID)
    if not md then
        frame.arrow:Hide()
        frame.dist:SetText("")
        return
    end

    -- Player world position (UnitPosition returns y, x in TBC)
    local py, px = UnitPosition("player")
    if not px or not py then
        frame.arrow:Hide()
        frame.dist:SetText("")
        return
    end

    -- Target world position
    local tx, ty = ZoneToWorld(stepData.mapX, stepData.mapY, md)

    -- Distance
    local dx = px - tx
    local dy = py - ty
    local dist = sqrt(dx * dx + dy * dy)

    frame.dist:SetText(floor(dist) .. " yards")

    -- Color distance by proximity
    if dist < 30 then
        frame.dist:SetTextColor(0.2, 1, 0.2)
    elseif dist < 100 then
        frame.dist:SetTextColor(1, 1, 0.2)
    else
        frame.dist:SetTextColor(0.82, 0.84, 0.88)
    end

    -- Arrow direction
    local bearing = atan2(tx - px, ty - py)
    local facing = GetPlayerFacing() or 0
    local rel = bearing - facing

    local l, r, t, b = GetArrowTexCoords(rel)
    frame.arrow:SetTexCoord(l, r, t, b)

    -- Color arrow by accuracy
    local perc = abs((math.pi - abs(rel % TWO_PI - math.pi)) / math.pi)
    if perc > 0.95 then
        frame.arrow:SetVertexColor(0, 0.9, 1, 1)
    elseif perc > 0.7 then
        frame.arrow:SetVertexColor(0, 0.7, 0.85, 1)
    else
        frame.arrow:SetVertexColor(0.3, 0.5, 0.65, 1)
    end

    frame.arrow:Show()
end

-- ============================================================================
-- Public API
-- ============================================================================

function M:Show()
    if frame then frame:Show() end
end

function M:Hide()
    if frame then frame:Hide() end
end

function M:Toggle()
    if frame and frame:IsShown() then
        self:Hide()
    else
        self:Show()
    end
end

-- ============================================================================
-- Initialization
-- ============================================================================

function M:Initialize()
    CreateArrowFrame()

    -- Hide if tracker starts minimized
    if BC.db and BC.db.settings and BC.db.settings.minimized then
        frame:Hide()
    end

    BC:Debug("HudArrow initialized")
end
