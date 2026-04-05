--[[
    Breadcrumb - Blade's Edge Mountains Quest Data
    mapID: 1949 (TBC Anniversary) — verify in-game with /bc status
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1949, {
    -- ========================================================================
    -- Ogri'la / Mog'dorg chain
    -- ========================================================================
    {
        id = 10997,
        name = "Even Gronn Have Standards",
        group = 5,
        prereq = 10983,  -- Mog'dorg the Wizened
        next = 10998,    -- Grim(oire) Business
        steps = {
            {
                type = "kill",
                description = "Retrieve Slaag's Standard",
                mapID = 1952,  -- Terokkar Forest (Barrier Hills area)
                mapX = 0.200,
                mapY = 0.170,
                objective = 1,
                hint = "Kill Slaag in the Barrier Hills, northwest of Shattrath. Group quest.",
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
                hint = "Atop the tower at the Circle of Blood",
            },
        },
    },
})
