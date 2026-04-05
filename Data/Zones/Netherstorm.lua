--[[
    Breadcrumb - Netherstorm Quest Data
    mapID: 1953 (TBC Anniversary)
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1953, {
    -- ========================================================================
    -- Celestial Ridge chain (Netherwing/Ethereal)
    -- ========================================================================
    {
        id = 10270,
        name = "A Not-So-Modest Proposal",
        next = 10271,
        steps = {
            {
                type = "collect",
                description = "Retrieve the Teleporter Power Pack",
                mapX = 0.600,
                mapY = 0.420,
                objective = 1,
                hint = "Inside Access Shaft Zeon cave",
            },
            {
                type = "turnin",
                description = "Bring it to Image of Wind Trader Marid",
                mapX = 0.710,
                mapY = 0.390,
                npc = "Image of Wind Trader Marid",
                hint = "Ethereal Teleport Pad on Celestial Ridge",
            },
        },
    },
    {
        id = 10271,
        name = "Getting Down to Business",
        prereq = 10270,
        next = 10281,
        steps = {
            {
                type = "kill",
                description = "Collect Nether Dragon Essence",
                mapX = 0.720,
                mapY = 0.390,
                objective = 1,
                hint = "Kill Nether Drakes and Nether Dragons on Celestial Ridge",
            },
            {
                type = "turnin",
                description = "Turn in to Shrouded Figure",
                mapX = 0.708,
                mapY = 0.388,
                npc = "Shrouded Figure",
                hint = "Hidden behind crystals near the teleport pad",
            },
        },
    },
    {
        id = 10281,
        name = "Formal Introductions",
        prereq = 10271,
        next = 10272,
        steps = {
            {
                type = "talk",
                description = "Find and speak with Tyri",
                mapX = 0.712,
                mapY = 0.352,
                npc = "Tyri",
                hint = "North end of Celestial Ridge",
            },
        },
    },
    {
        id = 10272,
        name = "A Promising Start",
        prereq = 10281,
        next = 10273,
        steps = {
            {
                type = "collect",
                description = "Gather Nether Dragonkin Eggs",
                mapX = 0.725,
                mapY = 0.390,
                objective = 1,
                hint = "Scattered around crystal formations on Celestial Ridge",
            },
            {
                type = "turnin",
                description = "Return to Tyri",
                mapX = 0.712,
                mapY = 0.352,
                npc = "Tyri",
            },
        },
    },
    {
        id = 10273,
        name = "Troublesome Distractions",
        prereq = 10272,
        next = 10274,
        steps = {
            {
                type = "talk",
                description = "Speak with Wind Trader Marid",
                mapX = 0.582,
                mapY = 0.316,
                npc = "Wind Trader Marid",
                hint = "At the Protectorate Watchpost, lure him away",
            },
            {
                type = "kill",
                description = "Kill Wind Trader Marid",
                mapX = 0.598,
                mapY = 0.308,
                objective = 1,
                hint = "Two Nether-Stalker adds will spawn during the fight",
            },
            {
                type = "turnin",
                description = "Return to Tyri",
                mapX = 0.712,
                mapY = 0.352,
                npc = "Tyri",
            },
        },
    },
    {
        id = 10274,
        name = "Securing the Celestial Ridge",
        group = 3,
        prereq = 10273,
        steps = {
            {
                type = "interact",
                description = "Use Challenge of the Blue Flight",
                mapX = 0.720,
                mapY = 0.430,
                hint = "Southern edge of Celestial Ridge, near dragon bones",
            },
            {
                type = "kill",
                description = "Defeat Veraku",
                mapX = 0.720,
                mapY = 0.430,
                objective = 1,
                hint = "Group quest but soloable by most classes",
            },
            {
                type = "turnin",
                description = "Return to Tyri",
                mapX = 0.712,
                mapY = 0.352,
                npc = "Tyri",
            },
        },
    },

    -- ========================================================================
    -- Violet Tower / Archmage Vargoth chain
    -- ========================================================================
    {
        id = 10188,
        name = "The Sigil of Krasus",
        useItem = 28455,  -- Archmage Vargoth's Staff (use to summon Image of Archmage Vargoth for turnin)
        prereq = 10174,   -- Curse of the Violet Tower
        next = 10192,     -- Krasus's Compendium
        steps = {
            {
                type = "kill",
                description = "Retrieve the Sigil of Krasus",
                mapX = 0.510,
                mapY = 0.800,
                objective = 1,
                npc = "Spellbinder Maryana",
                hint = "Patrols around Manaforge Coruu",
            },
            {
                type = "interact",
                description = "Use Vargoth's Staff to turn in",
                mapX = 0.510,
                mapY = 0.800,
                hint = "Use the staff from your bags to summon Image of Archmage Vargoth",
            },
        },
    },

    -- ========================================================================
    -- Manaforge Coruu (Aldor)
    -- ========================================================================
    {
        id = 10246,
        name = "Attack on Manaforge Coruu",
        prereq = 10234,
        next = 10248,
        steps = {
            {
                type = "kill",
                description = "Slay Sunfury Arcanists",
                mapX = 0.498,
                mapY = 0.812,
                objective = 1,
                hint = "Found outside Manaforge Coruu",
            },
            {
                type = "kill",
                description = "Slay Sunfury Researchers",
                mapX = 0.490,
                mapY = 0.814,
                objective = 2,
                hint = "Found inside and around the manaforge",
            },
            {
                type = "turnin",
                description = "Return to Exarch Orelis",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Exarch Orelis",
            },
        },
    },
})
