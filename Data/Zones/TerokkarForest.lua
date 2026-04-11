--[[
    Breadcrumb - Terokkar Forest Quest Data
    mapID: 1952 (TBC Anniversary)
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1952, {
    -- ========================================================================
    -- Additional Materials chain
    -- ========================================================================
    {
        id = 10664,
        name = "Additional Materials",
        prereq = 10662,
        next = 10663,
        steps = {
            {
                type = "collect",
                description = "Collect materials for the smith",
                mapX = 0.774,
                mapY = 0.386,
                objective = 1,
                hint = "Speak with David Wayne to obtain or deliver materials",
            },
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    -- ========================================================================
    -- Bane of the Illidari chain
    -- ========================================================================
    {
        id = 10676,
        name = "Bane of the Illidari",
        prereq = 10621,
        next = 10679,
        steps = {
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    {
        id = 10679,
        name = "Quenching the Blade",
        useItem = 30875,
        prereq = 10676,
        steps = {
            {
                type = "travel",
                description = "Travel to the Hand of Gul'dan",
                mapX = 0.774,
                mapY = 0.386,
                hint = "Instance location - requires entry",
            },
            {
                type = "interact",
                description = "Quench the sword in the lava of the Hand of Gul'dan",
                mapX = 0.774,
                mapY = 0.386,
                objective = 1,
                hint = "Complete the quenching ritual in the instance",
            },
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    -- ========================================================================
    -- Missing Friends chain
    -- ========================================================================
    {
        id = 10852,
        name = "Missing Friends",
        prereq = 10847,
        steps = {
            {
                type = "collect",
                description = "Obtain Veil Skith Prison Keys from Dreadhawks and Windrippers",
                mapX = 0.376,
                mapY = 0.514,
                objective = 1,
                hint = "Keys drop at ~20-25% rate from both mob types at the camp",
            },
            {
                type = "interact",
                description = "Free captive children from Veil Skith Cages using the keys",
                mapX = 0.376,
                mapY = 0.514,
                objective = 2,
                hint = "Four cages total at camp; treetop cages may contain multiple children",
            },
            {
                type = "turnin",
                description = "Return to Ethan",
                mapX = 0.376,
                mapY = 0.514,
                npc = "Ethan",
            },
        },
    },
    -- ========================================================================
    -- Surrender to the Horde chain
    -- ========================================================================
    {
        id = 10862,
        name = "Surrender to the Horde",
        next = 10863,
        steps = {
            {
                type = "turnin",
                description = "Return to Rilak the Redeemed",
                mapX = 0.526,
                mapY = 0.208,
                npc = "Rilak the Redeemed",
            },
        },
    },
    -- ========================================================================
    -- Evil Draws Near chain
    -- ========================================================================
    {
        id = 10923,
        name = "Evil Draws Near",
        group = 3,
        prereq = 10877,
        steps = {
            {
                type = "collect",
                description = "Collect 20 Doomskulls",
                mapX = 0.340,
                mapY = 0.710,
                objective = 1,
                hint = "Drop from Auchenai Doomsayers and Death Speakers in the Bone Wastes",
            },
            {
                type = "interact",
                description = "Use Dread Relic to summon Teribus the Cursed",
                mapX = 0.480,
                mapY = 0.670,
                objective = 2,
                hint = "Consumes all Doomskulls; takes about a minute to spawn",
            },
            {
                type = "kill",
                description = "Defeat Teribus the Cursed",
                mapX = 0.480,
                mapY = 0.670,
                objective = 3,
                hint = "Giant bone dragon; can be Nova'd and Dragon's Breath'd",
                npc = "Teribus the Cursed",
            },
            {
                type = "turnin",
                description = "Return to Oakun",
                mapX = 0.310,
                mapY = 0.764,
                npc = "Oakun",
            },
        },
    },
    -- ========================================================================
    -- Additional Materials chain
    -- ========================================================================
    {
        id = 10665,
        name = "Fresh from the Mechanar",
        group = 5,
        prereq = 10664,
        next = 10666,
        steps = {
            {
                type = "travel",
                description = "Travel to the Mechanar",
                mapX = 0.774,
                mapY = 0.386,
            },
            {
                type = "collect",
                description = "Smuggle a manacell out of the Mechanar",
                mapX = 0.774,
                mapY = 0.386,
                objective = 1,
                hint = "Located in a box at the wall before Mechano-Lord Capacitus",
            },
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    {
        id = 10666,
        name = "The Lexicon Demonica",
        group = 5,
        prereq = 10665,
        next = 10670,
        steps = {
            {
                type = "collect",
                description = "Retrieve the Lexicon Demonica",
                mapX = 0.774,
                mapY = 0.386,
                objective = 1,
                hint = "Drops from Vorpil in Shadow Labyrinth (normal mode only, not heroic)",
            },
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    {
        id = 10667,
        name = "Underworld Loam",
        group = 5,
        prereq = 10670,
        next = 10676,
        steps = {
            {
                type = "collect",
                description = "Collect Underworld Loam",
                mapX = 0.774,
                mapY = 0.386,
                objective = 1,
                hint = "Drops from mobs in Steamvaults dungeon (TBC)",
            },
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    {
        id = 10670,
        name = "Tear of the Earthmother",
        group = 5,
        prereq = 10666,
        next = 10667,
        steps = {
            {
                type = "kill",
                description = "Obtain the Tear of the Earthmother from Warbringer O'mrogg",
                mapX = 0.774,
                mapY = 0.386,
                objective = 1,
                hint = "O'mrogg is in Shattered Halls; cannot be completed on Heroic difficulty",
            },
            {
                type = "turnin",
                description = "Return to David Wayne",
                mapX = 0.774,
                mapY = 0.386,
                npc = "David Wayne",
            },
        },
    },
    -- ========================================================================
    -- Missing Friends chain
    -- ========================================================================
    {
        id = 10842,
        name = "The Vengeful Harbinger",
        group = 3,
        prereq = 10852,
        steps = {
            {
                type = "travel",
                description = "Travel to the Tomb of Light",
                mapX = 0.508,
                mapY = 0.548,
                hint = "Located in Auchindoun, Shadowmoon Valley",
            },
            {
                type = "interact",
                description = "Activate the relic in the end chamber of Tomb of Light",
                mapX = 0.374,
                mapY = 0.508,
                objective = 1,
                hint = "May require group effort; reportedly buggy",
            },
            {
                type = "turnin",
                description = "Return to Draenei Ascendant",
                mapX = 0.508,
                mapY = 0.548,
                npc = "Draenei Ascendant",
            },
        },
    },
})
