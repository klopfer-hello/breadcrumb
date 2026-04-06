--[[
    Breadcrumb - Shattrath City Quest Data
    mapID: 1955 (TBC Anniversary)
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1955, {
    -- ========================================================================
    -- Voren'thal's Visions chain
    -- ========================================================================
    {
        id = 10024,
        name = "Voren'thal's Visions",
        steps = {
            {
                type = "collect",
                description = "Collect Basilisk Eyes",
                mapID = 1952,
                mapX = 0.371,
                mapY = 0.500,
                objective = 1,
                hint = "Kill basilisks at Silmyr Lake, ~50% drop rate",
            },
            {
                type = "turnin",
                description = "Return to Arcanist Adyria",
                mapX = 0.548,
                mapY = 0.224,
                npc = "Arcanist Adyria",
            },
        },
    },
})
