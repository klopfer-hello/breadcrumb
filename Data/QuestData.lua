--[[
    Breadcrumb - Quest Data Registry
    Central lookup for all quest data. Zone files register into this table.
]]

local ADDON_NAME, BC = ...

local M = {}
BC.QuestData = M

-- Quest data keyed by questID — zone files populate via RegisterZone()
M.Quests = {}

-- Register all quests for a zone (called by zone data files)
-- mapID is set once per zone, not repeated per quest
function M:RegisterZone(mapID, quests)
    for _, quest in ipairs(quests) do
        quest.mapID = mapID
        self.Quests[quest.id] = quest
    end
end

-- Lookup
function M:GetQuest(questID)
    return self.Quests[questID]
end

-- Get Wowhead URL for a quest (derived from questID, no need to store)
function M:GetWowheadUrl(questID)
    return "https://tbc.wowhead.com/quest=" .. questID
end

-- Get all quests for a given mapID
function M:GetQuestsForMap(mapID)
    local results = {}
    for _, quest in pairs(self.Quests) do
        if quest.mapID == mapID then
            results[#results + 1] = quest
        end
    end
    return results
end
