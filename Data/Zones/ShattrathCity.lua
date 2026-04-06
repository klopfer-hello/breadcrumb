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
    -- ========================================================================
    -- The Eyes of Skettis chain
    -- ========================================================================
    {
        id = 10847,
        name = "The Eyes of Skettis",
        prereq = 10862,
        next = 10863,
        steps = {
            {
                type = "collect",
                description = "Collect Eye of Veil Reskk",
                mapX = 0.490,
                mapY = 0.160,
                objective = 1,
                hint = "Top of tower starting at 49,16 then cross bridge at 50,19",
            },
            {
                type = "collect",
                description = "Collect Eye of Veil Shienor",
                mapX = 0.590,
                mapY = 0.250,
                objective = 2,
                hint = "Entrance is INSIDE the tree at 59,25, climb up then cross bridge",
            },
            {
                type = "turnin",
                description = "Return to Rilak the Redeemed",
                mapX = 0.526,
                mapY = 0.208,
                npc = "Rilak the Redeemed",
            },
        },
    },
})
