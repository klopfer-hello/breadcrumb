--[[
    Breadcrumb - Minimap Button
    Draggable minimap icon for toggling the tracker.
]]

local ADDON_NAME, BC = ...

local M = {}
BC.MinimapButton = M

local ICON_TEXTURE = "Interface\\Icons\\Ability_Tracking"
local minimapButton = nil
local minimapAngle = 200

-- ============================================================================
-- Creation
-- ============================================================================

function M:Create()
    if minimapButton then return end

    local btn = CreateFrame("Button", "BreadcrumbMinimapButton", Minimap)
    btn:SetSize(31, 31)
    btn:SetFrameStrata("MEDIUM")
    btn:SetFrameLevel(8)
    btn:SetMovable(true)
    btn:EnableMouse(true)
    btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    btn:RegisterForDrag("LeftButton")

    -- Dark circle background
    local bg = btn:CreateTexture(nil, "BACKGROUND")
    bg:SetSize(20, 20)
    bg:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
    bg:SetPoint("TOPLEFT", 7, -5)

    -- Icon
    local icon = btn:CreateTexture(nil, "ARTWORK")
    icon:SetSize(17, 17)
    icon:SetPoint("TOPLEFT", 7, -6)
    icon:SetTexture(ICON_TEXTURE)
    icon:SetTexCoord(0.05, 0.95, 0.05, 0.95)
    btn.icon = icon

    -- Border
    local overlay = btn:CreateTexture(nil, "OVERLAY")
    overlay:SetSize(53, 53)
    overlay:SetPoint("TOPLEFT", 0, 0)
    overlay:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")

    -- Highlight
    btn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    -- Position on minimap edge
    local function UpdatePosition()
        local angle = math.rad(minimapAngle)
        local x = math.cos(angle) * 80
        local y = math.sin(angle) * 80
        btn:ClearAllPoints()
        btn:SetPoint("CENTER", Minimap, "CENTER", x, y)
    end

    -- Click: left = toggle tracker, right = toggle arrow
    btn:SetScript("OnClick", function(self, button)
        if button == "LeftButton" then
            if BC.TrackerFrame then
                BC.TrackerFrame:ToggleMinimize()
            end
        elseif button == "RightButton" then
            if BC.HudArrow then
                BC.HudArrow:Toggle()
            end
        end
    end)

    -- Drag around minimap edge
    btn:SetScript("OnDragStart", function(self)
        self:SetScript("OnUpdate", function(self)
            local mx, my = Minimap:GetCenter()
            local cx, cy = GetCursorPosition()
            local scale = Minimap:GetEffectiveScale()
            cx, cy = cx / scale, cy / scale
            minimapAngle = math.deg(math.atan2(cy - my, cx - mx))
            UpdatePosition()
        end)
    end)

    btn:SetScript("OnDragStop", function(self)
        self:SetScript("OnUpdate", nil)
        if BC.db and BC.db.settings then
            BC.db.settings.minimapAngle = minimapAngle
        end
    end)

    -- Tooltip
    btn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:AddLine("|cFF4CAF50Breadcrumb|r")
        GameTooltip:AddLine("Left-click: Toggle tracker", 1, 1, 1)
        GameTooltip:AddLine("Right-click: Toggle arrow", 1, 1, 1)
        GameTooltip:AddLine("Drag: Move button", 0.7, 0.7, 0.7)
        GameTooltip:Show()
    end)
    btn:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    minimapButton = btn

    -- Load saved angle
    if BC.db and BC.db.settings and BC.db.settings.minimapAngle then
        minimapAngle = BC.db.settings.minimapAngle
    end
    UpdatePosition()

    BC:Debug("Minimap button created")
end

-- ============================================================================
-- Initialization
-- ============================================================================

function M:Initialize()
    self:Create()
end
