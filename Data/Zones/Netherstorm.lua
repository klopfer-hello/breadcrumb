--[[
    Breadcrumb - Netherstorm Quest Data
    mapID: 1953 (TBC Anniversary)
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1953, {
    -- ========================================================================
    -- The Archmage's Staff chain
    -- ========================================================================
    {
        id = 10173,
        name = "The Archmage's Staff",
        useItem = 28514,
        steps = {
            {
                type = "interact",
                description = "Use Conjuring Powder near the brazier to summon Ekkorash the Inquisitor",
                mapX = 0.409,
                mapY = 0.725,
                objective = 1,
                hint = "Use the dust to summon him in the center of the circle",
            },
            {
                type = "kill",
                description = "Defeat Ekkorash the Inquisitor",
                mapX = 0.409,
                mapY = 0.725,
                objective = 2,
                hint = "Level 68 non-elite demon",
            },
            {
                type = "collect",
                description = "Recover Archimonde's Staff from Ekkorash the Inquisitor",
                mapX = 0.409,
                mapY = 0.725,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Ravandwyr",
                mapX = 0.314,
                mapY = 0.662,
                npc = "Ravandwyr",
            },
        },
    },
    -- ========================================================================
    -- Curse of the Violet Tower chain
    -- ========================================================================
    {
        id = 10174,
        name = "Curse of the Violet Tower",
        steps = {
            {
                type = "talk",
                description = "Talk to Archmage Vargoth's image",
                mapX = 0.580,
                mapY = 0.860,
                objective = 1,
                hint = "Use the staff on the tower steps to summon his image",
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.314,
                mapY = 0.662,
            },
        },
    },
    -- ========================================================================
    -- Ar'kelos the Guardian chain
    -- ========================================================================
    {
        id = 10176,
        name = "Ar'kelos the Guardian",
        steps = {
            {
                type = "travel",
                description = "Travel to the tower next to Archmage Vargoth",
                mapX = 0.582,
                mapY = 0.864,
                objective = 1,
                hint = "Big tower with electric fence outside",
            },
            {
                type = "interact",
                description = "Interact with Ar'kelos the Guardian at the top of the tower",
                mapX = 0.576,
                mapY = 0.862,
                objective = 2,
                hint = "Climb to the very top of the tower",
            },
            {
                type = "turnin",
                description = "Return to Archmage Vargoth",
                mapX = 0.582,
                mapY = 0.864,
                npc = "Archmage Vargoth",
            },
        },
    },
    -- ========================================================================
    -- The Custodian of Kirin'Var chain
    -- ========================================================================
    {
        id = 10179,
        name = "The Custodian of Kirin'Var",
        steps = {
            {
                type = "travel",
                description = "Travel to Kirin'Var Village",
                mapX = 0.580,
                mapY = 0.870,
                objective = 1,
            },
            {
                type = "talk",
                description = "Find and talk to the Custodian of Kirin'Var",
                mapX = 0.580,
                mapY = 0.870,
                objective = 2,
            },
            {
                type = "interact",
                description = "Help the Custodian in any way you can",
                mapX = 0.580,
                mapY = 0.870,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.580,
                mapY = 0.870,
            },
        },
    },
    -- ========================================================================
    -- Battle-Mage Dathric chain
    -- ========================================================================
    {
        id = 10182,
        name = "Battle-Mage Dathric",
        steps = {
            {
                type = "travel",
                description = "Travel to Battle-Mage Dathric's location",
                mapX = 0.560,
                mapY = 0.870,
                objective = 1,
                hint = "Located in the tower area near other mage spirits",
            },
            {
                type = "interact",
                description = "Place Battle-Mage Dathric's item at his resting place",
                mapX = 0.560,
                mapY = 0.870,
                objective = 2,
                hint = "Interact with the location to complete the quest",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Off To Area 52 chain
    -- ========================================================================
    {
        id = 10183,
        name = "Off To Area 52",
        steps = {
            {
                type = "talk",
                description = "Talk to Netherologist Coppernickels",
                mapX = 0.218,
                mapY = 0.556,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to Rocket-Chief Fuselage at Area 52",
                mapX = 0.326,
                mapY = 0.648,
                objective = 2,
            },
            {
                type = "talk",
                description = "Speak with Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                objective = 3,
                hint = "Avoid accepting 'You're Hired!' before this quest",
            },
            {
                type = "turnin",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                npc = "Rocket-Chief Fuselage",
            },
        },
    },
    -- ========================================================================
    -- Malevolent Remnants chain
    -- ========================================================================
    {
        id = 10184,
        name = "Malevolent Remnants",
        next = 10312,
        steps = {
            {
                type = "kill",
                description = "Destroy Malevolent Spirits",
                mapX = 0.580,
                mapY = 0.870,
                objective = 1,
                hint = "Kill 20 spirits around Kirin'Var Village",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- The Annals of Kirin'Var chain
    -- ========================================================================
    {
        id = 10312,
        name = "The Annals of Kirin'Var",
        steps = {
            {
                type = "travel",
                description = "Travel to Kirin'Var Village",
                mapX = 0.600,
                mapY = 0.870,
                objective = 1,
            },
            {
                type = "kill",
                description = "Kill Battle-mage Dathric",
                mapX = 0.600,
                mapY = 0.880,
                objective = 2,
                hint = "Inside the town hall building; watch out for Pyroblast",
            },
            {
                type = "collect",
                description = "Collect the Registry from Battle-mage Dathric",
                mapX = 0.600,
                mapY = 0.880,
                objective = 3,
            },
            {
                type = "travel",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- A Fate Worse Than Death chain
    -- ========================================================================
    {
        id = 10185,
        name = "A Fate Worse Than Death",
        steps = {
            {
                type = "kill",
                description = "Kill Mana Seekers",
                mapX = 0.574,
                mapY = 0.862,
                objective = 1,
                hint = "Around the Kirin'Var Village ruins",
            },
            {
                type = "kill",
                description = "Kill Mageslayers",
                mapX = 0.580,
                mapY = 0.870,
                objective = 2,
                hint = "Also around Kirin'Var Village ruins",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- You're Hired! chain
    -- ========================================================================
    {
        id = 10186,
        name = "You're Hired!",
        steps = {
            {
                type = "collect",
                description = "Collect Nether-Crystals",
                mapX = 0.340,
                mapY = 0.520,
                objective = 1,
                hint = "Multiple crystals located around coordinates 34,52",
            },
            {
                type = "talk",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                npc = "Rocket-Chief Fuselage",
            },
        },
    },
    -- ========================================================================
    -- A Message for the Archmage chain
    -- ========================================================================
    {
        id = 10187,
        name = "A Message for the Archmage",
        steps = {
            {
                type = "travel",
                description = "Ascend the tower to reach Archmage Vargoth",
                mapX = 0.576,
                mapY = 0.862,
                objective = 1,
            },
            {
                type = "talk",
                description = "Speak with Archmage Vargoth and deliver the message about progress with the village",
                mapX = 0.576,
                mapY = 0.862,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.576,
                mapY = 0.862,
            },
        },
    },
    -- ========================================================================
    -- Manaforge B'naar chain
    -- ========================================================================
    {
        id = 10189,
        name = "Manaforge B'naar",
        steps = {
            {
                type = "collect",
                description = "Obtain the items requested by Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
                hint = "May require higher reputation with Skyguard to access quest",
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- Recharging the Batteries chain
    -- ========================================================================
    {
        id = 10190,
        name = "Recharging the Batteries",
        useItem = 29940,
        steps = {
            {
                type = "interact",
                description = "Use battery charging blaster on Phase Hunters until they become 'Drained Phase Hunters'",
                mapX = 0.314,
                mapY = 0.566,
                objective = 1,
                hint = "Drain Phase Hunters to <40% health, use blaster until name changes",
            },
            {
                type = "kill",
                description = "Kill the Drained Phase Hunters",
                mapX = 0.314,
                mapY = 0.566,
                objective = 2,
                hint = "Only kill after the mob shrinks and name changes to 'Drained'",
            },
            {
                type = "turnin",
                description = "Return to Bot-Specialist Alley",
                mapX = 0.314,
                mapY = 0.566,
                npc = "Bot-Specialist Alley",
            },
        },
    },
    -- ========================================================================
    -- Mark V is Alive! chain
    -- ========================================================================
    {
        id = 10191,
        name = "Mark V is Alive!",
        group = 2,
        steps = {
            {
                type = "travel",
                description = "Go to Bot-Specialist Alley",
                mapX = 0.314,
                mapY = 0.566,
                objective = 1,
            },
            {
                type = "interact",
                description = "Activate Maxx A. Million Mk. V",
                mapX = 0.314,
                mapY = 0.566,
                objective = 2,
            },
            {
                type = "kill",
                description = "Protect Maxx A. Million Mk. V while he collects 3 items in the city",
                mapX = 0.314,
                mapY = 0.566,
                objective = 3,
                hint = "Let him tank, clear adds before starting if possible",
            },
            {
                type = "turnin",
                description = "Return to Bot-Specialist Alley",
                mapX = 0.314,
                mapY = 0.566,
                npc = "Bot-Specialist Alley",
            },
        },
    },
    -- ========================================================================
    -- High Value Targets chain
    -- ========================================================================
    {
        id = 10193,
        name = "High Value Targets",
        steps = {
            {
                type = "kill",
                description = "Kill Sunfury Engineers",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
                hint = "Check inside the building and around the beam near the large pipe",
            },
            {
                type = "talk",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- Stealth Flight chain
    -- ========================================================================
    {
        id = 10194,
        name = "Stealth Flight",
        steps = {
            {
                type = "talk",
                description = "Talk to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Veronia",
                mapX = 0.338,
                mapY = 0.642,
                objective = 2,
                hint = "Veronia is next to Flight Master, outside Area 52",
            },
            {
                type = "turnin",
                description = "Return to Veronia",
                mapX = 0.338,
                mapY = 0.642,
                npc = "Veronia",
            },
        },
    },
    -- ========================================================================
    -- A Convincing Disguise chain
    -- ========================================================================
    {
        id = 10197,
        name = "A Convincing Disguise",
        steps = {
            {
                type = "collect",
                description = "Collect Sunfury Robe from Sunfury Arcanists",
                mapX = 0.482,
                mapY = 0.866,
                objective = 1,
                hint = "Arcanists are around the perimeter of the manaforge",
            },
            {
                type = "collect",
                description = "Collect Sunfury Leggings from Sunfury Guardsmen",
                mapX = 0.482,
                mapY = 0.866,
                objective = 2,
                hint = "Guardsmen are near the entrance",
            },
            {
                type = "collect",
                description = "Collect Sunfury Mantle from Sunfury Researchers",
                mapX = 0.482,
                mapY = 0.866,
                objective = 3,
                hint = "Researchers are found further away, mining rocks",
            },
            {
                type = "talk",
                description = "Return to Caledis Brightdawn",
                mapX = 0.482,
                mapY = 0.866,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Caledis Brightdawn",
                mapX = 0.482,
                mapY = 0.866,
                npc = "Caledis Brightdawn",
            },
        },
    },
    -- ========================================================================
    -- Information Gathering chain
    -- ========================================================================
    {
        id = 10198,
        name = "Information Gathering",
        steps = {
            {
                type = "talk",
                description = "Eavesdrop on the two guards at Manaforge Duro",
                mapX = 0.482,
                mapY = 0.866,
                objective = 1,
                hint = "Stand directly on top of the guards; Pathaleon won't aggro but Annihilators will",
            },
            {
                type = "turnin",
                description = "Return to Caledis Brightdawn",
                mapX = 0.482,
                mapY = 0.866,
                npc = "Caledis Brightdawn",
            },
        },
    },
    -- ========================================================================
    -- That Little Extra Kick chain
    -- ========================================================================
    {
        id = 10199,
        name = "That Little Extra Kick",
        steps = {
            {
                type = "collect",
                description = "Collect Nether Ray Stinger (5)",
                mapX = 0.440,
                mapY = 0.700,
                objective = 1,
                hint = "Large group found at 44, 70 - get 5 stingers from kills",
            },
            {
                type = "turnin",
                description = "Return to Boots",
                mapX = 0.322,
                mapY = 0.638,
                npc = "Boots",
            },
        },
    },
    -- ========================================================================
    -- Return to Thalodien chain
    -- ========================================================================
    {
        id = 10200,
        name = "Return to Thalodien",
        steps = {
            {
                type = "travel",
                description = "Travel to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
                hint = "Goblin engineers can use Dimensional Ripper to Area 52",
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- A Defector chain
    -- ========================================================================
    {
        id = 10202,
        name = "A Defector",
        steps = {
            {
                type = "talk",
                description = "Talk to Magistrix Larynna",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to Magister Theledorn",
                mapX = 0.262,
                mapY = 0.416,
                objective = 2,
                hint = "Located on the southern side against the building",
            },
            {
                type = "talk",
                description = "Talk to Magister Theledorn",
                mapX = 0.262,
                mapY = 0.416,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Magister Theledorn",
                mapX = 0.262,
                mapY = 0.416,
                npc = "Magister Theledorn",
            },
        },
    },
    -- ========================================================================
    -- Invaluable Asset Zapping chain
    -- ========================================================================
    {
        id = 10203,
        name = "Invaluable Asset Zapping",
        steps = {
            {
                type = "interact",
                description = "Zap sapping equipment at first location",
                mapX = 0.410,
                mapY = 0.740,
                objective = 1,
                hint = "Look for mechanical contraptions and moving equipment",
            },
            {
                type = "interact",
                description = "Zap sapping equipment at second location",
                mapX = 0.410,
                mapY = 0.720,
                objective = 2,
                hint = "Look for the wooden dig-o-matic wagon",
            },
            {
                type = "interact",
                description = "Zap sapping equipment at third location",
                mapX = 0.400,
                mapY = 0.730,
                objective = 3,
                hint = "All equipment is in the same general area",
            },
            {
                type = "interact",
                description = "Zap sapping equipment at fourth location",
                mapX = 0.420,
                mapY = 0.720,
                objective = 4,
                hint = "Final explosives wagon near Pentatharon",
            },
            {
                type = "turnin",
                description = "Return to Lead Sapper Blastfizzle",
                mapX = 0.342,
                mapY = 0.680,
                npc = "Lead Sapper Blastfizzle",
            },
        },
    },
    -- ========================================================================
    -- Bloodgem Crystals chain
    -- ========================================================================
    {
        id = 10204,
        name = "Bloodgem Crystals",
        steps = {
            {
                type = "collect",
                description = "Collect Bloodgem Shards from Sunfury Magisters",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
                hint = "Drop rate is low (~10%), may need to kill multiple magisters",
            },
            {
                type = "turnin",
                description = "Return to Magistrix Larynna",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Magistrix Larynna",
            },
        },
    },
    -- ========================================================================
    -- Pick Your Part chain
    -- ========================================================================
    {
        id = 10206,
        name = "Pick Your Part",
        steps = {
            {
                type = "collect",
                description = "Collect Ethereal Tech Parts from Zaxxis camp",
                mapX = 0.310,
                mapY = 0.750,
                objective = 1,
                hint = "Cylinders and boxes on ground at Zaxxis camp; do Khay'ji quests first",
            },
            {
                type = "turnin",
                description = "Return to Papa Wheeler",
                mapX = 0.330,
                mapY = 0.646,
                npc = "Papa Wheeler",
            },
        },
    },
    -- ========================================================================
    -- Summoner Kanthin's Prize chain
    -- ========================================================================
    {
        id = 10209,
        name = "Summoner Kanthin's Prize",
        steps = {
            {
                type = "kill",
                description = "Kill the water elemental",
                mapX = 0.570,
                mapY = 0.650,
                objective = 1,
            },
            {
                type = "kill",
                description = "Kill the named NPC to obtain the Stone of Glacius",
                mapX = 0.570,
                mapY = 0.650,
                objective = 2,
                hint = "Kill water elemental first, then the named NPC",
            },
            {
                type = "collect",
                description = "Secure the Stone of Glacius",
                mapX = 0.570,
                mapY = 0.650,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.570,
                mapY = 0.650,
            },
        },
    },
    -- ========================================================================
    -- Dr. Boom! chain
    -- ========================================================================
    {
        id = 10221,
        name = "Dr. Boom!",
        steps = {
            {
                type = "travel",
                description = "Travel to Dr. Boom's location in Netherstorm",
                mapX = 0.350,
                mapY = 0.590,
                objective = 1,
            },
            {
                type = "interact",
                description = "Use the bomb on Dr. Boom",
                mapX = 0.350,
                mapY = 0.590,
                objective = 2,
                hint = "Wait for cooldown between bomb uses",
            },
            {
                type = "kill",
                description = "Defeat Dr. Boom",
                mapX = 0.350,
                mapY = 0.590,
                objective = 3,
                hint = "Repeat bomb attacks until defeated; he has 600k+ HP",
            },
            {
                type = "turnin",
                description = "Return to Lead Sapper Blastfizzle",
                mapX = 0.342,
                mapY = 0.680,
                npc = "Lead Sapper Blastfizzle",
            },
        },
    },
    -- ========================================================================
    -- The Sunfury Garrison chain
    -- ========================================================================
    {
        id = 10222,
        name = "The Sunfury Garrison",
        steps = {
            {
                type = "kill",
                description = "Kill 8 Sunfury Archers",
                mapX = 0.550,
                mapY = 0.780,
                objective = 1,
                hint = "Located around coordinates 55, 78",
            },
            {
                type = "kill",
                description = "Kill 8 Sunfury Mages",
                mapX = 0.574,
                mapY = 0.862,
                objective = 2,
                hint = "Found in the Sunfury Garrison area",
            },
            {
                type = "kill",
                description = "Kill 8 Sunfury Arcanists",
                mapX = 0.574,
                mapY = 0.862,
                objective = 3,
                hint = "Found in the Sunfury Garrison area",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Down With Daellis chain
    -- ========================================================================
    {
        id = 10223,
        name = "Down With Daellis",
        steps = {
            {
                type = "kill",
                description = "Kill Master Daellis Dawnstrike",
                mapX = 0.560,
                mapY = 0.660,
                objective = 1,
                hint = "Spawns after killing Sunfury Bowmen nearby",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Essence for the Engines chain
    -- ========================================================================
    {
        id = 10224,
        name = "Essence for the Engines",
        steps = {
            {
                type = "collect",
                description = "Collect Essence of Air",
                mapX = 0.324,
                mapY = 0.666,
                objective = 1,
                hint = "Immune to arcane damage; avoid arcane spells",
            },
            {
                type = "collect",
                description = "Collect Essence of Fire",
                mapX = 0.324,
                mapY = 0.666,
                objective = 2,
                hint = "Immune to arcane damage; avoid arcane spells",
            },
            {
                type = "collect",
                description = "Collect Essence of Water",
                mapX = 0.324,
                mapY = 0.666,
                objective = 3,
                hint = "Immune to arcane damage; avoid arcane spells",
            },
            {
                type = "collect",
                description = "Collect Essence of Earth",
                mapX = 0.324,
                mapY = 0.666,
                objective = 4,
                hint = "Immune to arcane damage; avoid arcane spells",
            },
            {
                type = "talk",
                description = "Return to Chief Engineer Trep",
                mapX = 0.324,
                mapY = 0.666,
                objective = 5,
            },
            {
                type = "turnin",
                description = "Return to Chief Engineer Trep",
                mapX = 0.324,
                mapY = 0.666,
                npc = "Chief Engineer Trep",
            },
        },
    },
    -- ========================================================================
    -- Report to Engineering chain
    -- ========================================================================
    {
        id = 10225,
        name = "Report to Engineering",
        steps = {
            {
                type = "talk",
                description = "Talk to Chief Engineer Trep",
                mapX = 0.324,
                mapY = 0.666,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Chief Engineer Trep",
                mapX = 0.324,
                mapY = 0.666,
                npc = "Chief Engineer Trep",
            },
        },
    },
    -- ========================================================================
    -- Elemental Power Extraction chain
    -- ========================================================================
    {
        id = 10226,
        name = "Elemental Power Extraction",
        steps = {
            {
                type = "kill",
                description = "Kill Sundered Rumblers or Warp Aberrations",
                mapX = 0.324,
                mapY = 0.666,
                objective = 1,
                hint = "Look on the ground for blue shards after killing, not on the mob itself",
            },
            {
                type = "collect",
                description = "Collect Elemental Power Shards from the ground",
                mapX = 0.324,
                mapY = 0.666,
                objective = 2,
                hint = "Blue shards drop on the ground near killed elementals",
            },
            {
                type = "talk",
                description = "Return to Chief Engineer Trep",
                mapX = 0.324,
                mapY = 0.666,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Chief Engineer Trep",
                mapX = 0.324,
                mapY = 0.666,
                npc = "Chief Engineer Trep",
            },
        },
    },
    -- ========================================================================
    -- In A Scrap With The Legion chain
    -- ========================================================================
    {
        id = 10232,
        name = "In A Scrap With The Legion",
        steps = {
            {
                type = "travel",
                description = "Travel to the Scrap Fields",
                mapX = 0.490,
                mapY = 0.590,
                objective = 1,
                hint = "Correct coordinates are 49, 59 (not 48, 57)",
            },
            {
                type = "collect",
                description = "Collect Scrap Metal from the Scrap Fields",
                mapX = 0.490,
                mapY = 0.590,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Papa Wheeler",
                mapX = 0.330,
                mapY = 0.646,
                npc = "Papa Wheeler",
            },
        },
    },
    -- ========================================================================
    -- Torching Sunfury Hold chain
    -- ========================================================================
    {
        id = 10233,
        name = "Torching Sunfury Hold",
        steps = {
            {
                type = "collect",
                description = "Collect a Torch from Sunfury Flamekeepers",
                mapX = 0.576,
                mapY = 0.862,
                objective = 1,
                hint = "Only need one torch; drops from Flamekeepers patrolling the camp",
            },
            {
                type = "interact",
                description = "Torch 4 Sunfury Tents",
                mapX = 0.576,
                mapY = 0.862,
                objective = 2,
                hint = "Torch once, wait for fire to stop, then torch again. Repeat x4",
            },
            {
                type = "interact",
                description = "Destroy 2 Sunfury Ballista",
                mapX = 0.576,
                mapY = 0.862,
                objective = 3,
                hint = "Ballista are arrow-firing contraptions near archers on upper levels",
            },
            {
                type = "turnin",
                description = "Return to Lieutenant-Sorcerer Morran",
                mapX = 0.576,
                mapY = 0.862,
                npc = "Lieutenant-Sorcerer Morran",
            },
        },
    },
    -- ========================================================================
    -- One Demon's Trash... chain
    -- ========================================================================
    {
        id = 10234,
        name = "One Demon's Trash...",
        steps = {
            {
                type = "travel",
                description = "Travel to the area southeast of the Dome",
                mapX = 0.510,
                mapY = 0.540,
                objective = 1,
                hint = "Southeast of the Dome, near broken down fel bots",
            },
            {
                type = "collect",
                description = "Collect Demon Parts from the ground near broken down fel bots",
                mapX = 0.510,
                mapY = 0.540,
                objective = 2,
                hint = "Parts are on the ground, not dropped by mobs",
            },
            {
                type = "kill",
                description = "Kill Gan'arg Engineers if needed to access the parts",
                mapX = 0.510,
                mapY = 0.540,
                objective = 3,
                hint = "Engineers block access but don't drop the parts",
            },
            {
                type = "turnin",
                description = "Return to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                npc = "Mama Wheeler",
            },
        },
    },
    -- ========================================================================
    -- Declawing Doomclaw chain
    -- ========================================================================
    {
        id = 10235,
        name = "Declawing Doomclaw",
        steps = {
            {
                type = "travel",
                description = "Travel to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                objective = 2,
            },
            {
                type = "travel",
                description = "Travel to Doomclaw",
                mapX = 0.500,
                mapY = 0.570,
                objective = 3,
                hint = "Fast respawn (2 min 10 sec), may need to wait",
            },
            {
                type = "kill",
                description = "Kill Doomclaw",
                mapX = 0.500,
                mapY = 0.570,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                npc = "Mama Wheeler",
            },
        },
    },
    -- ========================================================================
    -- Warn Area 52! chain
    -- ========================================================================
    {
        id = 10237,
        name = "Warn Area 52!",
        steps = {
            {
                type = "talk",
                description = "Talk to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                npc = "Rocket-Chief Fuselage",
            },
        },
    },
    -- ========================================================================
    -- Potential Energy Source chain
    -- ========================================================================
    {
        id = 10239,
        name = "Potential Energy Source",
        steps = {
            {
                type = "collect",
                description = "Collect Mana Containers from Mana Creatures",
                mapX = 0.520,
                mapY = 0.820,
                objective = 1,
                hint = "Fast respawn rate. Try inside Manaforge Coruu for fewer mobs",
            },
            {
                type = "talk",
                description = "Return to Lieutenant-Sorcerer Morran",
                mapX = 0.576,
                mapY = 0.862,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Lieutenant-Sorcerer Morran",
                mapX = 0.576,
                mapY = 0.862,
                npc = "Lieutenant-Sorcerer Morran",
            },
        },
    },
    -- ========================================================================
    -- Building a Perimeter chain
    -- ========================================================================
    {
        id = 10240,
        name = "Building a Perimeter",
        steps = {
            {
                type = "interact",
                description = "Activate the Eastern Rune",
                mapX = 0.592,
                mapY = 0.853,
                objective = 1,
                hint = "Located on flat ground to the east",
            },
            {
                type = "interact",
                description = "Activate the Northeastern Rune",
                mapX = 0.570,
                mapY = 0.820,
                objective = 2,
                hint = "Atop a hill, hard to see - position yourself right",
            },
            {
                type = "interact",
                description = "Activate the Western Rune",
                mapX = 0.543,
                mapY = 0.861,
                objective = 3,
                hint = "Located on flat ground to the west",
            },
            {
                type = "turnin",
                description = "Return to Lieutenant-Sorcerer Morran",
                mapX = 0.576,
                mapY = 0.862,
                npc = "Lieutenant-Sorcerer Morran",
            },
        },
    },
    -- ========================================================================
    -- R.T.F.R.C.M. chain
    -- ========================================================================
    {
        id = 10244,
        name = "R.T.F.R.C.M.",
        steps = {
            {
                type = "collect",
                description = "Obtain Fel Reaver Construction Manual",
                mapX = 0.326,
                mapY = 0.648,
                objective = 1,
                hint = "Manual drops from Doomclaw in Hellfire Peninsula",
            },
            {
                type = "interact",
                description = "Read the Fel Reaver Construction Manual",
                mapX = 0.326,
                mapY = 0.648,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.326,
                mapY = 0.648,
            },
        },
    },
    -- ========================================================================
    -- Doctor Vomisa, Ph.T. chain
    -- ========================================================================
    {
        id = 10247,
        name = "Doctor Vomisa, Ph.T.",
        group = 3,
        steps = {
            {
                type = "travel",
                description = "Travel to Doctor Vomisa, Ph.T.",
                mapX = 0.372,
                mapY = 0.638,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Doctor Vomisa, Ph.T.",
                mapX = 0.372,
                mapY = 0.638,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Doctor Vomisa, Ph.T.",
                mapX = 0.372,
                mapY = 0.638,
                npc = "Doctor Vomisa, Ph.T.",
            },
        },
    },
    -- ========================================================================
    -- You, Robot chain
    -- ========================================================================
    {
        id = 10248,
        name = "You, Robot",
        group = 3,
        useItem = 29949,
        steps = {
            {
                type = "interact",
                description = "Use the Scrap Reaver Controller to summon the Scrap Reaver X6000",
                mapX = 0.372,
                mapY = 0.638,
                objective = 1,
                hint = "You'll control the robot like a pet with SMASH, SLAM, and REPAIR abilities",
            },
            {
                type = "kill",
                description = "Defeat enemies with the Scrap Reaver X6000 to complete the quest objective",
                mapX = 0.372,
                mapY = 0.638,
                objective = 2,
                hint = "Use SMASH for damage, SLAM for stun, REPAIR to heal the robot",
            },
            {
                type = "turnin",
                description = "Return to Doctor Vomisa, Ph.T.",
                mapX = 0.372,
                mapY = 0.638,
                npc = "Doctor Vomisa, Ph.T.",
            },
        },
    },
    -- ========================================================================
    -- Back to the Chief! chain
    -- ========================================================================
    {
        id = 10249,
        name = "Back to the Chief!",
        steps = {
            {
                type = "talk",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                npc = "Rocket-Chief Fuselage",
            },
        },
    },
    -- ========================================================================
    -- Finding the Keymaster chain
    -- ========================================================================
    {
        id = 10256,
        name = "Finding the Keymaster",
        group = 2,
        steps = {
            {
                type = "travel",
                description = "Travel to Apex's location",
                mapX = 0.530,
                mapY = 0.670,
                objective = 1,
                hint = "Apex is a large rock demon at 53, 67",
            },
            {
                type = "interact",
                description = "Drop the Crystal on Apex",
                mapX = 0.530,
                mapY = 0.670,
                objective = 2,
            },
            {
                type = "kill",
                description = "Defeat Apex",
                mapX = 0.530,
                mapY = 0.670,
                objective = 3,
                hint = "~22.7k HP; use freezing trap for adds, pull to 51,71 if needed",
            },
            {
                type = "travel",
                description = "Return to Archmage Vargoth",
                mapX = 0.582,
                mapY = 0.864,
                objective = 4,
            },
            {
                type = "interact",
                description = "Use the orb with Archmage Vargoth",
                mapX = 0.582,
                mapY = 0.864,
                objective = 5,
                hint = "Complete the scrying ritual with the orb",
            },
            {
                type = "turnin",
                description = "Return to Archmage Vargoth",
                mapX = 0.582,
                mapY = 0.864,
                npc = "Archmage Vargoth",
            },
        },
    },
    -- ========================================================================
    -- Capturing the Keystone chain
    -- ========================================================================
    {
        id = 10257,
        name = "Capturing the Keystone",
        steps = {
            {
                type = "collect",
                description = "Obtain the keystone",
                mapX = 0.582,
                mapY = 0.864,
                objective = 1,
                hint = "Item drops from Archmage Vargoth in Heroic mode (patch 2.4+)",
            },
            {
                type = "turnin",
                description = "Return to Archmage Vargoth",
                mapX = 0.582,
                mapY = 0.864,
                npc = "Archmage Vargoth",
            },
        },
    },
    -- ========================================================================
    -- Netherologist Coppernickels chain
    -- ========================================================================
    {
        id = 10260,
        name = "Netherologist Coppernickels",
        steps = {
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.326,
                mapY = 0.648,
            },
        },
    },
    -- ========================================================================
    -- Wanted: Annihilator Servo! chain
    -- ========================================================================
    {
        id = 10261,
        name = "Wanted: Annihilator Servo!",
        group = 2,
        steps = {
            {
                type = "travel",
                description = "Travel to the Wanted Poster location",
                mapX = 0.321,
                mapY = 0.647,
                objective = 1,
            },
            {
                type = "collect",
                description = "Collect Annihilator Servo",
                mapX = 0.250,
                mapY = 0.650,
                objective = 2,
                hint = "Big yellow robot at 25, 65. Can be soloed with DoT and banish.",
            },
            {
                type = "talk",
                description = "Return to Papa Wheeler",
                mapX = 0.330,
                mapY = 0.646,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Papa Wheeler",
                mapX = 0.330,
                mapY = 0.646,
                npc = "Papa Wheeler",
            },
        },
    },
    -- ========================================================================
    -- A Heap of Ethereals chain
    -- ========================================================================
    {
        id = 10262,
        name = "A Heap of Ethereals",
        next = 10205,
        steps = {
            {
                type = "kill",
                description = "Kill Zaxxis enemies and collect their insignia",
                mapX = 0.324,
                mapY = 0.642,
                objective = 1,
                hint = "Quest is repeatable for Consortium reputation",
            },
            {
                type = "talk",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                npc = "Nether-Stalker Khay'ji",
            },
        },
    },
    {
        id = 10205,
        name = "Warp-Raider Nesaad",
        prereq = 10262,
        next = 10266,
        steps = {
            {
                type = "kill",
                description = "Kill Warp-Raider Nesaad",
                mapX = 0.324,
                mapY = 0.642,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                npc = "Nether-Stalker Khay'ji",
            },
        },
    },
    -- ========================================================================
    -- Request for Assistance chain
    -- ========================================================================
    {
        id = 10266,
        name = "Request for Assistance",
        steps = {
            {
                type = "talk",
                description = "Talk to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Gahruj",
                mapX = 0.476,
                mapY = 0.570,
                objective = 2,
                hint = "Gahruj is in the eco-dome",
            },
            {
                type = "turnin",
                description = "Return to Gahruj",
                mapX = 0.466,
                mapY = 0.570,
                npc = "Gahruj",
            },
        },
    },
    -- ========================================================================
    -- Assisting the Consortium chain
    -- ========================================================================
    {
        id = 10263,
        name = "Assisting the Consortium",
        steps = {
            {
                type = "talk",
                description = "Talk to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                npc = "Nether-Stalker Khay'ji",
            },
        },
    },
    {
        id = 10264,
        name = "Assisting the Consortium",
        next = 10265,
        steps = {
            {
                type = "talk",
                description = "Talk to Spymaster Thalodien or Nether-Stalker Khay'ji",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
                hint = "Scryers faction - may need Consortium reputation",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                npc = "Nether-Stalker Khay'ji",
            },
        },
    },
    -- ========================================================================
    -- Consortium Crystal Collection chain
    -- ========================================================================
    {
        id = 10265,
        name = "Consortium Crystal Collection",
        steps = {
            {
                type = "travel",
                description = "Travel to Nether-Stalker Khay'ji in Netherstorm",
                mapX = 0.324,
                mapY = 0.642,
                objective = 1,
                hint = "He's on a stage near the entrance, look to the right as you go up the road",
            },
            {
                type = "kill",
                description = "Defeat Pentatharon to obtain the crystal",
                mapX = 0.420,
                mapY = 0.730,
                objective = 2,
                hint = "Pentatharon drops the crystal at coordinates 42,73",
            },
            {
                type = "talk",
                description = "Return the crystal to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                npc = "Nether-Stalker Khay'ji",
            },
        },
    },
    -- ========================================================================
    -- Rightful Repossession chain
    -- ========================================================================
    {
        id = 10267,
        name = "Rightful Repossession",
        steps = {
            {
                type = "collect",
                description = "Collect surveying equipment from around Manaforge Duro",
                mapX = 0.466,
                mapY = 0.570,
                objective = 1,
                hint = "Look for surveying equipment objects around Manaforge Duro",
            },
            {
                type = "turnin",
                description = "Return to Gahruj",
                mapX = 0.466,
                mapY = 0.570,
                npc = "Gahruj",
            },
        },
    },
    -- ========================================================================
    -- An Audience with the Prince chain
    -- ========================================================================
    {
        id = 10268,
        name = "An Audience with the Prince",
        steps = {
            {
                type = "travel",
                description = "Travel to the Stormspire",
                mapX = 0.440,
                mapY = 0.350,
                objective = 1,
                hint = "Located in the eastern part of Stormspire, top level of a building",
            },
            {
                type = "talk",
                description = "Approach the Image of Nexus-Prince Haramad",
                mapX = 0.458,
                mapY = 0.360,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Image of Nexus-Prince Haramad",
                mapX = 0.458,
                mapY = 0.360,
                npc = "Image of Nexus-Prince Haramad",
            },
        },
    },
    -- ========================================================================
    -- Triangulation Point One chain
    -- ========================================================================
    {
        id = 10269,
        name = "Triangulation Point One",
        steps = {
            {
                type = "travel",
                description = "Travel to the first triangulation point location",
                mapX = 0.667,
                mapY = 0.338,
                objective = 1,
                hint = "Stand slightly outside the area before using the device",
            },
            {
                type = "interact",
                description = "Use the triangulation device",
                mapX = 0.667,
                mapY = 0.338,
                objective = 2,
                hint = "Look for an arrow mark after using the device",
            },
            {
                type = "travel",
                description = "Walk to the arrow mark that appears",
                mapX = 0.458,
                mapY = 0.360,
                objective = 3,
                hint = "Similar to a hunter's mark; walk to it to complete",
            },
            {
                type = "turnin",
                description = "Return to Dealer Hazzin",
                mapX = 0.584,
                mapY = 0.314,
                npc = "Dealer Hazzin",
            },
        },
    },
    -- ========================================================================
    -- A Not-So-Modest Proposal chain
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
                hint = "Ethereal Teleport Pad on Celestial Ridge",
                npc = "Image of Wind Trader Marid",
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
                hint = "Hidden behind crystals near the teleport pad",
                npc = "Shrouded Figure",
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
                hint = "North end of Celestial Ridge",
                npc = "Tyri",
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
                hint = "At the Protectorate Watchpost, lure him away",
                npc = "Wind Trader Marid",
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
    -- Triangulation Point Two chain
    -- ========================================================================
    {
        id = 10275,
        name = "Triangulation Point Two",
        useItem = 29099,
        steps = {
            {
                type = "travel",
                description = "Travel to the triangulation point location",
                mapX = 0.584,
                mapY = 0.314,
                objective = 1,
                hint = "Use Triangulation Device to mark the exact spot",
            },
            {
                type = "interact",
                description = "Use the Triangulation Device at the marked location",
                mapX = 0.584,
                mapY = 0.314,
                objective = 2,
                hint = "Stand directly in the hunter's mark that appears",
            },
            {
                type = "travel",
                description = "Return to Wind Trader Tuluman at the bridge",
                mapX = 0.346,
                mapY = 0.378,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Wind Trader Tuluman",
                mapX = 0.346,
                mapY = 0.378,
                npc = "Wind Trader Tuluman",
            },
        },
    },
    -- ========================================================================
    -- Full Triangle chain
    -- ========================================================================
    {
        id = 10276,
        name = "Full Triangle",
        group = 2,
        steps = {
            {
                type = "talk",
                description = "Talk to Wind Trader Tuluman",
                mapX = 0.346,
                mapY = 0.378,
                objective = 1,
            },
            {
                type = "interact",
                description = "Retrieve the crystal from Image of Nexus-Prince Haramad",
                mapX = 0.458,
                mapY = 0.360,
                objective = 2,
                hint = "Prot warriors can use Spell Reflect to solo easily",
            },
            {
                type = "talk",
                description = "Return the crystal to Wind Trader Tuluman",
                mapX = 0.346,
                mapY = 0.378,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Image of Nexus-Prince Haramad",
                mapX = 0.458,
                mapY = 0.360,
                npc = "Image of Nexus-Prince Haramad",
            },
        },
    },
    -- ========================================================================
    -- In Search of Farahlite chain
    -- ========================================================================
    {
        id = 10290,
        name = "In Search of Farahlite",
        group = 2,
        steps = {
            {
                type = "collect",
                description = "Collect Farahlite",
                mapX = 0.400,
                mapY = 0.660,
                objective = 1,
                hint = "Giants around 40,66 - soloable with proper gear/spec",
            },
            {
                type = "talk",
                description = "Return to Zuben Elgenubi",
                mapX = 0.440,
                mapY = 0.360,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Zuben Elgenubi",
                mapX = 0.440,
                mapY = 0.360,
                npc = "Zuben Elgenubi",
            },
        },
    },
    -- ========================================================================
    -- More Power! chain
    -- ========================================================================
    {
        id = 10292,
        name = "More Power!",
        steps = {
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.464,
                mapY = 0.564,
            },
        },
    },
    -- ========================================================================
    -- Hitting the Motherlode chain
    -- ========================================================================
    {
        id = 10293,
        name = "Hitting the Motherlode",
        group = 2,
        steps = {
            {
                type = "kill",
                description = "Kill Cragskaar",
                mapX = 0.480,
                mapY = 0.190,
                objective = 1,
                hint = "Kite to Consortium guards or clear adds from fragments",
            },
            {
                type = "collect",
                description = "Obtain the Motherlode Core",
                mapX = 0.440,
                mapY = 0.360,
                objective = 2,
                hint = "Drops from Cragskaar after defeat",
            },
            {
                type = "travel",
                description = "Return to Zuben Elgenubi",
                mapX = 0.440,
                mapY = 0.360,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Zuben Elgenubi",
                mapX = 0.440,
                mapY = 0.360,
                npc = "Zuben Elgenubi",
            },
        },
    },
    -- ========================================================================
    -- Rebuilding the Staff chain
    -- ========================================================================
    {
        id = 10300,
        name = "Rebuilding the Staff",
        steps = {
            {
                type = "kill",
                description = "Kill Disembodied Vindicators, Exarchs, and Protectors",
                mapX = 0.330,
                mapY = 0.530,
                objective = 1,
                hint = "If drop rate is poor, try abandoning and re-accepting the quest",
            },
            {
                type = "talk",
                description = "Return to Ravandwyr",
                mapX = 0.314,
                mapY = 0.662,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Ravandwyr",
                mapX = 0.314,
                mapY = 0.662,
                npc = "Ravandwyr",
            },
        },
    },
    -- ========================================================================
    -- Unlocking the Compendium chain
    -- ========================================================================
    {
        id = 10301,
        name = "Unlocking the Compendium",
        steps = {
            {
                type = "collect",
                description = "Recover the Heliotrope Oculus",
                mapX = 0.560,
                mapY = 0.770,
                objective = 1,
                hint = "Use flying mount to drop behind tent, pull her up slope",
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.560,
                mapY = 0.770,
            },
        },
    },
    -- ========================================================================
    -- Abjurist Belmara chain
    -- ========================================================================
    {
        id = 10305,
        name = "Abjurist Belmara",
        steps = {
            {
                type = "collect",
                description = "Obtain Abjurist Belmara's book (dropped by her spirit)",
                mapX = 0.555,
                mapY = 0.865,
                objective = 1,
                hint = "Item dropped by Abjurist Belmara's spirit in Outland",
            },
            {
                type = "travel",
                description = "Travel to Abjurist Belmara's dwelling",
                mapX = 0.555,
                mapY = 0.865,
                objective = 2,
            },
            {
                type = "interact",
                description = "Return the book to Abjurist Belmara's dwelling",
                mapX = 0.555,
                mapY = 0.865,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Conjurer Luminrath chain
    -- ========================================================================
    {
        id = 10306,
        name = "Conjurer Luminrath",
        steps = {
            {
                type = "travel",
                description = "Travel to Conjurer Luminrath's location",
                mapX = 0.564,
                mapY = 0.878,
                objective = 1,
                hint = "Located in the tower area",
            },
            {
                type = "interact",
                description = "Return Conjurer Luminrath's belongings to his home",
                mapX = 0.564,
                mapY = 0.878,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Cohlien Frostweaver chain
    -- ========================================================================
    {
        id = 10307,
        name = "Cohlien Frostweaver",
        steps = {
            {
                type = "travel",
                description = "Travel to Cohlien Frostweaver's location",
                mapX = 0.550,
                mapY = 0.870,
                objective = 1,
                hint = "Located in Medivh's Tower area",
            },
            {
                type = "interact",
                description = "Place the item at Cohlien Frostweaver's resting place",
                mapX = 0.550,
                mapY = 0.870,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Another Heap of Ethereals chain
    -- ========================================================================
    {
        id = 10308,
        name = "Another Heap of Ethereals",
        steps = {
            {
                type = "collect",
                description = "Collect Nether-Stalker Insignias",
                mapX = 0.324,
                mapY = 0.642,
                objective = 1,
                hint = "Higher drop rate than bead grinding, efficient for rep",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Khay'ji",
                mapX = 0.324,
                mapY = 0.642,
                npc = "Nether-Stalker Khay'ji",
            },
        },
    },
    -- ========================================================================
    -- It's a Fel Reaver, But with Heart chain
    -- ========================================================================
    {
        id = 10309,
        name = "It's a Fel Reaver, But with Heart",
        group = 2,
        steps = {
            {
                type = "kill",
                description = "Kill the Damaged Fel Reaver and collect its heart",
                mapX = 0.268,
                mapY = 0.770,
                objective = 1,
                hint = "Elite but doesn't fight back; watch for adds. Group of 2-3 suggested.",
            },
            {
                type = "turnin",
                description = "Return to N. D. Meancamp",
                mapX = 0.268,
                mapY = 0.770,
                npc = "N. D. Meancamp",
            },
        },
    },
    -- ========================================================================
    -- Sabotage the Warp-Gate! chain
    -- ========================================================================
    {
        id = 10310,
        name = "Sabotage the Warp-Gate!",
        group = 3,
        steps = {
            {
                type = "talk",
                description = "Talk to Drijya",
                mapX = 0.480,
                mapY = 0.634,
                objective = 1,
            },
            {
                type = "interact",
                description = "Sabotage the Warp-Gate",
                mapX = 0.466,
                mapY = 0.570,
                objective = 2,
                hint = "Don't pre-clear mobs; ensure all spawns are present",
            },
            {
                type = "turnin",
                description = "Return to Gahruj",
                mapX = 0.466,
                mapY = 0.570,
                npc = "Gahruj",
            },
        },
    },
    -- ========================================================================
    -- Drijya Needs Your Help chain
    -- ========================================================================
    {
        id = 10311,
        name = "Drijya Needs Your Help",
        steps = {
            {
                type = "travel",
                description = "Travel to Invasion Point: Destroyer",
                mapX = 0.480,
                mapY = 0.640,
                objective = 1,
                hint = "Drijya may move around the area, check nearby locations",
            },
            {
                type = "talk",
                description = "Find and speak with Drijya",
                mapX = 0.480,
                mapY = 0.634,
                objective = 2,
                hint = "He may move from place to place after initial contact",
            },
            {
                type = "turnin",
                description = "Return to Drijya",
                mapX = 0.480,
                mapY = 0.634,
                npc = "Drijya",
            },
        },
    },
    -- ========================================================================
    -- A Lingering Suspicion chain
    -- ========================================================================
    {
        id = 10314,
        name = "A Lingering Suspicion",
        steps = {
            {
                type = "collect",
                description = "Collect Necromantic Focus Remnants from Kirin'Var Ghosts or Spectres",
                mapX = 0.603,
                mapY = 0.780,
                objective = 1,
                hint = "Aggro Tormented Souls to transform them; low drop rate, mobs are tough",
            },
            {
                type = "talk",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Neutralizing the Nethermancers chain
    -- ========================================================================
    {
        id = 10315,
        name = "Neutralizing the Nethermancers",
        group = 2,
        steps = {
            {
                type = "kill",
                description = "Kill Nethermancers at the manaforges",
                mapX = 0.346,
                mapY = 0.378,
                objective = 1,
                hint = "Multiple mobs aggro - bring a group. Check 29,41 for more",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Oazul",
                mapX = 0.346,
                mapY = 0.378,
                npc = "Nether-Stalker Oazul",
            },
        },
    },
    -- ========================================================================
    -- Searching for Evidence chain
    -- ========================================================================
    {
        id = 10316,
        name = "Searching for Evidence",
        steps = {
            {
                type = "travel",
                description = "Travel to the barn at Necromantic Focus",
                mapX = 0.603,
                mapY = 0.780,
                objective = 1,
                hint = "The barn is located at coordinates 60, 78",
            },
            {
                type = "interact",
                description = "Interact with the glowing orb on the pedestal",
                mapX = 0.603,
                mapY = 0.780,
                objective = 2,
                hint = "The orb sits atop a square-shaped pedestal in the barn",
            },
            {
                type = "turnin",
                description = "Return to Necromantic Focus",
                mapX = 0.603,
                mapY = 0.780,
                npc = "Necromantic Focus",
            },
        },
    },
    -- ========================================================================
    -- Dealing with the Foreman chain
    -- ========================================================================
    {
        id = 10317,
        name = "Dealing with the Foreman",
        steps = {
            {
                type = "travel",
                description = "Travel to the mine entrance",
                mapX = 0.260,
                mapY = 0.430,
                objective = 1,
                hint = "Mine entrance at 26,43",
            },
            {
                type = "kill",
                description = "Kill 2 Bloodelf guards outside the mine",
                mapX = 0.260,
                mapY = 0.430,
                objective = 2,
                hint = "Guards are at the mine entrance",
            },
            {
                type = "kill",
                description = "Kill 2 demon-things inside the mine",
                mapX = 0.264,
                mapY = 0.422,
                objective = 3,
                hint = "Follow main path inside the cave",
            },
            {
                type = "talk",
                description = "Talk to Foreman Sundown",
                mapX = 0.264,
                mapY = 0.422,
                objective = 4,
                hint = "He's just inside the cave entrance",
            },
            {
                type = "turnin",
                description = "Return to Foreman Sundown",
                mapX = 0.264,
                mapY = 0.422,
                npc = "Foreman Sundown",
            },
        },
    },
    -- ========================================================================
    -- Dealing with the Overmaster chain
    -- ========================================================================
    {
        id = 10318,
        name = "Dealing with the Overmaster",
        steps = {
            {
                type = "travel",
                description = "Travel to Manaforge Ara",
                mapX = 0.264,
                mapY = 0.422,
                objective = 1,
                hint = "Located in Netherstorm",
            },
            {
                type = "travel",
                description = "Enter the mine below Manaforge Ara",
                mapX = 0.260,
                mapY = 0.440,
                objective = 2,
                hint = "Mine entrance is at the base of the manaforge",
            },
            {
                type = "interact",
                description = "Deal with Foreman Sundown",
                mapX = 0.270,
                mapY = 0.370,
                objective = 3,
                hint = "At tunnel end behind two tents; take first right then straight",
            },
            {
                type = "turnin",
                description = "Return to Wind Trader Tuluman",
                mapX = 0.346,
                mapY = 0.378,
                npc = "Wind Trader Tuluman",
            },
        },
    },
    -- ========================================================================
    -- Capturing the Phylactery chain
    -- ========================================================================
    {
        id = 10319,
        name = "Capturing the Phylactery",
        steps = {
            {
                type = "collect",
                description = "Recover Naberius's phylactery",
                mapX = 0.600,
                mapY = 0.800,
                objective = 1,
                hint = "Look for an outhouse near the largest house in the area",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Destroy Naberius! chain
    -- ========================================================================
    {
        id = 10320,
        name = "Destroy Naberius!",
        group = 3,
        steps = {
            {
                type = "travel",
                description = "Travel to the church where Naberius is located",
                mapX = 0.630,
                mapY = 0.790,
                objective = 1,
                hint = "Church at coordinates (63, 79)",
            },
            {
                type = "kill",
                description = "Kill the Tortured Spirits in Naberius's room",
                mapX = 0.630,
                mapY = 0.790,
                objective = 2,
                hint = "Two adds can be pulled independently from Naberius",
            },
            {
                type = "kill",
                description = "Destroy Naberius",
                mapX = 0.630,
                mapY = 0.790,
                objective = 3,
                hint = "Use LoS to avoid Frostbolt; avoid knockback near edges",
            },
            {
                type = "turnin",
                description = "Return to Custodian Dieworth",
                mapX = 0.574,
                mapY = 0.862,
                npc = "Custodian Dieworth",
            },
        },
    },
    -- ========================================================================
    -- Shutting Down Manaforge B'naar chain
    -- ========================================================================
    {
        id = 10329,
        name = "Shutting Down Manaforge B'naar",
        useItem = 29396,
        steps = {
            {
                type = "kill",
                description = "Kill Overseer Theredis",
                mapX = 0.230,
                mapY = 0.690,
                objective = 1,
                hint = "Inside the building, southeast corner",
            },
            {
                type = "interact",
                description = "Use the B'naar Access Crystal at the B'naar Control Console",
                mapX = 0.230,
                mapY = 0.690,
                objective = 2,
                hint = "Use the crystal obtained from Overseer Theredis",
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- Shutting Down Manaforge Coruu chain
    -- ========================================================================
    {
        id = 10330,
        name = "Shutting Down Manaforge Coruu",
        steps = {
            {
                type = "kill",
                description = "Kill Overseer Seylanna",
                mapX = 0.482,
                mapY = 0.866,
                objective = 1,
                hint = "Overseer Seylanna is at the manaforge location",
            },
            {
                type = "interact",
                description = "Click on the machine to shut it down",
                mapX = 0.482,
                mapY = 0.866,
                objective = 2,
                hint = "Interact with the manaforge machine after defeating the Overseer",
            },
            {
                type = "turnin",
                description = "Return to Caledis Brightdawn",
                mapX = 0.482,
                mapY = 0.866,
                npc = "Caledis Brightdawn",
            },
        },
    },
    -- ========================================================================
    -- Indispensable Tools chain
    -- ========================================================================
    {
        id = 10331,
        name = "Indispensable Tools",
        steps = {
            {
                type = "collect",
                description = "Collect Smithing Hammer",
                mapX = 0.600,
                mapY = 0.830,
                objective = 1,
                hint = "Dropped by Kirin'Var Apprentices east of quest giver",
            },
            {
                type = "talk",
                description = "Return to Apprentice Andrethan",
                mapX = 0.576,
                mapY = 0.852,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Apprentice Andrethan",
                mapX = 0.576,
                mapY = 0.852,
                npc = "Apprentice Andrethan",
            },
        },
    },
    -- ========================================================================
    -- Master Smith Rhonsus chain
    -- ========================================================================
    {
        id = 10332,
        name = "Master Smith Rhonsus",
        steps = {
            {
                type = "talk",
                description = "Talk to Apprentice Andrethan",
                mapX = 0.576,
                mapY = 0.852,
                objective = 1,
            },
            {
                type = "kill",
                description = "Kill Master Smith Rhonsus",
                mapX = 0.610,
                mapY = 0.850,
                objective = 2,
                hint = "Roams near 60,85 with quick respawn timer",
            },
            {
                type = "turnin",
                description = "Return to Apprentice Andrethan",
                mapX = 0.576,
                mapY = 0.852,
                npc = "Apprentice Andrethan",
            },
        },
    },
    -- ========================================================================
    -- Help Mama Wheeler chain
    -- ========================================================================
    {
        id = 10333,
        name = "Help Mama Wheeler",
        steps = {
            {
                type = "talk",
                description = "Talk to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                objective = 1,
                hint = "Located in Area 52. Requires completing 'Pick Your Part' first",
            },
            {
                type = "turnin",
                description = "Return to Mama Wheeler",
                mapX = 0.466,
                mapY = 0.566,
                npc = "Mama Wheeler",
            },
        },
    },
    -- ========================================================================
    -- Needs More Cowbell chain
    -- ========================================================================
    {
        id = 10334,
        name = "Needs More Cowbell",
        useItem = 9316,
        steps = {
            {
                type = "travel",
                description = "Travel to Bessy's location",
                mapX = 0.592,
                mapY = 0.788,
                objective = 1,
            },
            {
                type = "interact",
                description = "Use the cowbell on Bessy",
                mapX = 0.592,
                mapY = 0.788,
                objective = 2,
                hint = "Bessy is located at coordinates 59, 79",
            },
            {
                type = "turnin",
                description = "Return to Bessy",
                mapX = 0.592,
                mapY = 0.788,
                npc = "Bessy",
            },
        },
    },
    -- ========================================================================
    -- Surveying the Ruins chain
    -- ========================================================================
    {
        id = 10335,
        name = "Surveying the Ruins",
        steps = {
            {
                type = "interact",
                description = "Place marker at Surveying Marker One",
                mapX = 0.517,
                mapY = 0.205,
                objective = 1,
                hint = "Look for purple glowing on the ground",
            },
            {
                type = "interact",
                description = "Place marker at Surveying Marker Two",
                mapX = 0.546,
                mapY = 0.228,
                objective = 2,
                hint = "Look for purple glowing on the ground",
            },
            {
                type = "interact",
                description = "Place marker at Surveying Marker Three",
                mapX = 0.558,
                mapY = 0.199,
                objective = 3,
                hint = "Look for purple glowing on the ground",
            },
            {
                type = "turnin",
                description = "Return to Zephyrion",
                mapX = 0.446,
                mapY = 0.348,
                npc = "Zephyrion",
            },
        },
    },
    -- ========================================================================
    -- The Minions of Culuthas chain
    -- ========================================================================
    {
        id = 10336,
        name = "The Minions of Culuthas",
        steps = {
            {
                type = "kill",
                description = "Kill Nether-Stalker Nauthis",
                mapX = 0.446,
                mapY = 0.348,
                objective = 1,
                hint = "Also available as quest 'Surveying the Ruins' at same location",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Nauthis",
                mapX = 0.446,
                mapY = 0.348,
                npc = "Nether-Stalker Nauthis",
            },
        },
    },
    -- ========================================================================
    -- When the Cows Come Home chain
    -- ========================================================================
    {
        id = 10337,
        name = "When the Cows Come Home",
        group = 2,
        steps = {
            {
                type = "travel",
                description = "Travel to Bessy's location",
                mapX = 0.592,
                mapY = 0.788,
                objective = 1,
            },
            {
                type = "interact",
                description = "Find and interact with Bessy",
                mapX = 0.592,
                mapY = 0.788,
                objective = 2,
                hint = "Stealth helps; manage aggro carefully around Bessy",
            },
            {
                type = "travel",
                description = "Escort Bessy back to Thadell",
                mapX = 0.576,
                mapY = 0.850,
                objective = 3,
                hint = "Defend Bessy from mobs; she can take hits while you bandage",
            },
            {
                type = "turnin",
                description = "Return to Thadell",
                mapX = 0.576,
                mapY = 0.850,
                npc = "Thadell",
            },
        },
    },
    -- ========================================================================
    -- Shutting Down Manaforge Duro chain
    -- ========================================================================
    {
        id = 10338,
        name = "Shutting Down Manaforge Duro",
        steps = {
            {
                type = "travel",
                description = "Travel to Manaforge Duro",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
            },
            {
                type = "collect",
                description = "Obtain the Crystal from Manaforge Duro",
                mapX = 0.320,
                mapY = 0.640,
                objective = 2,
            },
            {
                type = "interact",
                description = "Use the Crystal on the control console to shut down Manaforge Duro",
                mapX = 0.320,
                mapY = 0.640,
                objective = 3,
                hint = "If console doesn't respond, try logging out and back in",
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- The Ethereum chain
    -- ========================================================================
    {
        id = 10339,
        name = "The Ethereum",
        steps = {
            {
                type = "travel",
                description = "Travel to the Ethereum area",
                mapX = 0.568,
                mapY = 0.386,
                objective = 1,
            },
            {
                type = "interact",
                description = "Interact with the Transponder to gather data",
                mapX = 0.568,
                mapY = 0.387,
                objective = 2,
                hint = "Look for a single pad, not a pair of pads",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Kick Them While They're Down chain
    -- ========================================================================
    {
        id = 10341,
        name = "Kick Them While They're Down",
        steps = {
            {
                type = "kill",
                description = "Kill Sunfury enemies around Manaforge Duroe",
                mapX = 0.570,
                mapY = 0.650,
                objective = 1,
                hint = "Find them around Manaforge Duroe, requires Scryers alignment",
            },
            {
                type = "turnin",
                description = "Return to Magistrix Larynna",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Magistrix Larynna",
            },
        },
    },
    -- ========================================================================
    -- Securing the Shaleskin Shale chain
    -- ========================================================================
    {
        id = 10342,
        name = "Securing the Shaleskin Shale",
        steps = {
            {
                type = "collect",
                description = "Collect Shaleskin Shale",
                mapX = 0.322,
                mapY = 0.638,
                objective = 1,
                hint = "Magic shield blocks spells - cast once to break it, then full damage",
            },
            {
                type = "turnin",
                description = "Return to Boots",
                mapX = 0.322,
                mapY = 0.638,
                npc = "Boots",
            },
        },
    },
    -- ========================================================================
    -- The Unending Invasion chain
    -- ========================================================================
    {
        id = 10343,
        name = "The Unending Invasion",
        steps = {
            {
                type = "travel",
                description = "Travel to the mana bomb location in Netherstorm",
                mapX = 0.557,
                mapY = 0.872,
                objective = 1,
                hint = "Look for a large round bulb-shaped object",
            },
            {
                type = "collect",
                description = "Find the remains of the weapon Kael'thas used",
                mapX = 0.557,
                mapY = 0.872,
                objective = 2,
                hint = "The mana bomb fragment is a large round bulb",
            },
            {
                type = "talk",
                description = "Return to Lieutenant-Sorcerer Morran",
                mapX = 0.576,
                mapY = 0.862,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Lieutenant-Sorcerer Morran",
                mapX = 0.576,
                mapY = 0.862,
                npc = "Lieutenant-Sorcerer Morran",
            },
        },
    },
    -- ========================================================================
    -- The Flesh Lies... chain
    -- ========================================================================
    {
        id = 10345,
        name = "The Flesh Lies...",
        steps = {
            {
                type = "travel",
                description = "Travel to the shaft entrance",
                mapX = 0.610,
                mapY = 0.450,
                objective = 1,
                hint = "Entrance to the shaft @ 61,45",
            },
            {
                type = "interact",
                description = "Use the flame on Ya-six's corpse before it transforms",
                mapX = 0.610,
                mapY = 0.450,
                objective = 2,
                hint = "Use flame before reaching corpse or it transforms into a monster",
            },
            {
                type = "collect",
                description = "Collect Ya-six's wrappings",
                mapX = 0.610,
                mapY = 0.450,
                objective = 3,
                hint = "Avoid AoE spells that pierce walls to prevent aggro",
            },
            {
                type = "talk",
                description = "Return to Agent Araxes",
                mapX = 0.594,
                mapY = 0.450,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Agent Araxes",
                mapX = 0.594,
                mapY = 0.450,
                npc = "Agent Araxes",
            },
        },
    },
    -- ========================================================================
    -- New Opportunities chain
    -- ========================================================================
    {
        id = 10348,
        name = "New Opportunities",
        steps = {
            {
                type = "collect",
                description = "Gather herbs around Eco Dome Midrealm",
                mapX = 0.450,
                mapY = 0.520,
                objective = 1,
                hint = "Use track herbs to find these more easily",
            },
            {
                type = "turnin",
                description = "Return to Mehrdad",
                mapX = 0.464,
                mapY = 0.564,
                npc = "Mehrdad",
            },
        },
    },
    -- ========================================================================
    -- Arconus the Insatiable chain
    -- ========================================================================
    {
        id = 10353,
        name = "Arconus the Insatiable",
        steps = {
            {
                type = "travel",
                description = "Travel to the cave where Arconus the Insatiable is located",
                mapX = 0.608,
                mapY = 0.416,
                objective = 1,
                hint = "Inside cave at ~60,40. Take first left, then another left, continue down",
            },
            {
                type = "interact",
                description = "Encounter and defeat Arconus the Insatiable",
                mapX = 0.608,
                mapY = 0.416,
                objective = 2,
                hint = "Use Reflection of Ya-six guardian. Go south and around to upper level",
            },
            {
                type = "talk",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Shutting Down Manaforge Ara chain
    -- ========================================================================
    {
        id = 10365,
        name = "Shutting Down Manaforge Ara",
        group = 2,
        steps = {
            {
                type = "travel",
                description = "Travel to Manaforge Ara",
                mapX = 0.320,
                mapY = 0.640,
                objective = 1,
                hint = "Located in Netherstorm",
            },
            {
                type = "interact",
                description = "Disable the Manaforge Ara",
                mapX = 0.320,
                mapY = 0.640,
                objective = 2,
                hint = "Mobs spawn in waves; elite spawns at 30 seconds remaining",
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- Ethereum Data chain
    -- ========================================================================
    {
        id = 10384,
        name = "Ethereum Data",
        steps = {
            {
                type = "collect",
                description = "Recover the Ethereum data cell",
                mapX = 0.560,
                mapY = 0.400,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Potential for Brain Damage = High chain
    -- ========================================================================
    {
        id = 10385,
        name = "Potential for Brain Damage = High",
        useItem = 29482,
        steps = {
            {
                type = "collect",
                description = "Pick up Etherium Essence from Ethereals at the Staging Grounds",
                mapX = 0.564,
                mapY = 0.000,
                objective = 1,
                hint = "Use the essence to see Data Wyrmlings",
            },
            {
                type = "interact",
                description = "Drink Etherium Essence to see Data Wyrmlings",
                mapX = 0.568,
                mapY = 0.386,
                objective = 2,
                hint = "Allows you to see and interact with Data Wyrmlings",
            },
            {
                type = "kill",
                description = "Kill Data Wyrmlings",
                mapX = 0.564,
                mapY = 0.000,
                objective = 3,
                hint = "They drop relay data when killed",
            },
            {
                type = "collect",
                description = "Collect relay data from Data Wyrmlings",
                mapX = 0.568,
                mapY = 0.386,
                objective = 4,
                hint = "Dropped by the Data Wyrmlings you kill",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Against the Legion chain
    -- ========================================================================
    {
        id = 10404,
        name = "Against the Legion",
        steps = {
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.400,
                mapY = 0.210,
            },
        },
    },
    -- ========================================================================
    -- S-A-B-O-T-A-G-E chain
    -- ========================================================================
    {
        id = 10405,
        name = "S-A-B-O-T-A-G-E",
        steps = {
            {
                type = "collect",
                description = "Recover the wrapping",
                mapX = 0.568,
                mapY = 0.460,
                objective = 1,
                hint = "Drops from Ethereum Archon and Overlord in southern camp",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Delivering the Message chain
    -- ========================================================================
    {
        id = 10406,
        name = "Delivering the Message",
        steps = {
            {
                type = "travel",
                description = "Travel to Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                objective = 1,
            },
            {
                type = "interact",
                description = "Interact with Commander Ameer to start the escort",
                mapX = 0.568,
                mapY = 0.386,
                objective = 2,
            },
            {
                type = "travel",
                description = "Escort Commander Ameer to safety",
                mapX = 0.568,
                mapY = 0.386,
                objective = 3,
                hint = "Clear mobs ahead of time; use ranged attacks to avoid aggro",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Nexus-King Salhadaar chain
    -- ========================================================================
    {
        id = 10408,
        name = "Nexus-King Salhadaar",
        group = 5,
        steps = {
            {
                type = "interact",
                description = "Use the disruptor device on Nexus-King Salhadaar three times",
                mapX = 0.568,
                mapY = 0.386,
                objective = 1,
                hint = "Only one player (MT) should use disruptor on all three to avoid bugs",
            },
            {
                type = "kill",
                description = "Defeat Nexus-King Salhadaar",
                mapX = 0.568,
                mapY = 0.386,
                objective = 2,
                hint = "Stay away from him as he's released; manage adds carefully",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.568,
                mapY = 0.386,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Electro-Shock Goodness! chain
    -- ========================================================================
    {
        id = 10411,
        name = "Electro-Shock Goodness!",
        useItem = 30703,
        steps = {
            {
                type = "collect",
                description = "Collect Seeping Sludge Globules",
                mapX = 0.640,
                mapY = 0.460,
                objective = 1,
                hint = "Drink Navuud's Concoction to spawn globules, then AoE them down",
            },
            {
                type = "collect",
                description = "Collect Void Waste Globules",
                mapX = 0.570,
                mapY = 0.450,
                objective = 2,
                hint = "Wait in water for mobs to come to you, drink concoction to spawn",
            },
            {
                type = "turnin",
                description = "Return to Researcher Navuud",
                mapX = 0.592,
                mapY = 0.324,
                npc = "Researcher Navuud",
            },
        },
    },
    -- ========================================================================
    -- The Horrors of Pollution chain
    -- ========================================================================
    {
        id = 10413,
        name = "The Horrors of Pollution",
        steps = {
            {
                type = "kill",
                description = "Kill the Void Horror (big ooze)",
                mapX = 0.592,
                mapY = 0.324,
                objective = 1,
                hint = "Long spawn time (30+ mins), located near the King",
            },
            {
                type = "turnin",
                description = "Return to Researcher Navuud",
                mapX = 0.592,
                mapY = 0.324,
                npc = "Researcher Navuud",
            },
        },
    },
    -- ========================================================================
    -- Run a Diagnostic! chain
    -- ========================================================================
    {
        id = 10417,
        name = "Run a Diagnostic!",
        steps = {
            {
                type = "travel",
                description = "Travel to the Diagnostic Equipment",
                mapX = 0.480,
                mapY = 0.550,
                objective = 1,
                hint = "Located at 48,55 on the map",
            },
            {
                type = "interact",
                description = "Use the Diagnostic Equipment to run diagnostics",
                mapX = 0.480,
                mapY = 0.550,
                objective = 2,
                hint = "Equipment location varies slightly (48,54-48,55)",
            },
            {
                type = "talk",
                description = "Return to Mehrdad with the diagnostic results",
                mapX = 0.464,
                mapY = 0.564,
                objective = 3,
                hint = "Mehrdad is at the starting location",
            },
            {
                type = "turnin",
                description = "Return to Mehrdad",
                mapX = 0.464,
                mapY = 0.564,
                npc = "Mehrdad",
            },
        },
    },
    -- ========================================================================
    -- Deal With the Saboteurs chain
    -- ========================================================================
    {
        id = 10418,
        name = "Deal With the Saboteurs",
        steps = {
            {
                type = "kill",
                description = "Kill creatures at the lake",
                mapX = 0.464,
                mapY = 0.540,
                objective = 1,
                hint = "Creatures are all over the lake area, may not match questgiver's description",
            },
            {
                type = "turnin",
                description = "Return to Mehrdad",
                mapX = 0.464,
                mapY = 0.564,
                npc = "Mehrdad",
            },
        },
    },
    -- ========================================================================
    -- Captain Tyralius chain
    -- ========================================================================
    {
        id = 10422,
        name = "Captain Tyralius",
        steps = {
            {
                type = "talk",
                description = "Get the Warden's Key from Warden Icoshock",
                mapX = 0.550,
                mapY = 0.400,
                objective = 1,
                hint = "Located near the pink spheres section",
            },
            {
                type = "interact",
                description = "Use the Warden's Key on Captain Tyralius's Prison",
                mapX = 0.520,
                mapY = 0.420,
                objective = 2,
                hint = "Prison is nearby after getting the key",
            },
            {
                type = "turnin",
                description = "Return to Flesh Handler Viridius",
                mapX = 0.592,
                mapY = 0.320,
                npc = "Flesh Handler Viridius",
            },
        },
    },
    -- ========================================================================
    -- To the Stormspire chain
    -- ========================================================================
    {
        id = 10423,
        name = "To the Stormspire",
        steps = {
            {
                type = "talk",
                description = "Talk to Mehrdad",
                mapX = 0.464,
                mapY = 0.564,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to the Stormspire",
                mapX = 0.440,
                mapY = 0.350,
                objective = 2,
                hint = "Flight point available for convenient travel",
            },
            {
                type = "talk",
                description = "Report to Ghabar at the Stormspire",
                mapX = 0.434,
                mapY = 0.350,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Ghabar",
                mapX = 0.434,
                mapY = 0.350,
                npc = "Ghabar",
            },
        },
    },
    -- ========================================================================
    -- Diagnosis: Critical chain
    -- ========================================================================
    {
        id = 10424,
        name = "Diagnosis: Critical",
        steps = {
            {
                type = "collect",
                description = "Obtain diagnostics from the dome generation equipment",
                mapX = 0.467,
                mapY = 0.268,
                objective = 1,
                hint = "Check Eco-Dome Sutheron Generator at 47,26-48,27",
            },
            {
                type = "talk",
                description = "Return diagnostics results to Mehrdad",
                mapX = 0.434,
                mapY = 0.350,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Ghabar",
                mapX = 0.434,
                mapY = 0.350,
                npc = "Ghabar",
            },
        },
    },
    -- ========================================================================
    -- Escape from the Staging Grounds chain
    -- ========================================================================
    {
        id = 10425,
        name = "Escape from the Staging Grounds",
        steps = {
            {
                type = "travel",
                description = "Travel to the Staging Grounds",
                mapX = 0.570,
                mapY = 0.376,
                objective = 1,
            },
            {
                type = "interact",
                description = "Wait for the Captured Protectorate Vanguard to fight the Ethereum Gladiator",
                mapX = 0.570,
                mapY = 0.376,
                objective = 2,
                hint = "Wait for Ethereum Gladiator yell after ~15 Assassin spam messages",
            },
            {
                type = "kill",
                description = "Kill the Ethereum Gladiator",
                mapX = 0.570,
                mapY = 0.376,
                objective = 3,
                hint = "Only works when Vanguard fights the Gladiator",
            },
            {
                type = "talk",
                description = "Talk to the Captured Protectorate Vanguard",
                mapX = 0.570,
                mapY = 0.376,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Flora of the Eco-Domes chain
    -- ========================================================================
    {
        id = 10426,
        name = "Flora of the Eco-Domes",
        useItem = 31084,
        steps = {
            {
                type = "interact",
                description = "Use Energy Field Modulator on flowers to mutate them",
                mapX = 0.422,
                mapY = 0.326,
                objective = 1,
                hint = "Wait until flowers are near death before zapping to avoid enrage",
            },
            {
                type = "turnin",
                description = "Return to Aurine Moonblaze",
                mapX = 0.422,
                mapY = 0.326,
                npc = "Aurine Moonblaze",
            },
        },
    },
    -- ========================================================================
    -- Creatures of the Eco-Domes chain
    -- ========================================================================
    {
        id = 10427,
        name = "Creatures of the Eco-Domes",
        steps = {
            {
                type = "collect",
                description = "Tag 8 Talbuk in the Eco-Domes",
                mapX = 0.422,
                mapY = 0.326,
                objective = 1,
                hint = "Fight stags near the spire for credit; don't fight 2 at once",
            },
            {
                type = "turnin",
                description = "Return to Aurine Moonblaze",
                mapX = 0.422,
                mapY = 0.326,
                npc = "Aurine Moonblaze",
            },
        },
    },
    -- ========================================================================
    -- When Nature Goes Too Far chain
    -- ========================================================================
    {
        id = 10429,
        name = "When Nature Goes Too Far",
        steps = {
            {
                type = "travel",
                description = "Travel to the monstrous hydra location",
                mapX = 0.440,
                mapY = 0.280,
                objective = 1,
                hint = "Small lake area; stay on rocks/land to avoid melee attacks",
            },
            {
                type = "kill",
                description = "Kill Markaru the monstrous hydra",
                mapX = 0.440,
                mapY = 0.280,
                objective = 2,
                hint = "Can be kited on land; doesn't reach far from water",
            },
            {
                type = "collect",
                description = "Collect a sample from the monstrous hydra",
                mapX = 0.440,
                mapY = 0.280,
                objective = 3,
            },
            {
                type = "travel",
                description = "Return to Aurine Moonblaze",
                mapX = 0.422,
                mapY = 0.326,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Aurine Moonblaze",
                mapX = 0.422,
                mapY = 0.326,
                npc = "Aurine Moonblaze",
            },
        },
    },
    -- ========================================================================
    -- Testing the Prototype chain
    -- ========================================================================
    {
        id = 10430,
        name = "Testing the Prototype",
        steps = {
            {
                type = "talk",
                description = "Talk to Ghabar",
                mapX = 0.434,
                mapY = 0.350,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to Netherstorm",
                mapX = 0.434,
                mapY = 0.350,
                objective = 2,
                hint = "Head to Netherstorm to test the prototype",
            },
            {
                type = "interact",
                description = "Test the prototype in Netherstorm",
                mapX = 0.446,
                mapY = 0.144,
                objective = 3,
            },
            {
                type = "talk",
                description = "Return to Tashar with the prototype",
                mapX = 0.446,
                mapY = 0.144,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Tashar",
                mapX = 0.446,
                mapY = 0.144,
                npc = "Tashar",
            },
        },
    },
    -- ========================================================================
    -- Damning Evidence chain
    -- ========================================================================
    {
        id = 10432,
        name = "Damning Evidence",
        steps = {
            {
                type = "talk",
                description = "Talk to Magister Theledorn",
                mapX = 0.262,
                mapY = 0.416,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to Trelleum Mine on the southern coast",
                mapX = 0.260,
                mapY = 0.430,
                objective = 2,
                hint = "Mine entrance at southern coast near Manaforge Ara",
            },
            {
                type = "collect",
                description = "Collect Damning Orders from enemies in Trelleum Mine",
                mapX = 0.260,
                mapY = 0.430,
                objective = 3,
                hint = "Drop rate ~30%, found on mobs throughout the mine",
            },
            {
                type = "talk",
                description = "Report back to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- Keeping Up Appearances chain
    -- ========================================================================
    {
        id = 10433,
        name = "Keeping Up Appearances",
        steps = {
            {
                type = "collect",
                description = "Collect Ethereal Pelts",
                mapX = 0.464,
                mapY = 0.560,
                objective = 1,
                hint = "Loosely spread around the dome, ~70% drop rate",
            },
            {
                type = "talk",
                description = "Speak with Shauly Pore",
                mapX = 0.464,
                mapY = 0.560,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Shauly Pore",
                mapX = 0.464,
                mapY = 0.560,
                npc = "Shauly Pore",
            },
        },
    },
    -- ========================================================================
    -- The Dynamic Duo chain
    -- ========================================================================
    {
        id = 10434,
        name = "The Dynamic Duo",
        steps = {
            {
                type = "travel",
                description = "Travel to Audi the Needle at Stormspire",
                mapX = 0.448,
                mapY = 0.366,
                objective = 1,
                hint = "Located at top of Stormspire in Netherstorm",
            },
            {
                type = "talk",
                description = "Speak with Audi the Needle and introduce yourself from Shauly",
                mapX = 0.448,
                mapY = 0.366,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Audi the Needle",
                mapX = 0.448,
                mapY = 0.366,
                npc = "Audi the Needle",
            },
        },
    },
    -- ========================================================================
    -- Retrieving the Goods chain
    -- ========================================================================
    {
        id = 10435,
        name = "Retrieving the Goods",
        steps = {
            {
                type = "travel",
                description = "Travel to Eco-Dome Farfield",
                mapX = 0.440,
                mapY = 0.140,
                objective = 1,
                hint = "Located in Netherstorm",
            },
            {
                type = "collect",
                description = "Collect items from raptor egg nests",
                mapX = 0.440,
                mapY = 0.140,
                objective = 2,
                hint = "Items are hidden in the raptor egg nests inside the dome",
            },
            {
                type = "turnin",
                description = "Return to Audi the Needle",
                mapX = 0.448,
                mapY = 0.366,
                npc = "Audi the Needle",
            },
        },
    },
    -- ========================================================================
    -- All Clear! chain
    -- ========================================================================
    {
        id = 10436,
        name = "All Clear!",
        steps = {
            {
                type = "kill",
                description = "Clear the test area",
                mapX = 0.446,
                mapY = 0.144,
                objective = 1,
                hint = "Enemies swarm the area near quest giver, very easy",
            },
            {
                type = "turnin",
                description = "Return to Tashar",
                mapX = 0.446,
                mapY = 0.144,
                npc = "Tashar",
            },
        },
    },
    -- ========================================================================
    -- Recipe for Destruction chain
    -- ========================================================================
    {
        id = 10437,
        name = "Recipe for Destruction",
        steps = {
            {
                type = "collect",
                description = "Collect Void Fragments from Voidshriekers and Unstable Voidwraiths",
                mapX = 0.620,
                mapY = 0.420,
                objective = 1,
                hint = "Careful - these mobs fear into other enemies, pull one at a time",
            },
            {
                type = "turnin",
                description = "Return to Professor Dabiri",
                mapX = 0.600,
                mapY = 0.318,
                npc = "Professor Dabiri",
            },
        },
    },
    -- ========================================================================
    -- On Nethery Wings chain
    -- ========================================================================
    {
        id = 10438,
        name = "On Nethery Wings",
        useItem = 29519,
        steps = {
            {
                type = "travel",
                description = "Travel to Professor Dabiri",
                mapX = 0.600,
                mapY = 0.318,
                objective = 1,
            },
            {
                type = "interact",
                description = "Ride the Netherdrake next to Professor Dabiri",
                mapX = 0.600,
                mapY = 0.318,
                objective = 2,
            },
            {
                type = "travel",
                description = "Fly to Manaforge Ultris",
                mapX = 0.600,
                mapY = 0.318,
                objective = 3,
            },
            {
                type = "interact",
                description = "Use the Phase Disruptor bomb on Manaforge Ultris",
                mapX = 0.600,
                mapY = 0.318,
                objective = 4,
                hint = "Spam click the bomb in your bag when over the target area",
            },
            {
                type = "turnin",
                description = "Return to Professor Dabiri",
                mapX = 0.600,
                mapY = 0.318,
                npc = "Professor Dabiri",
            },
        },
    },
    -- ========================================================================
    -- Dimensius the All-Devouring chain
    -- ========================================================================
    {
        id = 10439,
        name = "Dimensius the All-Devouring",
        group = 5,
        steps = {
            {
                type = "talk",
                description = "Speak with Captain Saeed",
                mapX = 0.600,
                mapY = 0.318,
                objective = 1,
            },
            {
                type = "kill",
                description = "Defeat Dimensius the All-Devouring",
                mapX = 0.600,
                mapY = 0.318,
                objective = 2,
                hint = "Ranged classes can kite from hallway; high DPS groups should focus on boss",
            },
            {
                type = "turnin",
                description = "Return to Professor Dabiri",
                mapX = 0.600,
                mapY = 0.318,
                npc = "Professor Dabiri",
            },
        },
    },
    -- ========================================================================
    -- Success! chain
    -- ========================================================================
    {
        id = 10440,
        name = "Success!",
        steps = {
            {
                type = "talk",
                description = "Talk to Tashar",
                mapX = 0.446,
                mapY = 0.144,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Ghabar",
                mapX = 0.434,
                mapY = 0.350,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Ghabar",
                mapX = 0.434,
                mapY = 0.350,
                npc = "Ghabar",
            },
        },
    },
    -- ========================================================================
    -- Peddling the Goods chain
    -- ========================================================================
    {
        id = 10441,
        name = "Peddling the Goods",
        steps = {
            {
                type = "talk",
                description = "Talk to the Cenarion Expedition's representative to offer them generator parts at a reasonable price",
                mapX = 0.448,
                mapY = 0.366,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.448,
                mapY = 0.366,
            },
        },
    },
    -- ========================================================================
    -- Turning Point chain
    -- ========================================================================
    {
        id = 10507,
        name = "Turning Point",
        group = 2,
        steps = {
            {
                type = "talk",
                description = "Speak with Voren'thal the Seer",
                mapX = 0.426,
                mapY = 0.914,
                objective = 1,
            },
            {
                type = "kill",
                description = "Defeat Kael'thas Sunstrider",
                mapX = 0.426,
                mapY = 0.914,
                objective = 2,
                hint = "Use the provided item for 300% damage boost",
            },
            {
                type = "turnin",
                description = "Return to Voren'thal the Seer",
                mapX = 0.426,
                mapY = 0.914,
                npc = "Voren'thal the Seer",
            },
        },
    },
    -- ========================================================================
    -- A Gift for Voren'thal chain
    -- ========================================================================
    {
        id = 10508,
        name = "A Gift for Voren'thal",
        group = 2,
        steps = {
            {
                type = "collect",
                description = "Obtain the First Half of Socrethar's Stone",
                mapX = 0.360,
                mapY = 0.270,
                objective = 1,
                hint = "Drops from Forgemaster Morug (level 69 elite, ~30k HP)",
            },
            {
                type = "collect",
                description = "Obtain the Second Half of Socrethar's Stone",
                mapX = 0.400,
                mapY = 0.190,
                objective = 2,
                hint = "Drops from Silroth (level 69 elite, ~30k HP)",
            },
            {
                type = "interact",
                description = "Combine the two halves into Socrethar's Teleportation Stone",
                mapX = 0.320,
                mapY = 0.640,
                objective = 3,
                hint = "Use fear and stuns to control the elite mobs",
            },
            {
                type = "talk",
                description = "Return to Spymaster Thalodien with Socrethar's Teleportation Stone",
                mapX = 0.320,
                mapY = 0.640,
                objective = 4,
            },
            {
                type = "turnin",
                description = "Return to Spymaster Thalodien",
                mapX = 0.320,
                mapY = 0.640,
                npc = "Spymaster Thalodien",
            },
        },
    },
    -- ========================================================================
    -- Behind Enemy Lines chain
    -- ========================================================================
    {
        id = 10652,
        name = "Behind Enemy Lines",
        steps = {
            {
                type = "talk",
                description = "Talk to Veronia",
                mapX = 0.338,
                mapY = 0.642,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Caledis Brightdawn",
                mapX = 0.482,
                mapY = 0.866,
                npc = "Caledis Brightdawn",
            },
        },
    },
    -- ========================================================================
    -- Breaking Down Netherock chain
    -- ========================================================================
    {
        id = 10701,
        name = "Breaking Down Netherock",
        group = 2,
        steps = {
            {
                type = "kill",
                description = "Kill Netherock",
                mapX = 0.326,
                mapY = 0.648,
                objective = 1,
                hint = "Netherock spawns Crumblers as adds; stun-able and soloable",
            },
            {
                type = "turnin",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
                npc = "Rocket-Chief Fuselage",
            },
        },
    },
    -- ========================================================================
    -- Nether Gas In a Fel Fire Engine chain
    -- ========================================================================
    {
        id = 10850,
        name = "Nether Gas In a Fel Fire Engine",
        steps = {
            {
                type = "collect",
                description = "Collect 5 Condensed Nether Gas",
                mapX = 0.378,
                mapY = 0.258,
                objective = 1,
                hint = "This is a repeatable quest tied to 'Fel Reavers, No Thanks!'",
            },
            {
                type = "interact",
                description = "Use Condensed Nether Gas on an Inactive Fel Reaver",
                mapX = 0.378,
                mapY = 0.258,
                objective = 2,
                hint = "Supply the fuel to the fel reaver's engine to complete",
            },
            {
                type = "turnin",
                description = "Return to Inactive Fel Reaver",
                mapX = 0.378,
                mapY = 0.258,
                npc = "Inactive Fel Reaver",
            },
        },
    },
    -- ========================================================================
    -- Fel Reavers, No Thanks! chain
    -- ========================================================================
    {
        id = 10855,
        name = "Fel Reavers, No Thanks!",
        steps = {
            {
                type = "collect",
                description = "Collect 5 Condensed Nether Gas from Gan'arg Mekgineer",
                mapX = 0.446,
                mapY = 0.348,
                objective = 1,
                hint = "Kill Gan'arg Mekgineer to obtain the gas",
            },
            {
                type = "interact",
                description = "Use Condensed Nether Gas on Fel Reaver to sabotage it",
                mapX = 0.446,
                mapY = 0.348,
                objective = 2,
                hint = "Give the gas to the Fel Reaver and it will die",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Nauthis",
                mapX = 0.446,
                mapY = 0.348,
                npc = "Nether-Stalker Nauthis",
            },
        },
    },
    -- ========================================================================
    -- The Best Defense chain
    -- ========================================================================
    {
        id = 10856,
        name = "The Best Defense",
        steps = {
            {
                type = "kill",
                description = "Kill Nether-Stalker Nauthis",
                mapX = 0.412,
                mapY = 0.348,
                objective = 1,
                hint = "Use ranged to pull one by one, avoid fire damage",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Nauthis",
                mapX = 0.446,
                mapY = 0.348,
                npc = "Nether-Stalker Nauthis",
            },
        },
    },
    -- ========================================================================
    -- Teleport This! chain
    -- ========================================================================
    {
        id = 10857,
        name = "Teleport This!",
        useItem = 31088,
        steps = {
            {
                type = "interact",
                description = "Use Rod of Mind Control on a Cyber-Rage Forgelord near the portals",
                mapX = 0.446,
                mapY = 0.348,
                objective = 1,
                hint = "If pet bar doesn't show, use Ctrl+5 hotkey for Detonate ability",
            },
            {
                type = "interact",
                description = "Use Detonate ability while standing next to a portal",
                mapX = 0.446,
                mapY = 0.348,
                objective = 2,
                hint = "Keep controlled minion away from enemies to maintain control",
            },
            {
                type = "turnin",
                description = "Return to Nether-Stalker Nauthis",
                mapX = 0.446,
                mapY = 0.348,
                npc = "Nether-Stalker Nauthis",
            },
        },
    },
    -- ========================================================================
    -- Bloody Imp-ossible! chain
    -- ========================================================================
    {
        id = 10924,
        name = "Bloody Imp-ossible!",
        steps = {
            {
                type = "talk",
                description = "Talk to Zeppit to summon him",
                mapX = 0.664,
                mapY = 0.672,
                objective = 1,
                hint = "Summon Zeppit first before killing mobs",
            },
            {
                type = "kill",
                description = "Kill Warp Chasers while Zeppit collects blood",
                mapX = 0.664,
                mapY = 0.672,
                objective = 2,
                hint = "Many Warp Chasers spawn outside the quest giver area",
            },
            {
                type = "turnin",
                description = "Return to Sab'aoth",
                mapX = 0.664,
                mapY = 0.672,
                npc = "Sab'aoth",
            },
        },
    },
    -- ========================================================================
    -- Seek Out Ameer chain
    -- ========================================================================
    {
        id = 10969,
        name = "Seek Out Ameer",
        steps = {
            {
                type = "travel",
                description = "Travel to Commander Ameer at Stormspire",
                mapX = 0.594,
                mapY = 0.324,
                objective = 1,
                hint = "Located in Stormspire, Netherstorm",
            },
            {
                type = "talk",
                description = "Speak with Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- A Mission of Mercy chain
    -- ========================================================================
    {
        id = 10970,
        name = "A Mission of Mercy",
        steps = {
            {
                type = "collect",
                description = "Obtain Ethereum Prison Key",
                mapX = 0.550,
                mapY = 0.310,
                objective = 1,
                hint = "Random drop from Ethereal mobs in Etherium Staging Grounds",
            },
            {
                type = "travel",
                description = "Travel to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                objective = 2,
            },
            {
                type = "talk",
                description = "Speak with Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Ethereum Secrets chain
    -- ========================================================================
    {
        id = 10971,
        name = "Ethereum Secrets",
        steps = {
            {
                type = "collect",
                description = "Collect I.D. Tags",
                mapX = 0.594,
                mapY = 0.324,
                objective = 1,
                hint = "Farming Zaxxis Insignias is more effective for rep grinding",
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Ethereum Prisoner I.D. Catalogue chain
    -- ========================================================================
    {
        id = 10972,
        name = "Ethereum Prisoner I.D. Catalogue",
        steps = {
            {
                type = "collect",
                description = "Collect Ethereum Prisoner I.D. Tags",
                mapX = 0.594,
                mapY = 0.324,
                objective = 1,
                hint = "Repeatable quest for 250 Consortium rep per turnin",
            },
            {
                type = "talk",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- A Thousand Worlds chain
    -- ========================================================================
    {
        id = 10973,
        name = "A Thousand Worlds",
        steps = {
            {
                type = "collect",
                description = "Collect 5 Ethereum Prison Keys",
                mapX = 0.594,
                mapY = 0.324,
                objective = 1,
                hint = "Drop rate is low (~5%), may require farming many mobs",
            },
            {
                type = "talk",
                description = "Bring the 5 Ethereum Prison Keys to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Commander Ameer",
                mapX = 0.594,
                mapY = 0.324,
                npc = "Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Assist Exarch Orelis chain
    -- ========================================================================
    {
        id = 11038,
        name = "Assist Exarch Orelis",
        next = 10241,
        steps = {
            {
                type = "talk",
                description = "Speak with Exarch Orelis",
                mapX = 0.320,
                mapY = 0.642,
                hint = "At Area 52 in Netherstorm",
                npc = "Exarch Orelis",
            },
        },
    },
    {
        id = 10241,
        name = "Distraction at Manaforge B'naar",
        prereq = 11038,
        next = 10313,
        steps = {
            {
                type = "kill",
                description = "Kill Sunfury Bloodwarders and Magisters",
                mapX = 0.280,
                mapY = 0.640,
                objective = 1,
                hint = "Bloodwarders and Magisters are easy to solo at level 70. Magisters have low HP and die in about 3 crits. You can attract multiple at once if you have high DPS.",
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
    {
        id = 10313,
        name = "Measuring Warp Energies",
        useItem = 30362,
        prereq = 10241,
        next = 10243,
        steps = {
            {
                type = "interact",
                description = "Use Warp-Attuned Orb at Northern Pipeline",
                mapX = 0.250,
                mapY = 0.600,
                objective = 1,
                hint = "Follow the pipeline exiting Manaforge B'naar to its end and use the orb by the pillar's foot",
            },
            {
                type = "interact",
                description = "Use Warp-Attuned Orb at Eastern Pipeline",
                mapX = 0.280,
                mapY = 0.710,
                objective = 2,
                hint = "Follow the pipeline exiting Manaforge B'naar to its end and use the orb by the pillar's foot",
            },
            {
                type = "interact",
                description = "Use Warp-Attuned Orb at Southern Pipeline",
                mapX = 0.200,
                mapY = 0.710,
                objective = 3,
                hint = "Follow the pipeline exiting Manaforge B'naar to its end and use the orb by the pillar's foot",
            },
            {
                type = "interact",
                description = "Use Warp-Attuned Orb at Western Pipeline",
                mapX = 0.200,
                mapY = 0.670,
                objective = 4,
                hint = "Follow the pipeline exiting Manaforge B'naar to its end and use the orb by the pillar's foot",
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
    {
        id = 10243,
        name = "Naaru Technology",
        prereq = 10313,
        next = 10245,
        steps = {
            {
                type = "interact",
                description = "Use the B'naar Control Console",
                mapX = 0.232,
                mapY = 0.681,
                hint = "The B'naar Control Console is a large purplish crystal on the right side of the center of the room when you enter Manaforge B'naar",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10245,
        name = "B'naar Console Transcription",
        prereq = 10243,
        next = 10299,
        steps = {
            {
                type = "interact",
                description = "Use the B'naar Control Console",
                mapX = 0.232,
                mapY = 0.681,
                hint = "The console is at Manaforge B'naar",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                hint = "Inside the inn in Area 52",
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10299,
        name = "Shutting Down Manaforge B'naar",
        prereq = 10245,
        next = 10321,
        steps = {
            {
                type = "travel",
                description = "Go to Manaforge B'naar",
                mapX = 0.230,
                mapY = 0.680,
                hint = "The manaforge is located northwest of Area 52",
            },
            {
                type = "interact",
                description = "Use the B'naar Control Console",
                mapX = 0.230,
                mapY = 0.680,
                hint = "After using the console, stay nearby and defend it from Sunfury Technicians for about 2 minutes",
            },
            {
                type = "kill",
                description = "Defend the console from Sunfury Technicians",
                mapX = 0.230,
                mapY = 0.680,
                objective = 1,
                hint = "Kill technicians as they spawn to prevent them from repairing the console. Takes about 2 minutes total with countdown messages in chat",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10321,
        name = "Shutting Down Manaforge Coruu",
        prereq = 10299,
        next = 10246,
        steps = {
            {
                type = "interact",
                description = "Shut down Manaforge Coruu",
                mapX = 0.320,
                mapY = 0.642,
                objective = 1,
                hint = "Enter from the west side to avoid the elite guard. Technicians spawn in waves of 2 but are manageable. Rogues can sap technicians to avoid combat.",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10246,
        name = "Attack on Manaforge Coruu",
        prereq = 10321,
        next = 10322,
        steps = {
            {
                type = "kill",
                description = "Kill Sunfury Arcanists",
                mapX = 0.480,
                mapY = 0.830,
                objective = 1,
                hint = "Arcanists are outside on the southern island",
            },
            {
                type = "kill",
                description = "Kill Sunfury Researchers",
                mapX = 0.320,
                mapY = 0.642,
                objective = 2,
                hint = "Researchers are inside the manaforge and some are outside mining",
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
    {
        id = 10322,
        name = "Shutting Down Manaforge Duro",
        prereq = 10246,
        next = 10328,
        steps = {
            {
                type = "travel",
                description = "Go to Manaforge Duro",
                mapX = 0.320,
                mapY = 0.642,
                hint = "The manaforge is located at the coordinates where you accepted the quest",
            },
            {
                type = "collect",
                description = "Obtain the Access Crystal",
                mapX = 0.320,
                mapY = 0.642,
                objective = 1,
                hint = "Find the Access Crystal in the small room inside the Manaforge",
            },
            {
                type = "interact",
                description = "Use the control panel and defend it for 2 minutes",
                mapX = 0.320,
                mapY = 0.642,
                objective = 2,
                hint = "Defend the console from waves of technicians. As a rogue, you can sap them after they cast their blue beam to make them stand idle until they despawn",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10328,
        name = "Sunfury Briefings",
        prereq = 10322,
        next = 10431,
        steps = {
            {
                type = "kill",
                description = "Kill Sunfury Bowmen and Sunfury Centurions for Military Briefing",
                mapX = 0.600,
                mapY = 0.680,
                objective = 1,
                hint = "Found outside Manaforge: Duro. Low drop rate, consider grouping with other farmers",
            },
            {
                type = "kill",
                description = "Kill Sunfury Conjurers for Arcane Briefing",
                mapX = 0.600,
                mapY = 0.680,
                objective = 2,
                hint = "Found outside Manaforge: Duro. Low drop rate, consider grouping with other farmers",
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
    {
        id = 10431,
        name = "Outside Assistance",
        prereq = 10328,
        next = 10323,
        steps = {
            {
                type = "travel",
                description = "Travel to Kaylaan",
                mapX = 0.348,
                mapY = 0.382,
                hint = "Located at the tree-looking icon on the map, west of Stormspire just before the bridge",
                npc = "Kaylaan",
            },
            {
                type = "turnin",
                description = "Turn in to Kaylaan",
                mapX = 0.348,
                mapY = 0.382,
                npc = "Kaylaan",
            },
        },
    },
    {
        id = 10323,
        name = "Shutting Down Manaforge Ara",
        group = 3,
        prereq = 10431,
        next = 10380,
        steps = {
            {
                type = "interact",
                description = "Shut down Manaforge Ara",
                mapX = 0.320,
                mapY = 0.642,
                hint = "Survive for 2 minutes while mobs spawn to stop you. Focus on killing mobs channeling beams at the console rather than all mobs. Elite spawns at the end but doesn't need to be killed.",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10380,
        name = "A Dark Pact",
        prereq = 10323,
        next = 10381,
        steps = {
            {
                type = "kill",
                description = "Kill Daughter of Destiny",
                mapX = 0.290,
                mapY = 0.430,
                objective = 1,
                hint = "Multiple spawns at 29,43; 31,41; and 29,41. They chain aggro with Sunfury mobs when pulled",
            },
            {
                type = "kill",
                description = "Kill Gan'arg Warp-Tinker",
                mapX = 0.290,
                mapY = 0.430,
                objective = 2,
                hint = "Found around 29,43 area",
            },
            {
                type = "kill",
                description = "Kill Warp-Master",
                mapX = 0.260,
                mapY = 0.410,
                objective = 3,
                hint = "Only 1 spawn around 26,41, but more can be found inside the cave",
            },
            {
                type = "turnin",
                description = "Return to Kaylaan",
                mapX = 0.348,
                mapY = 0.382,
                npc = "Kaylaan",
            },
        },
    },
    {
        id = 10381,
        name = "Aldor No More",
        prereq = 10380,
        next = 10407,
        steps = {
            {
                type = "turnin",
                description = "Return to Exarch Orelis",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Exarch Orelis",
            },
        },
    },
    {
        id = 10407,
        name = "Socrethar's Shadow",
        group = 2,
        prereq = 10381,
        next = 10410,
        steps = {
            {
                type = "kill",
                description = "Kill Forgemaster Morug",
                mapX = 0.370,
                mapY = 0.270,
                objective = 1,
                hint = "68 elite mob. Can be snared, rooted, feared, or banished. Can be kited to Stormspire guards for help.",
                npc = "Forgemaster Morug",
            },
            {
                type = "kill",
                description = "Kill Silroth",
                mapX = 0.410,
                mapY = 0.190,
                objective = 2,
                hint = "68 elite mob. Can be snared, rooted, feared, or banished.",
                npc = "Silroth",
            },
            {
                type = "turnin",
                description = "Return to Anchorite Karja",
                mapX = 0.320,
                mapY = 0.642,
                npc = "Anchorite Karja",
            },
        },
    },
    {
        id = 10410,
        name = "Ishanah's Help",
        prereq = 10407,
        next = 10409,
        steps = {
            {
                type = "travel",
                description = "Travel to Shattrath City",
                mapID = 3703,
                mapX = 0.296,
                mapY = 0.140,
                hint = "Ishanah is located in Shattrath City",
            },
            {
                type = "turnin",
                description = "Turn in to Ishanah",
                mapID = 3703,
                mapX = 0.296,
                mapY = 0.140,
                npc = "Ishanah",
            },
        },
    },
    {
        id = 10409,
        name = "Deathblow to the Legion",
        group = 5,
        prereq = 10410,
        steps = {
            {
                type = "travel",
                description = "Go to the gateway",
                mapX = 0.360,
                mapY = 0.180,
                hint = "Use the gateway to teleport to the encounter area",
            },
            {
                type = "interact",
                description = "Use the gateway to teleport",
                mapX = 0.360,
                mapY = 0.180,
                hint = "This will port you to the encounter area at 31, 18",
            },
            {
                type = "kill",
                description = "Defeat Kaylaan and Socrethar",
                mapX = 0.310,
                mapY = 0.180,
                hint = "2-phase fight: First kill Kaylaan (can be interrupted when healing), then Socrethar (tanked by Ishanah). Don't heal NPCs, focus on DPS without pulling aggro",
                npc = "Socrethar",
            },
            {
                type = "turnin",
                description = "Return to Ishanah",
                mapX = 0.296,
                mapY = 0.140,
                npc = "Ishanah",
            },
        },
    },
    -- ========================================================================
    -- Sunfury Attack Plans chain
    -- ========================================================================
    {
        id = 11877,
        name = "Sunfury Attack Plans",
        steps = {
            {
                type = "collect",
                description = "Collect Sunfury Attack Plans from Sunfury Blood Elves in Netherstorm",
                mapX = 0.626,
                mapY = 0.360,
                objective = 1,
                hint = "Any Sunfury Blood Elf in Netherstorm can drop these; try Sunfury Hold or Manaforge areas",
            },
            {
                type = "turnin",
                description = "Return to Lord Torvos",
                mapX = 0.626,
                mapY = 0.360,
                npc = "Lord Torvos",
            },
        },
    },
    -- ========================================================================
    -- Curse of the Violet Tower chain
    -- ========================================================================
    {
        id = 10188,
        name = "The Sigil of Krasus",
        useItem = 28455,
        prereq = 10174,
        next = 10192,
        steps = {
            {
                type = "kill",
                description = "Retrieve the Sigil of Krasus",
                mapX = 0.510,
                mapY = 0.800,
                objective = 1,
                hint = "Patrols around Manaforge Coruu",
                npc = "Spellbinder Maryana",
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
    {
        id = 10192,
        name = "Krasus's Compendium",
        useItem = 28455,
        prereq = 10188,
        next = 10301,
        steps = {
            {
                type = "collect",
                description = "Krasus's Compendium - Chapter 1",
                mapX = 0.578,
                mapY = 0.864,
                objective = 1,
                hint = "Inside a ruined building in Kirin'Var Village",
            },
            {
                type = "collect",
                description = "Krasus's Compendium - Chapter 2",
                mapX = 0.560,
                mapY = 0.841,
                objective = 2,
                hint = "On the ground floor of a building near the chapel",
            },
            {
                type = "collect",
                description = "Krasus's Compendium - Chapter 3",
                mapX = 0.586,
                mapY = 0.896,
                objective = 3,
                hint = "Near the southern part of Kirin'Var Village",
            },
            {
                type = "interact",
                description = "Use Vargoth's Staff to turn in",
                mapX = 0.586,
                mapY = 0.896,
                hint = "Use the staff from your bags to summon Image of Archmage Vargoth",
            },
        },
    },
})
