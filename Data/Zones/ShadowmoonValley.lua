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
    -- ========================================================================
    -- The Hand of Gul'dan chain
    -- ========================================================================
    {
        id = 10680,
        name = "The Hand of Gul'dan",
        next = 10458,
        steps = {
            {
                type = "talk",
                description = "Speak with Earthmender Sophurus or Earthmender Torlok",
                mapX = 0.364,
                mapY = 0.568,
                objective = 1,
                hint = "Quest starts the Tempest Keep attunement chain",
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
    {
        id = 10458,
        name = "Enraged Spirits of Fire and Earth",
        prereq = 10680,
        next = 10480,
        steps = {
            {
                type = "travel",
                description = "Travel to The Fel Pits",
                mapX = 0.450,
                mapY = 0.450,
                hint = "Fire and Earth spirits spawn here",
            },
            {
                type = "interact",
                description = "Place totem down",
                mapX = 0.422,
                mapY = 0.450,
                objective = 1,
                hint = "Required before killing spirits",
            },
            {
                type = "kill",
                description = "Kill Enraged Fire and Earth spirits",
                mapX = 0.520,
                mapY = 0.520,
                objective = 2,
                hint = "Both fire and earth spirits found at 52,52",
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
    {
        id = 10480,
        name = "Enraged Spirits of Water",
        prereq = 10458,
        next = 10481,
        steps = {
            {
                type = "kill",
                description = "Kill Enraged Water Spirits",
                mapX = 0.470,
                mapY = 0.220,
                objective = 1,
                hint = "Found around naga locations; place totem for assistance",
            },
            {
                type = "kill",
                description = "Kill Enraged Water Spirits",
                mapX = 0.440,
                mapY = 0.330,
                objective = 2,
                hint = "Another patch of spirits in this area",
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
    {
        id = 10481,
        name = "Enraged Spirits of Air",
        prereq = 10480,
        steps = {
            {
                type = "travel",
                description = "Travel to the Enraged Air Spirits location",
                mapX = 0.620,
                mapY = 0.550,
                hint = "Enraged Air Spirits spawn around coordinates 62,55",
            },
            {
                type = "kill",
                description = "Kill Enraged Air Spirits",
                mapX = 0.620,
                mapY = 0.550,
                objective = 1,
                hint = "Watch out for NPC Mordenai walking around the area",
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
    {
        id = 10681,
        name = "The Hand of Gul'dan",
        next = 10458,
        steps = {
            {
                type = "turnin",
                description = "Return to Earthmender Torlok",
                mapX = 0.422,
                mapY = 0.450,
                npc = "Earthmender Torlok",
            },
        },
    },
    {
        id = 10804,
        name = "Kindness",
        prereq = 10481,
        next = 10811,
        useItem = 31372,
        steps = {
            {
                type = "kill",
                description = "Kill Rocknail Flayers for carcasses",
                mapX = 0.610,
                mapY = 0.570,
                objective = 1,
                hint = "Combine 5 Rocknail Flayer Giblets into 1 Carcass, or loot carcasses directly",
            },
            {
                type = "interact",
                description = "Feed Mature Netherwing Drakes",
                mapX = 0.670,
                mapY = 0.520,
                objective = 2,
                hint = "Use carcasses on drakes; remove Lightning Shield or defensive buffs first",
            },
            {
                type = "turnin",
                description = "Return to Mordenai",
                mapX = 0.594,
                mapY = 0.586,
                npc = "Mordenai",
            },
        },
    },
    {
        id = 10811,
        name = "Seek Out Neltharaku",
        prereq = 10804,
        next = 10814,
        steps = {
            {
                type = "turnin",
                description = "Return to Neltharaku",
                mapX = 0.618,
                mapY = 0.600,
                npc = "Neltharaku",
            },
        },
    },
    {
        id = 10814,
        name = "Neltharaku's Tale",
        prereq = 10811,
        next = 10836,
        steps = {
            {
                type = "turnin",
                description = "Return to Neltharaku",
                mapX = 0.618,
                mapY = 0.600,
                npc = "Neltharaku",
            },
        },
    },
    {
        id = 10836,
        name = "Infiltrating Dragonmaw Fortress",
        prereq = 10814,
        next = 10837,
        steps = {
            {
                type = "kill",
                description = "Slay 15 Dragonmaw Orcs",
                mapX = 0.650,
                mapY = 0.600,
                objective = 1,
                hint = "Any Dragonmaw orc counts; Peons on Netherwing Ledge are non-elite and easier",
            },
            {
                type = "turnin",
                description = "Return to Neltharaku",
                mapX = 0.618,
                mapY = 0.600,
                npc = "Neltharaku",
            },
        },
    },
    {
        id = 10837,
        name = "To Netherwing Ledge!",
        prereq = 10836,
        next = 10854,
        steps = {
            {
                type = "collect",
                description = "Collect 12 Nethervine Crystals",
                mapX = 0.690,
                mapY = 0.810,
                objective = 1,
                hint = "Ground spawns on Netherwing Ledge (floating island); guarded by Dragonmaw Peons",
            },
            {
                type = "turnin",
                description = "Return to Neltharaku",
                mapX = 0.618,
                mapY = 0.600,
                npc = "Neltharaku",
            },
        },
    },
    {
        id = 10854,
        name = "The Force of Neltharaku",
        prereq = 10837,
        next = 10858,
        useItem = 31652,
        steps = {
            {
                type = "interact",
                description = "Free 5 Enslaved Netherwing Drakes",
                mapX = 0.690,
                mapY = 0.610,
                objective = 1,
                hint = "Use Enchanted Nethervine Crystal at range on drakes near Dragonmaw Fortress; help kill the orc for credit",
            },
            {
                type = "turnin",
                description = "Return to Neltharaku",
                mapX = 0.618,
                mapY = 0.600,
                npc = "Neltharaku",
            },
        },
    },
    {
        id = 10858,
        name = "Karynaku",
        prereq = 10854,
        next = 10866,
        steps = {
            {
                type = "talk",
                description = "Find Karynaku at Dragonmaw Fortress",
                mapX = 0.698,
                mapY = 0.614,
                objective = 1,
                npc = "Karynaku",
                hint = "On a ledge atop Dragonmaw Fortress; fly up to reach her",
            },
            {
                type = "turnin",
                description = "Speak with Karynaku",
                mapX = 0.698,
                mapY = 0.614,
                npc = "Karynaku",
            },
        },
    },
})
