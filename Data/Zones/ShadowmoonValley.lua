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
    -- Spleendid! chain
    -- ========================================================================
    {
        id = 10661,
        name = "Spleendid!",
        next = 10677,
        steps = {
            {
                type = "collect",
                description = "Collect Spleens",
                mapX = 0.366,
                mapY = 0.552,
                objective = 1,
                hint = "Large camp of felfire diemetradons between Legion Hold and The Deathforge",
            },
            {
                type = "turnin",
                description = "Return to Gnomus",
                mapX = 0.366,
                mapY = 0.552,
                npc = "Gnomus",
            },
        },
    },
    {
        id = 10677,
        name = "The Second Course...",
        prereq = 10661,
        next = 10678,
        steps = {
            {
                type = "collect",
                description = "Collect an overdeveloped felfire gizzard",
                mapX = 0.560,
                mapY = 0.520,
                objective = 1,
                hint = "Drop rate is decent, found near the lake. Easy to kill.",
            },
            {
                type = "turnin",
                description = "Return to Gnomus",
                mapX = 0.366,
                mapY = 0.552,
                npc = "Gnomus",
            },
        },
    },
    {
        id = 10678,
        name = "The Main Course!",
        prereq = 10677,
        steps = {
            {
                type = "kill",
                description = "Kill Felspine",
                mapX = 0.560,
                mapY = 0.420,
                objective = 1,
                hint = "Large target, soloable but watch for acid damage",
            },
            {
                type = "turnin",
                description = "Return to Gnomus",
                mapX = 0.366,
                mapY = 0.552,
                npc = "Gnomus",
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
        steps = {
            {
                type = "kill",
                description = "Kill Rocknail creatures around the crystals",
                mapX = 0.594,
                mapY = 0.586,
                objective = 1,
                hint = "They drop items needed to feed the drakes",
            },
            {
                type = "collect",
                description = "Collect dropped items from Rocknail creatures",
                mapX = 0.594,
                mapY = 0.586,
                objective = 2,
                hint = "Use these items to feed the drakes in the area",
            },
            {
                type = "interact",
                description = "Feed the drakes with collected items",
                mapX = 0.594,
                mapY = 0.586,
                objective = 3,
                hint = "Remove Lightning Shield/defensive buffs before feeding",
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
                description = "Kill 8 Rocknail Flayers",
                mapX = 0.618,
                mapY = 0.600,
                objective = 1,
            },
            {
                type = "collect",
                description = "Use Carcasses to Feed 8 Dragons",
                mapX = 0.618,
                mapY = 0.600,
                objective = 2,
                hint = "Travel between dragons; same drake won't eat twice in a row",
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
                description = "Collect Nethervine Crystals",
                mapX = 0.660,
                mapY = 0.800,
                objective = 1,
                hint = "Look for red/green thorn bushes near crystal formations on the island",
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
        steps = {
            {
                type = "interact",
                description = "Use enchanted nethervine crystal on enslaved drakes to free them",
                mapX = 0.618,
                mapY = 0.600,
                objective = 1,
                hint = "Use crystal from distance; help drake kill orc to prevent drake death",
            },
            {
                type = "kill",
                description = "Defeat the orc subjugators controlling the drakes",
                mapX = 0.618,
                mapY = 0.600,
                objective = 2,
                hint = "Free drakes one at a time; avoid freeing multiple drakes near guards",
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
        group = 5,
        prereq = 10854,
        steps = {
            {
                type = "kill",
                description = "Kill 8 Rocknail Flayers",
                mapX = 0.698,
                mapY = 0.614,
                objective = 1,
                hint = "Travel between dragons when feeding to avoid same drake eating twice",
            },
            {
                type = "interact",
                description = "Use Rocknail Flayer Carcasses to feed 8 Dragons",
                mapX = 0.698,
                mapY = 0.614,
                objective = 2,
                hint = "Don't move while feeding; distribute meat to different dragons",
            },
            {
                type = "turnin",
                description = "Return to Karynaku",
                mapX = 0.698,
                mapY = 0.614,
                npc = "Karynaku",
            },
        },
    },
    {
        id = 10866,
        name = "Zuluhed the Whacked",
        group = 5,
        prereq = 10804,
        next = 10870,
        steps = {
            {
                type = "interact",
                description = "Clear the 2 sleeping dragons in the courtyard",
                mapX = 0.698,
                mapY = 0.614,
                objective = 1,
                hint = "Kill dragons before engaging boss",
            },
            {
                type = "kill",
                description = "Clear the shaman in the room beneath the wall",
                mapX = 0.698,
                mapY = 0.614,
                objective = 2,
                hint = "Clear both rooms with shamans before starting quest",
            },
            {
                type = "talk",
                description = "Accept the quest from Karynaku",
                mapX = 0.698,
                mapY = 0.614,
                objective = 3,
            },
            {
                type = "kill",
                description = "Defeat Zuluhed the Whacked",
                mapX = 0.698,
                mapY = 0.614,
                objective = 4,
                hint = "Tank in room, group outside. Watch for AoE and Pitlord spawns",
            },
            {
                type = "turnin",
                description = "Return to Karynaku",
                mapX = 0.698,
                mapY = 0.614,
                npc = "Karynaku",
            },
        },
    },
    {
        id = 10870,
        name = "Ally of the Netherwing",
        prereq = 10866,
        steps = {
            {
                type = "turnin",
                description = "Return to Mordenai",
                mapX = 0.594,
                mapY = 0.586,
                npc = "Mordenai",
            },
        },
    },
})
