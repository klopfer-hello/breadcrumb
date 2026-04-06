--[[
    Breadcrumb - Shadowmoon Valley Quest Data
    mapID: 1948 (TBC Anniversary)
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1948, {
    -- ========================================================================
    -- Escape from Coilskar Cistern chain
    -- ========================================================================
    {
        id = 10451,
        name = "Escape from Coilskar Cistern",
        group = 2,
        steps = {
            {
                type = "travel",
                description = "Travel to Coilskar Cistern in Shadowmoon Valley",
                mapX = 0.520,
                mapY = 0.188,
            },
            {
                type = "interact",
                description = "Escort Earthmender Wilda out of Coilskar Cistern",
                mapX = 0.520,
                mapY = 0.188,
                objective = 1,
                hint = "Protect Wilda from enemies during escort; quest may bug at end",
            },
            {
                type = "turnin",
                description = "Return to Earthmender Torlok",
                mapX = 0.422,
                mapY = 0.450,
                npc = "Earthmender Torlok",
            },
        },
    },
})
