--[[
    Breadcrumb - Item Bar
    Small floating frame showing the quest item for the selected quest.
    Contains a single SecureActionButtonTemplate button, created once.
]]

local ADDON_NAME, BC = ...

local M = {}
BC.ItemBar = M

local frame
local itemButton

local function CreateItemBar()
    -- Container frame
    frame = CreateFrame("Frame", "BreadcrumbItemBar", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
    frame:SetSize(36, 36)
    frame:SetPoint("TOPRIGHT", _G["BreadcrumbTracker"] or UIParent, "TOPLEFT", -4, 0)
    frame:SetFrameStrata("MEDIUM")
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")

    frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        if BC.db and BC.db.settings then
            local point, _, relPoint, x, y = self:GetPoint()
            BC.db.settings.itemBarPosition = { point, relPoint, x, y }
        end
    end)

    if frame.SetBackdrop then
        frame:SetBackdrop({
            bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
            edgeFile = "Interface\\Buttons\\WHITE8X8",
            tile = true, tileSize = 16, edgeSize = 1,
            insets = { left = 1, right = 1, top = 1, bottom = 1 },
        })
        frame:SetBackdropColor(35/255, 40/255, 46/255, 0.73)
        frame:SetBackdropBorderColor(0, 0, 0, 0.40)
    end

    -- The single secure item button
    itemButton = CreateFrame("Button", "BreadcrumbItemUseBtn", frame, "SecureActionButtonTemplate")
    itemButton:SetSize(28, 28)
    itemButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
    itemButton:RegisterForClicks("AnyUp", "AnyDown")
    itemButton:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")

    itemButton.icon = itemButton:CreateTexture(nil, "ARTWORK")
    itemButton.icon:SetPoint("TOPLEFT", 2, -2)
    itemButton.icon:SetPoint("BOTTOMRIGHT", -2, 2)
    itemButton.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)

    itemButton.cooldown = CreateFrame("Cooldown", nil, itemButton, "CooldownFrameTemplate")
    itemButton.cooldown:SetAllPoints(itemButton.icon)
    itemButton.cooldown:Hide()

    itemButton:SetScript("OnEnter", function(self)
        if self.itemID then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetHyperlink("item:" .. self.itemID .. ":0:0:0:0:0:0:0")
            GameTooltip:Show()
        end
    end)
    itemButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    frame:Hide()

    -- Load saved position
    if BC.db and BC.db.settings and BC.db.settings.itemBarPosition then
        local pos = BC.db.settings.itemBarPosition
        frame:ClearAllPoints()
        frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
    end
end

-- ============================================================================
-- Update: show/hide based on selected quest
-- ============================================================================

function M:Update()
    if not frame or not itemButton then return end
    if InCombatLockdown() then return end

    local selectedID = BC.StepResolver:GetSelectedQuest()
    if not selectedID then
        frame:Hide()
        return
    end

    local questData = BC.QuestData:GetQuest(selectedID)
    if not questData or not questData.useItem then
        frame:Hide()
        return
    end

    local itemID = questData.useItem
    local _, _, _, _, _, _, _, _, _, itemTexture = GetItemInfo(itemID)

    itemButton.itemID = itemID
    itemButton.icon:SetTexture(itemTexture or "Interface\\Icons\\INV_Misc_QuestionMark")
    itemButton:SetAttribute("type1", "item")
    itemButton:SetAttribute("item1", "item:" .. itemID)

    frame:Show()
end

-- ============================================================================
-- Public API
-- ============================================================================

function M:Show()
    if frame then self:Update() end
end

function M:Hide()
    if frame and not InCombatLockdown() then frame:Hide() end
end

-- ============================================================================
-- Initialization
-- ============================================================================

function M:Initialize()
    CreateItemBar()

    BC.Events:Register("STEPS_UPDATED", function()
        M:Update()
    end)

    BC:Debug("ItemBar initialized")
end
