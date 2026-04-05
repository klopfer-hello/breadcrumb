--[[
    Breadcrumb - Tracker Frame
    Multi-quest tracker with expand/collapse.
    - Shows all quests in log that have Breadcrumb data
    - Compact: quest name + active step summary
    - Click to expand: shows all steps
    - Selected quest drives the arrow
]]

local ADDON_NAME, BC = ...

local M = {}
BC.TrackerFrame = M

-- Syling Tracker-inspired palette
local D = {
    bg         = { 35/255, 40/255, 46/255 },  bgA = 0.73,
    border     = { 0, 0, 0 },                  borA = 0.40,
    title      = { 0.30, 0.69, 0.31 },         -- Breadcrumb green
    questName  = { 1.00, 0.82, 0.00 },         -- gold quest title
    selected   = { 1.00, 0.92, 0.50 },         -- brighter gold for selected
    completed  = { 0.26, 0.76, 0.42 },         -- green
    active     = { 1.00, 1.00, 1.00 },         -- white for active step
    future     = { 0.40, 0.40, 0.40 },         -- dimmed
    activeInd  = { 1.00, 0.82, 0.00 },         -- gold indicator
    futureInd  = { 0.30, 0.30, 0.30 },         -- dim indicator
    hint       = { 0.65, 0.65, 0.55 },         -- hint text
    summary    = { 0.70, 0.70, 0.70 },         -- compact step summary
    selBg      = { 1.00, 0.82, 0.00, 0.08 },   -- subtle gold highlight bg
}

local PADDING = 8
local QUEST_SPACING = 6
local STEP_SPACING = 3
local INDICATOR_SIZE = 8
local FRAME_WIDTH = 280
local DEFAULT_HEIGHT = 300
local MIN_HEIGHT = 80
local MAX_HEIGHT = 800
local SCROLLBAR_WIDTH = 6

local frame
local questEntries = {}  -- reusable quest entry frames
local expandedQuest = nil  -- which questID is expanded
local minimized = false
local collapsedZones = {}  -- { [mapID] = true } for collapsed zones

-- ============================================================================
-- Frame Creation
-- ============================================================================

local function CreateMainFrame()
    -- Load saved height
    local savedHeight = BC.db and BC.db.settings and BC.db.settings.trackerHeight or DEFAULT_HEIGHT

    frame = CreateFrame("Frame", "BreadcrumbTracker", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
    frame:SetSize(FRAME_WIDTH, savedHeight)
    frame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -30, -200)
    frame:SetFrameStrata("MEDIUM")
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")

    frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        -- Re-anchor from top-left so frame always grows downward
        local left = self:GetLeft()
        local top = self:GetTop()
        local parentTop = UIParent:GetTop()
        if left and top and parentTop then
            self:ClearAllPoints()
            self:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left, top - parentTop)
        end
        if BC.db and BC.db.settings then
            local point, _, relPoint, x, y = self:GetPoint()
            BC.db.settings.trackerPosition = { point, relPoint, x, y }
        end
    end)

    if frame.SetBackdrop then
        frame:SetBackdrop({
            bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
            edgeFile = "Interface\\Buttons\\WHITE8X8",
            tile = true, tileSize = 16, edgeSize = 1,
            insets = { left = 1, right = 1, top = 1, bottom = 1 },
        })
        frame:SetBackdropColor(D.bg[1], D.bg[2], D.bg[3], D.bgA)
        frame:SetBackdropBorderColor(D.border[1], D.border[2], D.border[3], D.borA)
    end

    -- Title
    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    frame.title:SetPoint("TOPLEFT", frame, "TOPLEFT", PADDING, -PADDING)
    frame.title:SetTextColor(D.title[1], D.title[2], D.title[3])
    frame.title:SetText("Breadcrumb")

    -- Minimize button
    frame.minimizeBtn = CreateFrame("Button", nil, frame)
    frame.minimizeBtn:SetSize(14, 14)
    frame.minimizeBtn:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -PADDING, -PADDING + 2)

    frame.minimizeBtn.text = frame.minimizeBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    frame.minimizeBtn.text:SetAllPoints()
    frame.minimizeBtn.text:SetText("-")
    frame.minimizeBtn.text:SetTextColor(D.future[1], D.future[2], D.future[3])

    frame.minimizeBtn:SetScript("OnEnter", function(self)
        self.text:SetTextColor(1, 1, 1)
    end)
    frame.minimizeBtn:SetScript("OnLeave", function(self)
        self.text:SetTextColor(D.future[1], D.future[2], D.future[3])
    end)
    frame.minimizeBtn:SetScript("OnClick", function()
        M:ToggleMinimize()
    end)

    -- ================================================================
    -- ScrollFrame + scrollable content
    -- ================================================================
    local titleHeight = 20  -- approximate title + padding

    frame.scrollFrame = CreateFrame("ScrollFrame", nil, frame)
    frame.scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", PADDING, -titleHeight)
    frame.scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -(PADDING + SCROLLBAR_WIDTH + 2), PADDING)
    frame.scrollFrame:EnableMouseWheel(true)

    -- Scrollable content child — must set size explicitly, no anchors
    frame.content = CreateFrame("Frame", nil, frame.scrollFrame)
    frame.content:SetSize(FRAME_WIDTH - PADDING * 2 - SCROLLBAR_WIDTH - 2, 1)
    frame.scrollFrame:SetScrollChild(frame.content)

    -- Update content width when scroll frame resizes
    frame.scrollFrame:SetScript("OnSizeChanged", function(self, w, h)
        frame.content:SetWidth(w)
    end)

    -- Mouse wheel scrolling
    frame.scrollFrame:SetScript("OnMouseWheel", function(self, delta)
        local current = self:GetVerticalScroll()
        local maxScroll = math.max(0, frame.content:GetHeight() - self:GetHeight())
        local newScroll = math.max(0, math.min(maxScroll, current - delta * 30))
        self:SetVerticalScroll(newScroll)
        M:UpdateScrollbar()
    end)

    -- ================================================================
    -- Scrollbar (thin, Syling Tracker style)
    -- ================================================================
    frame.scrollbar = CreateFrame("Frame", nil, frame)
    frame.scrollbar:SetWidth(SCROLLBAR_WIDTH)
    frame.scrollbar:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -2, -titleHeight)
    frame.scrollbar:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, PADDING)

    -- Scrollbar track
    frame.scrollbar.track = frame.scrollbar:CreateTexture(nil, "BACKGROUND")
    frame.scrollbar.track:SetAllPoints()
    frame.scrollbar.track:SetTexture("Interface\\Buttons\\WHITE8X8")
    frame.scrollbar.track:SetVertexColor(D.bg[1], D.bg[2], D.bg[3], 0.3)

    -- Scrollbar thumb
    frame.scrollbar.thumb = CreateFrame("Frame", nil, frame.scrollbar)
    frame.scrollbar.thumb:SetWidth(SCROLLBAR_WIDTH)
    frame.scrollbar.thumb:SetHeight(30)
    frame.scrollbar.thumb:SetPoint("TOP", frame.scrollbar, "TOP", 0, 0)

    frame.scrollbar.thumb.tex = frame.scrollbar.thumb:CreateTexture(nil, "ARTWORK")
    frame.scrollbar.thumb.tex:SetAllPoints()
    frame.scrollbar.thumb.tex:SetTexture("Interface\\Buttons\\WHITE8X8")
    frame.scrollbar.thumb.tex:SetVertexColor(D.title[1], D.title[2], D.title[3], 0.5)

    -- Thumb dragging
    frame.scrollbar.thumb:EnableMouse(true)
    frame.scrollbar.thumb:SetScript("OnMouseDown", function(self)
        local _, cursorY = GetCursorPosition()
        local scale = frame:GetEffectiveScale()
        self.dragStartY = cursorY / scale
        self.dragStartScroll = frame.scrollFrame:GetVerticalScroll()
        self:SetScript("OnUpdate", function(self)
            local _, newY = GetCursorPosition()
            newY = newY / scale
            local delta = self.dragStartY - newY
            local trackHeight = frame.scrollbar:GetHeight()
            local contentHeight = frame.content:GetHeight()
            local scrollHeight = frame.scrollFrame:GetHeight()
            local maxScroll = math.max(0, contentHeight - scrollHeight)
            local scrollPerPixel = maxScroll / math.max(1, trackHeight - self:GetHeight())
            local newScroll = math.max(0, math.min(maxScroll, self.dragStartScroll + delta * scrollPerPixel))
            frame.scrollFrame:SetVerticalScroll(newScroll)
            M:UpdateScrollbar()
        end)
    end)
    frame.scrollbar.thumb:SetScript("OnMouseUp", function(self)
        self:SetScript("OnUpdate", nil)
    end)

    frame.scrollbar:Hide()

    -- ================================================================
    -- Resize handle (bottom edge)
    -- ================================================================
    frame.resizeHandle = CreateFrame("Frame", nil, frame)
    frame.resizeHandle:SetHeight(6)
    frame.resizeHandle:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, 0)
    frame.resizeHandle:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)
    frame.resizeHandle:EnableMouse(true)

    frame.resizeHandle.tex = frame.resizeHandle:CreateTexture(nil, "OVERLAY")
    frame.resizeHandle.tex:SetAllPoints()
    frame.resizeHandle.tex:SetTexture("Interface\\Buttons\\WHITE8X8")
    frame.resizeHandle.tex:SetVertexColor(D.title[1], D.title[2], D.title[3], 0)

    frame.resizeHandle:SetScript("OnEnter", function(self)
        self.tex:SetVertexColor(D.title[1], D.title[2], D.title[3], 0.4)
    end)
    frame.resizeHandle:SetScript("OnLeave", function(self)
        if not self.dragging then
            self.tex:SetVertexColor(D.title[1], D.title[2], D.title[3], 0)
        end
    end)

    frame.resizeHandle:SetScript("OnMouseDown", function(self)
        self.dragging = true
        local _, startY = GetCursorPosition()
        local scale = frame:GetEffectiveScale()
        self.startY = startY / scale
        self.startHeight = frame:GetHeight()
        self:SetScript("OnUpdate", function(self)
            local _, curY = GetCursorPosition()
            curY = curY / scale
            local delta = self.startY - curY
            local newHeight = math.max(MIN_HEIGHT, math.min(MAX_HEIGHT, self.startHeight + delta))
            frame:SetHeight(newHeight)
            M:UpdateScrollbar()
        end)
    end)

    frame.resizeHandle:SetScript("OnMouseUp", function(self)
        self.dragging = false
        self:SetScript("OnUpdate", nil)
        self.tex:SetVertexColor(D.title[1], D.title[2], D.title[3], 0)
        -- Save height
        if BC.db and BC.db.settings then
            BC.db.settings.trackerHeight = frame:GetHeight()
        end
    end)

    -- Load saved position
    if BC.db and BC.db.settings and BC.db.settings.trackerPosition then
        local pos = BC.db.settings.trackerPosition
        frame:ClearAllPoints()
        frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
    end

    return frame
end

-- ============================================================================
-- Scrollbar update
-- ============================================================================

function M:UpdateScrollbar()
    if not frame or not frame.scrollbar then return end

    local contentHeight = frame.content:GetHeight()
    local viewHeight = frame.scrollFrame:GetHeight()

    if contentHeight <= viewHeight then
        -- No scrolling needed
        frame.scrollbar:Hide()
        frame.scrollFrame:SetVerticalScroll(0)
        return
    end

    frame.scrollbar:Show()

    local trackHeight = frame.scrollbar:GetHeight()
    local thumbRatio = math.min(1, viewHeight / contentHeight)
    local thumbHeight = math.max(20, trackHeight * thumbRatio)
    frame.scrollbar.thumb:SetHeight(thumbHeight)

    -- Position thumb based on scroll position
    local maxScroll = contentHeight - viewHeight
    local scrollPos = frame.scrollFrame:GetVerticalScroll()
    local scrollRatio = maxScroll > 0 and (scrollPos / maxScroll) or 0
    local thumbOffset = scrollRatio * (trackHeight - thumbHeight)
    frame.scrollbar.thumb:ClearAllPoints()
    frame.scrollbar.thumb:SetPoint("TOP", frame.scrollbar, "TOP", 0, -thumbOffset)
end

-- ============================================================================
-- Quest Entry (one per tracked quest)
-- ============================================================================

local function CreateStepRow(parent)
    local row = CreateFrame("Frame", nil, parent)
    row:SetHeight(16)

    row.indicator = row:CreateTexture(nil, "ARTWORK")
    row.indicator:SetSize(INDICATOR_SIZE, INDICATOR_SIZE)
    row.indicator:SetPoint("TOPLEFT", row, "TOPLEFT", 12, -4)
    row.indicator:SetTexture("Interface\\Buttons\\WHITE8X8")

    row.text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    row.text:SetPoint("TOPLEFT", row.indicator, "TOPRIGHT", 6, 2)
    row.text:SetPoint("RIGHT", row, "RIGHT", 0, 0)
    row.text:SetJustifyH("LEFT")
    row.text:SetJustifyV("TOP")
    row.text:SetWordWrap(true)

    row.hint = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    row.hint:SetPoint("TOPLEFT", row.text, "BOTTOMLEFT", 0, -1)
    row.hint:SetPoint("RIGHT", row, "RIGHT", 0, 0)
    row.hint:SetJustifyH("LEFT")
    row.hint:SetWordWrap(true)

    return row
end

local function GetOrCreateEntry(index)
    if questEntries[index] then return questEntries[index] end

    local entry = CreateFrame("Button", nil, frame.content)
    entry:SetHeight(30)
    entry:SetPoint("LEFT", frame.content, "LEFT", 0, 0)
    entry:SetPoint("RIGHT", frame.content, "RIGHT", 0, 0)
    entry:EnableMouse(true)
    entry:RegisterForClicks("LeftButtonUp")

    -- Selection highlight background
    entry.selBg = entry:CreateTexture(nil, "BACKGROUND")
    entry.selBg:SetAllPoints()
    entry.selBg:SetTexture("Interface\\Buttons\\WHITE8X8")
    entry.selBg:SetVertexColor(D.selBg[1], D.selBg[2], D.selBg[3], D.selBg[4])
    entry.selBg:Hide()

    -- Quest name (clickable)
    entry.questName = entry:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    entry.questName:SetPoint("TOPLEFT", entry, "TOPLEFT", PADDING, -2)
    entry.questName:SetPoint("RIGHT", entry, "RIGHT", -PADDING, 0)
    entry.questName:SetJustifyH("LEFT")
    entry.questName:SetWordWrap(false)

    -- Compact summary (shown when collapsed)
    entry.summary = entry:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    entry.summary:SetPoint("TOPLEFT", entry.questName, "BOTTOMLEFT", 10, -2)
    entry.summary:SetPoint("RIGHT", entry, "RIGHT", -PADDING, 0)
    entry.summary:SetJustifyH("LEFT")
    entry.summary:SetWordWrap(true)
    entry.summary:SetTextColor(D.summary[1], D.summary[2], D.summary[3])

    -- Wowhead button
    entry.wowheadBtn = CreateFrame("Button", nil, entry)
    entry.wowheadBtn:SetSize(12, 12)
    entry.wowheadBtn:SetPoint("RIGHT", entry, "RIGHT", -PADDING, 0)
    entry.wowheadBtn:SetPoint("TOP", entry.questName, "TOP", 0, 0)
    entry.wowheadBtn.icon = entry.wowheadBtn:CreateTexture(nil, "ARTWORK")
    entry.wowheadBtn.icon:SetAllPoints()
    entry.wowheadBtn.icon:SetTexture("Interface\\FriendsFrame\\UI-Toast-ChatInviteIcon")
    entry.wowheadBtn.icon:SetVertexColor(D.futureInd[1], D.futureInd[2], D.futureInd[3])
    entry.wowheadBtn:SetScript("OnEnter", function(self)
        self.icon:SetVertexColor(D.questName[1], D.questName[2], D.questName[3])
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:SetText("Wowhead", 1, 0.82, 0)
        GameTooltip:AddLine("Click to copy quest URL", 0.7, 0.7, 0.7)
        GameTooltip:Show()
    end)
    entry.wowheadBtn:SetScript("OnLeave", function(self)
        self.icon:SetVertexColor(D.futureInd[1], D.futureInd[2], D.futureInd[3])
        GameTooltip:Hide()
    end)

    -- Step rows (created on demand when expanded)
    entry.stepRows = {}

    questEntries[index] = entry
    return entry
end

-- ============================================================================
-- Update Display
-- ============================================================================

-- Group quests by zone, sorted by zone name
local function GetQuestsByZone(tracked)
    local zones = {}      -- { [mapID] = { name, quests = { questID, ... } } }
    local zoneOrder = {}   -- ordered list of mapIDs

    for _, questID in ipairs(tracked) do
        local questData = BC.QuestData:GetQuest(questID)
        if questData then
            local mapID = questData.mapID
            if not zones[mapID] then
                local mapInfo = C_Map.GetMapInfo(mapID)
                zones[mapID] = {
                    name = mapInfo and mapInfo.name or ("Zone " .. mapID),
                    quests = {},
                }
                zoneOrder[#zoneOrder + 1] = mapID
            end
            zones[mapID].quests[#zones[mapID].quests + 1] = questID
        end
    end

    -- Sort zones alphabetically
    table.sort(zoneOrder, function(a, b)
        return zones[a].name < zones[b].name
    end)

    return zones, zoneOrder
end

-- Zone header frames (reusable)
local zoneHeaders = {}

local function GetOrCreateZoneHeader(index)
    if zoneHeaders[index] then return zoneHeaders[index] end

    local header = CreateFrame("Button", nil, frame.content)
    header:SetHeight(16)
    header:SetPoint("LEFT", frame.content, "LEFT", 0, 0)
    header:SetPoint("RIGHT", frame.content, "RIGHT", 0, 0)
    header:EnableMouse(true)
    header:RegisterForClicks("LeftButtonUp")

    -- Collapse indicator
    header.arrow = header:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    header.arrow:SetPoint("LEFT", header, "LEFT", 2, 0)
    header.arrow:SetTextColor(D.future[1], D.future[2], D.future[3])

    header.text = header:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    header.text:SetPoint("LEFT", header.arrow, "RIGHT", 2, 0)
    header.text:SetJustifyH("LEFT")
    header.text:SetTextColor(D.title[1], D.title[2], D.title[3])

    header.line = header:CreateTexture(nil, "ARTWORK")
    header.line:SetHeight(1)
    header.line:SetPoint("LEFT", header.text, "RIGHT", 6, 0)
    header.line:SetPoint("RIGHT", header, "RIGHT", 0, 0)
    header.line:SetTexture("Interface\\Buttons\\WHITE8X8")
    header.line:SetVertexColor(D.title[1], D.title[2], D.title[3], 0.3)

    header:SetScript("OnEnter", function(self)
        self.text:SetTextColor(1, 1, 1)
    end)
    header:SetScript("OnLeave", function(self)
        self.text:SetTextColor(D.title[1], D.title[2], D.title[3])
    end)

    zoneHeaders[index] = header
    return header
end

function M:UpdateTracker()
    if not frame then return end

    local tracked = BC.StepResolver:GetTrackedQuests()
    if #tracked == 0 then
        frame:Hide()
        return
    end

    local selectedID = BC.StepResolver:GetSelectedQuest()
    local zones, zoneOrder = GetQuestsByZone(tracked)
    local totalHeight = 0
    local entryIdx = 0
    local headerIdx = 0
    local lastElement = nil  -- last frame placed, for anchoring

    for _, mapID in ipairs(zoneOrder) do
        local zone = zones[mapID]

        -- Zone header (always shown, clickable to collapse)
        headerIdx = headerIdx + 1
        local header = GetOrCreateZoneHeader(headerIdx)
        local isZoneCollapsed = collapsedZones[mapID]
        header.text:SetText(zone.name)
        header.arrow:SetText(isZoneCollapsed and "+" or "-")
        header.mapID = mapID
        header:SetScript("OnClick", function(self)
            collapsedZones[self.mapID] = not collapsedZones[self.mapID]
            M:UpdateTracker()
        end)
        header:ClearAllPoints()
        header:SetPoint("LEFT", frame.content, "LEFT", 0, 0)
        header:SetPoint("RIGHT", frame.content, "RIGHT", 0, 0)
        if not lastElement then
            header:SetPoint("TOP", frame.content, "TOP", 0, 0)
        else
            header:SetPoint("TOP", lastElement, "BOTTOM", 0, -QUEST_SPACING)
        end
        header:Show()
        lastElement = header
        totalHeight = totalHeight + 16 + QUEST_SPACING

        -- Skip quests if zone is collapsed
        if isZoneCollapsed then
            -- continue to next zone (Lua has no continue, so we use a flag)
        else

        for _, questID in ipairs(zone.quests) do
            entryIdx = entryIdx + 1
            local entry = GetOrCreateEntry(entryIdx)
            local questData = BC.QuestData:GetQuest(questID)
            local qs = BC.StepResolver:GetQuestState(questID)
            if not questData or not qs then break end

            local isSelected = (questID == selectedID)
            local isExpanded = (questID == expandedQuest)

            -- Position
            entry:ClearAllPoints()
            entry:SetPoint("LEFT", frame.content, "LEFT", 0, 0)
            entry:SetPoint("RIGHT", frame.content, "RIGHT", 0, 0)
            if not lastElement then
                entry:SetPoint("TOP", frame.content, "TOP", 0, 0)
            else
                entry:SetPoint("TOP", lastElement, "BOTTOM", 0, -QUEST_SPACING)
            end

            -- Quest name (with group size if applicable)
            local displayName = questData.name
            if questData.group then
                displayName = displayName .. " [" .. questData.group .. "]"
            end
            entry.questName:SetText(displayName)
            if isSelected then
                entry.questName:SetTextColor(D.selected[1], D.selected[2], D.selected[3])
                entry.selBg:Show()
            else
                entry.questName:SetTextColor(D.questName[1], D.questName[2], D.questName[3])
                entry.selBg:Hide()
            end


            -- Wowhead click handler
            entry.wowheadBtn:SetScript("OnClick", function()
                M:ShowWowheadPopup(BC.QuestData:GetWowheadUrl(questID))
            end)

            -- Click handler: select + toggle expand (shift-click opens quest log)
            entry.questID = questID
            entry:SetScript("OnClick", function(self)
                if IsShiftKeyDown() then
                    local qs = BC.StepResolver:GetQuestState(self.questID)
                    if qs and qs.questLogIndex then
                        QuestLog_SetSelection(qs.questLogIndex)
                        ShowUIPanel(QuestLogFrame)
                    end
                    return
                end
                -- Suppress auto-expand from STEPS_UPDATED during user click
                M._userClick = true
                BC.StepResolver:SelectQuest(self.questID)
                M._userClick = false
                if expandedQuest == self.questID then
                    expandedQuest = nil
                else
                    expandedQuest = self.questID
                end
                M:UpdateTracker()
            end)

            local entryHeight = entry.questName:GetStringHeight() + 4
            local steps = questData.steps

            if isExpanded then
                -- Show all steps
                entry.summary:Hide()
                for i, step in ipairs(steps) do
                    local row = entry.stepRows[i]
                    if not row then
                        row = CreateStepRow(entry)
                        entry.stepRows[i] = row
                    end

                    local stepState = BC.StepResolver:GetStepState(questID, i)

                    row:ClearAllPoints()
                    row:SetPoint("LEFT", entry, "LEFT", 0, 0)
                    row:SetPoint("RIGHT", entry, "RIGHT", 0, 0)
                    if i == 1 then
                        row:SetPoint("TOP", entry.questName, "BOTTOM", 0, -4)
                    else
                        row:SetPoint("TOP", entry.stepRows[i - 1], "BOTTOM", 0, -STEP_SPACING)
                    end

                    if stepState == "completed" then
                        row.indicator:SetVertexColor(D.completed[1], D.completed[2], D.completed[3], 1)
                        row.text:SetTextColor(D.completed[1], D.completed[2], D.completed[3])
                    elseif stepState == "active" then
                        row.indicator:SetVertexColor(D.activeInd[1], D.activeInd[2], D.activeInd[3], 1)
                        row.text:SetTextColor(D.active[1], D.active[2], D.active[3])
                    else
                        row.indicator:SetVertexColor(D.futureInd[1], D.futureInd[2], D.futureInd[3], 0.6)
                        row.text:SetTextColor(D.future[1], D.future[2], D.future[3])
                    end

                    local desc = step.description
                    if step.objective then
                        local obj = BC.StepResolver:GetObjective(questID, step.objective)
                        if obj and not obj.done then
                            desc = obj.have .. "/" .. obj.need .. " " .. desc
                        elseif obj and obj.done then
                            desc = obj.need .. "/" .. obj.need .. " " .. desc
                        end
                    end
                    row.text:SetText(desc)

                    local rowHeight = math.max(row.text:GetStringHeight() + 4, 16)
                    if stepState == "active" and step.hint then
                        row.hint:SetText(step.hint)
                        row.hint:SetTextColor(D.hint[1], D.hint[2], D.hint[3])
                        row.hint:Show()
                        rowHeight = rowHeight + row.hint:GetStringHeight() + 1
                    else
                        row.hint:Hide()
                    end

                    row:SetHeight(rowHeight)
                    row:Show()
                    entryHeight = entryHeight + rowHeight + STEP_SPACING
                end

                for i = #steps + 1, #entry.stepRows do
                    entry.stepRows[i]:Hide()
                end
            else
                -- Compact: active step summary only
                for _, row in ipairs(entry.stepRows) do
                    row:Hide()
                end

                if qs.activeStepIndex then
                    local step = steps[qs.activeStepIndex]
                    local desc = step.description
                    if step.objective then
                        local obj = BC.StepResolver:GetObjective(questID, step.objective)
                        if obj and not obj.done then
                            desc = obj.have .. "/" .. obj.need .. " " .. desc
                        end
                    end
                    entry.summary:SetText(desc)
                    entry.summary:Show()
                    entryHeight = entryHeight + entry.summary:GetStringHeight() + 2
                else
                    entry.summary:Hide()
                end
            end

            entry:SetHeight(entryHeight)
            entry:Show()
            lastElement = entry
            totalHeight = totalHeight + entryHeight + QUEST_SPACING
        end

        end -- else (not collapsed)
    end

    -- Hide extra entries
    for i = entryIdx + 1, #questEntries do
        questEntries[i]:Hide()
    end
    for i = headerIdx + 1, #zoneHeaders do
        zoneHeaders[i]:Hide()
    end

    -- Set content height (frame height is fixed / user-resizable)
    frame.content:SetHeight(totalHeight)
    M:UpdateScrollbar()

    frame:Show()
end

-- ============================================================================
-- Wowhead URL Popup
-- ============================================================================

local wowheadPopup

function M:ShowWowheadPopup(url)
    if not wowheadPopup then
        wowheadPopup = CreateFrame("Frame", "BreadcrumbWowheadPopup", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
        wowheadPopup:SetSize(360, 70)
        wowheadPopup:SetPoint("CENTER", UIParent, "CENTER", 0, 100)
        wowheadPopup:SetFrameStrata("DIALOG")
        wowheadPopup:EnableMouse(true)

        if wowheadPopup.SetBackdrop then
            wowheadPopup:SetBackdrop({
                bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
                edgeFile = "Interface\\Buttons\\WHITE8X8",
                tile = true, tileSize = 16, edgeSize = 1,
                insets = { left = 1, right = 1, top = 1, bottom = 1 },
            })
            wowheadPopup:SetBackdropColor(D.bg[1], D.bg[2], D.bg[3], 0.95)
            wowheadPopup:SetBackdropBorderColor(D.border[1], D.border[2], D.border[3], 0.8)
        end

        local label = wowheadPopup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        label:SetPoint("TOPLEFT", wowheadPopup, "TOPLEFT", PADDING, -PADDING)
        label:SetTextColor(D.summary[1], D.summary[2], D.summary[3])
        label:SetText("Wowhead URL (Ctrl+C to copy, Escape to close):")

        local editBox = CreateFrame("EditBox", nil, wowheadPopup, BackdropTemplateMixin and "BackdropTemplate" or nil)
        editBox:SetPoint("TOPLEFT", label, "BOTTOMLEFT", 0, -4)
        editBox:SetPoint("RIGHT", wowheadPopup, "RIGHT", -PADDING, 0)
        editBox:SetHeight(22)
        editBox:SetFontObject("GameFontHighlightSmall")
        editBox:SetAutoFocus(true)

        if editBox.SetBackdrop then
            editBox:SetBackdrop({
                bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
                edgeFile = "Interface\\Buttons\\WHITE8X8",
                tile = true, tileSize = 16, edgeSize = 1,
                insets = { left = 2, right = 2, top = 2, bottom = 2 },
            })
            editBox:SetBackdropColor(0.06, 0.06, 0.08, 1)
            editBox:SetBackdropBorderColor(D.border[1], D.border[2], D.border[3], 0.6)
        end

        editBox:SetScript("OnEscapePressed", function() wowheadPopup:Hide() end)
        editBox:SetScript("OnEnterPressed", function() wowheadPopup:Hide() end)

        wowheadPopup.editBox = editBox
    end

    wowheadPopup.editBox:SetText(url)
    wowheadPopup:Show()
    wowheadPopup.editBox:HighlightText()
    wowheadPopup.editBox:SetFocus()
end

-- ============================================================================
-- Public API
-- ============================================================================

function M:ToggleMinimize()
    minimized = not minimized

    if minimized then
        frame.savedHeight = frame:GetHeight()
        frame.scrollFrame:Hide()
        frame.scrollbar:Hide()
        if frame.resizeHandle then frame.resizeHandle:Hide() end
        frame.minimizeBtn.text:SetText("+")
        frame:SetHeight(PADDING + frame.title:GetStringHeight() + PADDING)
        if BC.HudArrow then BC.HudArrow:Hide() end
    else
        frame.scrollFrame:Show()
        if frame.resizeHandle then frame.resizeHandle:Show() end
        frame.minimizeBtn.text:SetText("-")
        frame:SetHeight(frame.savedHeight or DEFAULT_HEIGHT)
        M:UpdateTracker()
        M:UpdateScrollbar()
        if BC.HudArrow then BC.HudArrow:Show() end
    end

    -- Persist
    if BC.db and BC.db.settings then
        BC.db.settings.minimized = minimized
    end
end

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
    CreateMainFrame()

    -- Restore minimized state
    if BC.db and BC.db.settings and BC.db.settings.minimized then
        minimized = true
        frame.scrollFrame:Hide()
        frame.scrollbar:Hide()
        if frame.resizeHandle then frame.resizeHandle:Hide() end
        frame.minimizeBtn.text:SetText("+")
        frame:SetHeight(PADDING + frame.title:GetStringHeight() + PADDING)
    end

    BC.Events:Register("STEPS_UPDATED", function()
        if not minimized then
            -- Auto-expand selected quest (but not during user clicks — they toggle manually)
            if not M._userClick then
                local selected = BC.StepResolver:GetSelectedQuest()
                if selected then
                    expandedQuest = selected
                end
            end
            M:UpdateTracker()
        end
    end)

    BC.Events:Register("QUEST_LOG_UPDATE", function()
        if frame and frame:IsShown() and not minimized then
            -- Keep selected quest expanded
            if not M._userClick and not expandedQuest then
                local selected = BC.StepResolver:GetSelectedQuest()
                if selected then
                    expandedQuest = selected
                end
            end
            M:UpdateTracker()
        end
    end)

    BC:Debug("TrackerFrame initialized")
end
