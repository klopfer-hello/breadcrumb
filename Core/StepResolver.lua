--[[
    Breadcrumb - Step Resolver
    Tracks ALL quests in the log that have Breadcrumb data.
    One quest is "selected" (arrow target), all are displayed in the tracker.
]]

local ADDON_NAME, BC = ...

local M = {}
BC.StepResolver = M

-- Per-quest state, keyed by questID
-- { [questID] = { questLogIndex, questInLog, questComplete, activeStepIndex, objectives } }
local questStates = {}

-- Which quest the arrow points to
local selectedQuestID = nil

-- Pending chain advance — prevents other events from overriding the selection
local pendingChainQuestID = nil

-- List of questIDs currently in the log with Breadcrumb data (ordered)
local trackedQuests = {}

-- ============================================================================
-- Quest Log Scanning
-- ============================================================================

-- Scan the entire quest log and update state for all quests with Breadcrumb data
function M:ScanAllQuests()
    -- Reset tracking
    wipe(trackedQuests)

    -- Mark all existing states as not-in-log (will be set true if found)
    for qid, qs in pairs(questStates) do
        qs.questInLog = false
        qs.questLogIndex = nil
    end

    local numEntries = GetNumQuestLogEntries()
    for i = 1, numEntries do
        local title, level, questTag, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)
        if not isHeader and questID then
            local questData = BC.QuestData:GetQuest(questID)
            if questData then
                -- Initialize state if new
                if not questStates[questID] then
                    questStates[questID] = {
                        questLogIndex = nil,
                        questInLog = false,
                        questComplete = false,
                        activeStepIndex = nil,
                        objectives = {},
                    }
                end

                local qs = questStates[questID]
                qs.questLogIndex = i
                qs.questInLog = true
                qs.questComplete = (isComplete ~= nil and isComplete ~= 0)

                -- Scan objectives
                wipe(qs.objectives)
                local numObjectives = GetNumQuestLeaderBoards(i)
                for j = 1, numObjectives do
                    local text, objectiveType, finished = GetQuestLogLeaderBoard(j, i)
                    local have, need = 0, 0
                    if text then
                        local h, n = text:match("(%d+)/(%d+)")
                        if h and n then
                            have = tonumber(h)
                            need = tonumber(n)
                        end
                    end
                    qs.objectives[j] = {
                        text = text or "",
                        type = objectiveType or "",
                        done = finished or false,
                        have = have,
                        need = need,
                    }
                end

                trackedQuests[#trackedQuests + 1] = questID
            end
        end
    end

    -- Clean up states for quests no longer in log
    for qid, qs in pairs(questStates) do
        if not qs.questInLog then
            questStates[qid] = nil
        end
    end
end

-- ============================================================================
-- Step Resolution (for all tracked quests)
-- ============================================================================

function M:ResolveAllSteps()
    local anyChanged = false

    for _, questID in ipairs(trackedQuests) do
        local questData = BC.QuestData:GetQuest(questID)
        local qs = questStates[questID]
        if questData and qs then
            local oldStep = qs.activeStepIndex
            local steps = questData.steps

            if qs.questComplete then
                qs.activeStepIndex = #steps
            else
                qs.activeStepIndex = #steps  -- fallback to turnin
                for i, step in ipairs(steps) do
                    if step.objective then
                        local obj = qs.objectives[step.objective]
                        if obj and not obj.done then
                            qs.activeStepIndex = i
                            break
                        end
                    end
                end
            end

            if qs.activeStepIndex ~= oldStep then
                anyChanged = true
            end
        end
    end

    -- If a chain advance is pending and the quest is now in the log, select it
    if pendingChainQuestID and questStates[pendingChainQuestID] then
        selectedQuestID = pendingChainQuestID
        pendingChainQuestID = nil
        if BC.charDb then
            BC.charDb.selectedQuestID = selectedQuestID
        end
        anyChanged = true
    elseif pendingChainQuestID then
        -- Chain advance pending but quest not in log yet — keep waiting, don't override
    elseif not selectedQuestID or not questStates[selectedQuestID] then
        -- Auto-select first quest if nothing selected or saved quest no longer in log
        selectedQuestID = trackedQuests[1]
        if BC.charDb then
            BC.charDb.selectedQuestID = selectedQuestID
        end
    end

    if anyChanged then
        BC.Events:Fire("STEPS_UPDATED")
    end

    -- Fire arrow update for selected quest
    if selectedQuestID then
        local questData = BC.QuestData:GetQuest(selectedQuestID)
        local qs = questStates[selectedQuestID]
        if questData and qs and qs.activeStepIndex then
            BC.Events:Fire("STEP_CHANGED", selectedQuestID, qs.activeStepIndex, questData.steps[qs.activeStepIndex])
        end
    end
end

-- ============================================================================
-- Public API
-- ============================================================================

function M:GetTrackedQuests()
    return trackedQuests
end

function M:GetQuestState(questID)
    return questStates[questID]
end

function M:GetSelectedQuest()
    return selectedQuestID
end

function M:SelectQuest(questID)
    selectedQuestID = questID
    if BC.charDb then
        BC.charDb.selectedQuestID = questID
    end

    local questData = BC.QuestData:GetQuest(questID)
    local qs = questStates[questID]
    if questData and qs and qs.activeStepIndex then
        BC.Events:Fire("STEP_CHANGED", questID, qs.activeStepIndex, questData.steps[qs.activeStepIndex])
    end

    BC.Events:Fire("STEPS_UPDATED")
end

function M:GetActiveStep()
    if not selectedQuestID then return nil, nil, nil end
    local questData = BC.QuestData:GetQuest(selectedQuestID)
    local qs = questStates[selectedQuestID]
    if not questData or not qs or not qs.activeStepIndex then return nil, nil, nil end
    return questData, qs.activeStepIndex, questData.steps[qs.activeStepIndex]
end

function M:GetActiveQuest()
    return selectedQuestID
end

function M:GetStepState(questID, stepIndex)
    local qs = questStates[questID]
    if not qs or not qs.activeStepIndex then return "future" end
    if stepIndex < qs.activeStepIndex then return "completed" end
    if stepIndex == qs.activeStepIndex then return "active" end
    return "future"
end

function M:GetObjective(questID, objectiveIndex)
    local qs = questStates[questID]
    if not qs then return nil end
    return qs.objectives[objectiveIndex]
end

function M:IsQuestInLog()
    return selectedQuestID and questStates[selectedQuestID] and questStates[selectedQuestID].questInLog or false
end

-- ============================================================================
-- Initialization
-- ============================================================================

function M:Initialize()
    BC.Events:Register("QUEST_LOG_UPDATE", function()
        M:ScanAllQuests()
        M:ResolveAllSteps()
    end)

    BC.Events:Register("QUEST_ACCEPTED", function(questLogIndex, questID)
        -- Auto-select newly accepted quest if it has Breadcrumb data
        if questID and BC.QuestData:GetQuest(questID) then
            pendingChainQuestID = questID
        end
        M:ScanAllQuests()
        M:ResolveAllSteps()
    end)

    BC.Events:Register("QUEST_TURNED_IN", function(qID)
        -- Auto-advance chain: set pending flag immediately so any subsequent
        -- scan (from QUEST_ACCEPTED or QUEST_LOG_UPDATE) picks it up
        local turnedInData = BC.QuestData:GetQuest(qID)
        if turnedInData and turnedInData.next then
            local nextData = BC.QuestData:GetQuest(turnedInData.next)
            if nextData then
                pendingChainQuestID = turnedInData.next
                BC:Debug("Chain advance pending: " .. turnedInData.name .. " -> " .. nextData.name)
                -- Safety timeout: clear pending if quest never accepted
                C_Timer.After(5, function()
                    if pendingChainQuestID == turnedInData.next then
                        pendingChainQuestID = nil
                        M:ScanAllQuests()
                        M:ResolveAllSteps()
                    end
                end)
            end
        end

        C_Timer.After(0.2, function()
            M:ScanAllQuests()
            M:ResolveAllSteps()
        end)
    end)

    BC.Events:Register("QUEST_REMOVED", function()
        M:ScanAllQuests()
        M:ResolveAllSteps()
    end)

    BC.Events:Register("PLAYER_ENTERED_WORLD", function()
        M:ScanAllQuests()
        M:ResolveAllSteps()
    end)

    -- Restore selected quest from saved vars
    selectedQuestID = BC.charDb and BC.charDb.selectedQuestID

    -- Initial scan
    M:ScanAllQuests()
    M:ResolveAllSteps()

    BC:Debug("StepResolver initialized, tracking " .. #trackedQuests .. " quests")
end
