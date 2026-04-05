--[[
    Breadcrumb - Blade's Edge Mountains Quest Data
    mapID: 1949 (TBC Anniversary)
]]

local ADDON_NAME, BC = ...

BC.QuestData:RegisterZone(1949, {
    -- ========================================================================
    -- The Encroaching Wilderness chain
    -- ========================================================================
    {
        id = 10455,
        name = "The Encroaching Wilderness",
        steps = {
            {
                type = "kill",
                description = "Kill Encroaching Felines",
                mapX = 0.390,
                mapY = 0.700,
                objective = 1,
                hint = "Brown cats along the road south of Sylvanaar in Terokkar Forest",
            },
            {
                type = "turnin",
                description = "Return to Rina Moonspring",
                mapX = 0.362,
                mapY = 0.672,
                npc = "Rina Moonspring",
            },
        },
    },
    -- ========================================================================
    -- Marauding Wolves chain
    -- ========================================================================
    {
        id = 10456,
        name = "Marauding Wolves",
        steps = {
            {
                type = "kill",
                description = "Kill Thunderlord Dire Wolves and collect their tails",
                mapX = 0.510,
                mapY = 0.650,
                objective = 1,
                hint = "Found east of Sylvanaar in surrounding woods, great drop rate",
            },
            {
                type = "turnin",
                description = "Return to Rina Moonspring",
                mapX = 0.362,
                mapY = 0.672,
                npc = "Rina Moonspring",
            },
        },
    },
    -- ========================================================================
    -- Protecting Our Own chain
    -- ========================================================================
    {
        id = 10457,
        name = "Protecting Our Own",
        steps = {
            {
                type = "collect",
                description = "Gather grove seedlings",
                mapX = 0.380,
                mapY = 0.780,
                objective = 1,
                hint = "Found south of Sylvanaar in Un'Goro Crater",
            },
            {
                type = "turnin",
                description = "Return to Rina Moonspring",
                mapX = 0.362,
                mapY = 0.672,
                npc = "Rina Moonspring",
            },
        },
    },
    -- ========================================================================
    -- The Encroaching Wilderness chain
    -- ========================================================================
    {
        id = 10486,
        name = "The Encroaching Wilderness",
        steps = {
            {
                type = "kill",
                description = "Kill Encroaching Wyverns",
                mapX = 0.510,
                mapY = 0.640,
                objective = 1,
                hint = "They fly around the area outside Thunderlord Stronghold",
            },
            {
                type = "turnin",
                description = "Return to Gor'drek",
                mapX = 0.522,
                mapY = 0.578,
                npc = "Gor'drek",
            },
        },
    },
    -- ========================================================================
    -- Dust from the Drakes chain
    -- ========================================================================
    {
        id = 10487,
        name = "Dust from the Drakes",
        steps = {
            {
                type = "collect",
                description = "Collect Drake Scales from Blue Drake Hatchlings",
                mapX = 0.390,
                mapY = 0.680,
                objective = 1,
                hint = "Drop rate approximately 50-80%, easy to kill",
            },
            {
                type = "turnin",
                description = "Return to Gor'drek",
                mapX = 0.522,
                mapY = 0.578,
                npc = "Gor'drek",
            },
        },
    },
    -- ========================================================================
    -- Protecting Our Own chain
    -- ========================================================================
    {
        id = 10488,
        name = "Protecting Our Own",
        steps = {
            {
                type = "interact",
                description = "Use item on Thunderlord Dire Wolves to strengthen their defenses",
                mapX = 0.510,
                mapY = 0.620,
                objective = 1,
                hint = "Wolves found south of Thunderlord Stronghold; some may turn hostile",
            },
            {
                type = "turnin",
                description = "Return to Gor'drek",
                mapX = 0.522,
                mapY = 0.578,
                npc = "Gor'drek",
            },
        },
    },
    -- ========================================================================
    -- Felling an Ancient Tree chain
    -- ========================================================================
    {
        id = 10489,
        name = "Felling an Ancient Tree",
        steps = {
            {
                type = "kill",
                description = "Kill Stronglimb Deeproot",
                mapX = 0.370,
                mapY = 0.720,
                objective = 1,
                hint = "Patrols north-south path below Sylvannaar, soloable at 65+",
            },
            {
                type = "collect",
                description = "Collect Stronglimb Deeproot's Trunk",
                mapX = 0.370,
                mapY = 0.720,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Tor'chunk Twoclaws",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Tor'chunk Twoclaws",
            },
        },
    },
    -- ========================================================================
    -- The Bloodmaul Ogres chain
    -- ========================================================================
    {
        id = 10502,
        name = "The Bloodmaul Ogres",
        steps = {
            {
                type = "kill",
                description = "Kill Bloodmaul Ogres",
                mapX = 0.450,
                mapY = 0.750,
                objective = 1,
                hint = "Head south from Sylvanaar, then east on curvy path",
            },
            {
                type = "turnin",
                description = "Return to Commander Skyshadow",
                mapX = 0.362,
                mapY = 0.662,
                npc = "Commander Skyshadow",
            },
        },
    },
    -- ========================================================================
    -- The Bladespire Threat chain
    -- ========================================================================
    {
        id = 10503,
        name = "The Bladespire Threat",
        steps = {
            {
                type = "kill",
                description = "Kill Bladespire Ogres",
                mapX = 0.410,
                mapY = 0.510,
                objective = 1,
                hint = "Any Bladespire humanoid mob counts. Head NW from Thunderlord into ravine.",
            },
            {
                type = "turnin",
                description = "Return to Tor'chunk Twoclaws",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Tor'chunk Twoclaws",
            },
        },
    },
    -- ========================================================================
    -- The Bladespire Ogres chain
    -- ========================================================================
    {
        id = 10504,
        name = "The Bladespire Ogres",
        steps = {
            {
                type = "kill",
                description = "Kill 8 Bloodmaul Ogres",
                mapX = 0.490,
                mapY = 0.490,
                objective = 1,
                hint = "Found at Bloodmaul Hold, any Bloodmaul ogre counts",
            },
            {
                type = "kill",
                description = "Kill 8 Bladespire Ogres",
                mapX = 0.490,
                mapY = 0.490,
                objective = 2,
                hint = "Found at Bladespire Hold, any Bladespire ogre counts",
            },
            {
                type = "turnin",
                description = "Return to Commander Skyshadow",
                mapX = 0.362,
                mapY = 0.662,
                npc = "Commander Skyshadow",
            },
        },
    },
    -- ========================================================================
    -- The Bloodmaul Ogres chain
    -- ========================================================================
    {
        id = 10505,
        name = "The Bloodmaul Ogres",
        steps = {
            {
                type = "kill",
                description = "Kill Bloodmaul Ogres",
                mapX = 0.518,
                mapY = 0.584,
                objective = 1,
                hint = "Pit next to the base, pick up troll quests while there",
            },
            {
                type = "kill",
                description = "Kill Bladespire Ogres",
                mapX = 0.518,
                mapY = 0.584,
                objective = 2,
                hint = "Witch doctor at 44,72 gives related quests",
            },
            {
                type = "turnin",
                description = "Return to Tor'chunk Twoclaws",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Tor'chunk Twoclaws",
            },
        },
    },
    -- ========================================================================
    -- A Dire Situation chain
    -- ========================================================================
    {
        id = 10506,
        name = "A Dire Situation",
        steps = {
            {
                type = "collect",
                description = "Collect Bloodmaul Shrinking Powder from Rina Moonspring",
                mapX = 0.362,
                mapY = 0.672,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to the Bloodmaul ogre area",
                mapX = 0.450,
                mapY = 0.750,
                hint = "Located below the mountain in the area",
            },
            {
                type = "interact",
                description = "Use Bloodmaul Shrinking Powder on Bloodmaul Dire Wolves to shrink them",
                mapX = 0.450,
                mapY = 0.750,
                objective = 2,
                hint = "Shrunk wolves become friendly temporarily",
            },
            {
                type = "turnin",
                description = "Return to Rina Moonspring",
                mapX = 0.362,
                mapY = 0.672,
                npc = "Rina Moonspring",
            },
        },
    },
    -- ========================================================================
    -- Into the Draenethyst Mine chain
    -- ========================================================================
    {
        id = 10510,
        name = "Into the Draenethyst Mine",
        steps = {
            {
                type = "travel",
                description = "Travel to the Draenethyst Mine in southern Silithus",
                mapX = 0.374,
                mapY = 0.650,
            },
            {
                type = "collect",
                description = "Collect 8 Draenethyst Crystals from crystal formations or Bloodmaul Drudgers",
                mapX = 0.430,
                mapY = 0.850,
                objective = 1,
                hint = "No mining skill required; crystals are in the southern cave",
            },
            {
                type = "turnin",
                description = "Return to Bronwyn Stouthammer",
                mapX = 0.374,
                mapY = 0.650,
                npc = "Bronwyn Stouthammer",
            },
        },
    },
    -- ========================================================================
    -- Strange Brew chain
    -- ========================================================================
    {
        id = 10511,
        name = "Strange Brew",
        steps = {
            {
                type = "collect",
                description = "Collect Strange Brew from Brutebane kegs or Bloodmaul Brewmaster",
                mapX = 0.450,
                mapY = 0.750,
                objective = 1,
                hint = "Found at Bloodmaul outpost, inside kegs or drops from Brewmaster",
            },
            {
                type = "turnin",
                description = "Return to Borgrim Stouthammer",
                mapX = 0.374,
                mapY = 0.646,
                npc = "Borgrim Stouthammer",
            },
        },
    },
    -- ========================================================================
    -- Getting the Bladespire Tanked chain
    -- ========================================================================
    {
        id = 10512,
        name = "Getting the Bladespire Tanked",
        steps = {
            {
                type = "interact",
                description = "Plant Stout Ale for Bladespire ogres to drink",
                mapX = 0.374,
                mapY = 0.646,
                objective = 1,
                hint = "Ogres must be drunk first; they need to walk to the beer",
            },
            {
                type = "turnin",
                description = "Return to Borgrim Stouthammer",
                mapX = 0.374,
                mapY = 0.646,
                npc = "Borgrim Stouthammer",
            },
        },
    },
    -- ========================================================================
    -- The Trappings of a Vindicator chain
    -- ========================================================================
    {
        id = 10516,
        name = "The Trappings of a Vindicator",
        steps = {
            {
                type = "talk",
                description = "Talk to Vindicator Vuuleen",
                mapX = 0.440,
                mapY = 0.518,
                objective = 1,
            },
            {
                type = "collect",
                description = "Collect Vindicator's Sword",
                mapX = 0.440,
                mapY = 0.518,
                objective = 2,
                hint = "Get from Sober Dire Wolf near the tent at 46.5, 59.8",
            },
            {
                type = "collect",
                description = "Collect Vindicator's Shield",
                mapX = 0.440,
                mapY = 0.518,
                objective = 3,
                hint = "Get from Sober Dire Wolf near the tent at 46.5, 59.8",
            },
            {
                type = "kill",
                description = "Kill Sober Dire Wolf",
                mapX = 0.465,
                mapY = 0.598,
                objective = 4,
                hint = "Use beer keg to lure the named target out",
            },
            {
                type = "turnin",
                description = "Return to Vindicator Vuuleen",
                mapX = 0.440,
                mapY = 0.518,
                npc = "Vindicator Vuuleen",
            },
        },
    },
    -- ========================================================================
    -- Gorr'Dim, Your Time Has Come... chain
    -- ========================================================================
    {
        id = 10517,
        name = "Gorr'Dim, Your Time Has Come...",
        steps = {
            {
                type = "kill",
                description = "Kill Gorr'Dim",
                mapX = 0.405,
                mapY = 0.518,
                objective = 1,
                hint = "Use the brew to pull him; don't need to loot for credit",
            },
            {
                type = "turnin",
                description = "Return to Vindicator Vuuleen",
                mapX = 0.440,
                mapY = 0.518,
                npc = "Vindicator Vuuleen",
            },
        },
    },
    -- ========================================================================
    -- Planting the Banner chain
    -- ========================================================================
    {
        id = 10518,
        name = "Planting the Banner",
        group = 3,
        steps = {
            {
                type = "travel",
                description = "Travel to Bladespire Tower",
                mapX = 0.460,
                mapY = 0.740,
                hint = "Tower is at coordinates 46, 74",
            },
            {
                type = "interact",
                description = "Plant the Bladespire banner on top of the tower",
                mapX = 0.460,
                mapY = 0.740,
                objective = 1,
                hint = "Plant on tower top to start the event",
            },
            {
                type = "kill",
                description = "Defeat waves of Bloodmaul ogres",
                mapX = 0.460,
                mapY = 0.740,
                objective = 2,
                hint = "Waves spawn at tower base; save cooldowns for boss",
            },
            {
                type = "turnin",
                description = "Return to Commander Skyshadow",
                mapX = 0.362,
                mapY = 0.662,
                npc = "Commander Skyshadow",
            },
        },
    },
    -- ========================================================================
    -- Thunderlord Clan Artifacts chain
    -- ========================================================================
    {
        id = 10524,
        name = "Thunderlord Clan Artifacts",
        steps = {
            {
                type = "collect",
                description = "Collect the Thunderlord Arrow",
                mapX = 0.415,
                mapY = 0.527,
                objective = 1,
                hint = "Up stone ramp near large bonfire in central Bladespire Hold",
            },
            {
                type = "collect",
                description = "Collect the Thunderlord Drum",
                mapX = 0.402,
                mapY = 0.583,
                objective = 2,
                hint = "Small building in southern Bladespire Hold, guarded by one mob",
            },
            {
                type = "collect",
                description = "Collect the Thunderlord Tablet",
                mapX = 0.412,
                mapY = 0.465,
                objective = 3,
                hint = "Hut on hill in north Bladespire Hold, guarded by one mob",
            },
            {
                type = "turnin",
                description = "Return to Rokgah Bloodgrip",
                mapX = 0.528,
                mapY = 0.588,
                npc = "Rokgah Bloodgrip",
            },
        },
    },
    -- ========================================================================
    -- Vision Guide chain
    -- ========================================================================
    {
        id = 10525,
        name = "Vision Guide",
        steps = {
            {
                type = "interact",
                description = "Use the quest item in front of Rokgah Bloodgrip to become a wisp",
                mapX = 0.528,
                mapY = 0.588,
                objective = 1,
                hint = "Use the Q item at quest giver location, you'll autopilot to destination",
            },
            {
                type = "travel",
                description = "Travel as a wisp to the back of Draenethyst Mine in Bloodmaul territory",
                mapX = 0.528,
                mapY = 0.588,
                hint = "You're on autopilot as a wisp, ogres can't harm you",
            },
            {
                type = "turnin",
                description = "Return to Rokgah Bloodgrip",
                mapX = 0.528,
                mapY = 0.588,
                npc = "Rokgah Bloodgrip",
            },
        },
    },
    -- ========================================================================
    -- The Thunderspike chain
    -- ========================================================================
    {
        id = 10526,
        name = "The Thunderspike",
        steps = {
            {
                type = "collect",
                description = "Collect 5 Thunderspike artifacts",
                mapX = 0.528,
                mapY = 0.588,
                objective = 1,
                hint = "A level 67 ogre spawns when you pick one up - defeat it to loot",
            },
            {
                type = "turnin",
                description = "Return to Rokgah Bloodgrip",
                mapX = 0.528,
                mapY = 0.588,
                npc = "Rokgah Bloodgrip",
            },
        },
    },
    -- ========================================================================
    -- They Stole Me Hookah and Me Brews! chain
    -- ========================================================================
    {
        id = 10542,
        name = "They Stole Me Hookah and Me Brews!",
        steps = {
            {
                type = "collect",
                description = "Collect Brutebane Brew",
                mapX = 0.450,
                mapY = 0.722,
                objective = 1,
                hint = "Dropped by Brewmasters or found in barrels around the outpost",
            },
            {
                type = "interact",
                description = "Collect the Hookah (Waterpipe)",
                mapX = 0.420,
                mapY = 0.810,
                objective = 2,
                hint = "Located next to the fireplace at the outpost",
            },
            {
                type = "turnin",
                description = "Return to T'chali the Witch Doctor",
                mapX = 0.450,
                mapY = 0.722,
                npc = "T'chali the Witch Doctor",
            },
        },
    },
    -- ========================================================================
    -- Grimnok and Korgaah, I Am For You! chain
    -- ========================================================================
    {
        id = 10543,
        name = "Grimnok and Korgaah, I Am For You!",
        steps = {
            {
                type = "kill",
                description = "Kill Grimnok",
                mapX = 0.450,
                mapY = 0.722,
                objective = 1,
                hint = "Go south first to find Grimnok",
            },
            {
                type = "collect",
                description = "Collect a mug of brew from the camp",
                mapX = 0.450,
                mapY = 0.722,
                objective = 2,
                hint = "Find in barrels or kill a brewmaster for the mug",
            },
            {
                type = "travel",
                description = "Travel north to Korgaah's location",
                mapX = 0.450,
                mapY = 0.722,
                hint = "Head north to find Korgaah and his bodyguards",
            },
            {
                type = "interact",
                description = "Place the mug at the entrance near Korgaah",
                mapX = 0.450,
                mapY = 0.722,
                objective = 3,
                hint = "Placing mug will single pull Korgaah from his guards",
            },
            {
                type = "kill",
                description = "Kill Korgaah",
                mapX = 0.450,
                mapY = 0.722,
                objective = 4,
                hint = "Two bodyguards are tough; try pulling them separately",
            },
            {
                type = "turnin",
                description = "Return to T'chali the Witch Doctor",
                mapX = 0.450,
                mapY = 0.722,
                npc = "T'chali the Witch Doctor",
            },
        },
    },
    -- ========================================================================
    -- A Curse Upon Both of Your Clans! chain
    -- ========================================================================
    {
        id = 10544,
        name = "A Curse Upon Both of Your Clans!",
        steps = {
            {
                type = "interact",
                description = "Use the fetish to curse Bladespire clan buildings",
                mapX = 0.460,
                mapY = 0.770,
                objective = 1,
                hint = "Use fetish on same building multiple times, kill Evil Spirits",
            },
            {
                type = "interact",
                description = "Use the fetish to curse Bloodmaul clan buildings",
                mapX = 0.420,
                mapY = 0.490,
                objective = 2,
                hint = "Use fetish on same building multiple times, kill Evil Spirits",
            },
            {
                type = "turnin",
                description = "Return to T'chali the Witch Doctor",
                mapX = 0.450,
                mapY = 0.722,
                npc = "T'chali the Witch Doctor",
            },
        },
    },
    -- ========================================================================
    -- Bladespire Kegger chain
    -- ========================================================================
    {
        id = 10545,
        name = "Bladespire Kegger",
        steps = {
            {
                type = "interact",
                description = "Place mugs next to Bladespire ogres",
                mapX = 0.450,
                mapY = 0.722,
                objective = 1,
                hint = "Place 15-20 yards away, don't aggro. Target Bladespire, not Bloodmaul.",
            },
            {
                type = "turnin",
                description = "Return to T'chali the Witch Doctor",
                mapX = 0.450,
                mapY = 0.722,
                npc = "T'chali the Witch Doctor",
            },
        },
    },
    -- ========================================================================
    -- Malaise chain
    -- ========================================================================
    {
        id = 10555,
        name = "Malaise",
        steps = {
            {
                type = "collect",
                description = "Collect 18 Plucked Feathers from Lashh'an arakkoa",
                mapX = 0.350,
                mapY = 0.760,
                objective = 1,
                hint = "Feathers drop from Lashh'an mobs in the woods, not at cave entrance",
            },
            {
                type = "travel",
                description = "Travel to the bridge in Veil Lashh",
                mapX = 0.340,
                mapY = 0.760,
            },
            {
                type = "interact",
                description = "Read the Lashh'an Tome on the second tower",
                mapX = 0.343,
                mapY = 0.773,
                objective = 2,
                hint = "Book is on the right side of the top part of the tower",
            },
            {
                type = "turnin",
                description = "Return to Lashh'an Tome",
                mapX = 0.343,
                mapY = 0.773,
                npc = "Lashh'an Tome",
            },
        },
    },
    -- ========================================================================
    -- Scratches chain
    -- ========================================================================
    {
        id = 10556,
        name = "Scratches",
        steps = {
            {
                type = "interact",
                description = "Use a feather at the rune circle",
                mapX = 0.350,
                mapY = 0.770,
                objective = 1,
                hint = "Use Bundle of Feathers at the circle to summon pet bird",
            },
            {
                type = "travel",
                description = "Travel to Daranelle with the pet bird active",
                mapX = 0.370,
                mapY = 0.656,
                hint = "Don't use fast travel or hearth - bird will despawn",
            },
            {
                type = "turnin",
                description = "Return to Daranelle",
                mapX = 0.370,
                mapY = 0.656,
                npc = "Daranelle",
            },
        },
    },
    -- ========================================================================
    -- Test Flight: The Zephyrium Capacitorium chain
    -- ========================================================================
    {
        id = 10557,
        name = "Test Flight: The Zephyrium Capacitorium",
        steps = {
            {
                type = "talk",
                description = "Talk to Rally Zapnabber",
                mapX = 0.602,
                mapY = 0.688,
                objective = 1,
                hint = "He's south-west of Tally, under the platform, won't show on minimap",
            },
            {
                type = "travel",
                description = "Soar back down the hill to R-3DO",
                mapX = 0.602,
                mapY = 0.684,
            },
            {
                type = "turnin",
                description = "Return to Tally Zapnabber",
                mapX = 0.602,
                mapY = 0.684,
                npc = "Tally Zapnabber",
            },
        },
    },
    -- ========================================================================
    -- The Stones of Vekh'nir chain
    -- ========================================================================
    {
        id = 10565,
        name = "The Stones of Vekh'nir",
        steps = {
            {
                type = "collect",
                description = "Collect Stones of Vekh'nir from nearby mobs",
                mapX = 0.752,
                mapY = 0.620,
                objective = 1,
                hint = "Stone drops from mobs in the area",
            },
            {
                type = "interact",
                description = "Charge the crystal at the circle",
                mapX = 0.770,
                mapY = 0.740,
                objective = 2,
                hint = "Charge at the center of the circle (77, 74)",
            },
            {
                type = "turnin",
                description = "Return to Dertrok",
                mapX = 0.752,
                mapY = 0.620,
                npc = "Dertrok",
            },
        },
    },
    -- ========================================================================
    -- Trial and Error chain
    -- ========================================================================
    {
        id = 10566,
        name = "Trial and Error",
        useItem = 30650,
        steps = {
            {
                type = "collect",
                description = "Collect 4 Unstable Crystals",
                mapX = 0.770,
                mapY = 0.750,
                objective = 1,
                hint = "Crystals found at coordinates 77, 75",
            },
            {
                type = "interact",
                description = "Use all 4 wands on a single Ogre Slave",
                mapX = 0.720,
                mapY = 0.740,
                objective = 2,
                hint = "Use all 4 wands on one ogre at once for best results",
            },
            {
                type = "turnin",
                description = "Return to Dertrok",
                mapX = 0.752,
                mapY = 0.620,
                npc = "Dertrok",
            },
        },
    },
    -- ========================================================================
    -- Creating the Pendant chain
    -- ========================================================================
    {
        id = 10567,
        name = "Creating the Pendant",
        steps = {
            {
                type = "collect",
                description = "Collect 6 Ruuan'ok Claws from Arakkoa",
                mapX = 0.650,
                mapY = 0.300,
                objective = 1,
                hint = "Kill Skyfury Arakkoa northeast of Evergrove, ~50-75% drop rate",
            },
            {
                type = "interact",
                description = "Use 6 Ruuan'ok Claws at the glowing green pattern in the Arakkoa camp",
                mapX = 0.650,
                mapY = 0.300,
                objective = 2,
                hint = "Summons the Harbinger at the center of the camp",
            },
            {
                type = "kill",
                description = "Kill the Harbinger",
                mapX = 0.650,
                mapY = 0.300,
                objective = 3,
                hint = "Drops the pendant needed for quest completion",
            },
            {
                type = "turnin",
                description = "Return to Timeon",
                mapX = 0.622,
                mapY = 0.390,
                npc = "Timeon",
            },
        },
    },
    -- ========================================================================
    -- Where Did Those Darn Gnomes Go? chain
    -- ========================================================================
    {
        id = 10580,
        name = "Where Did Those Darn Gnomes Go?",
        steps = {
            {
                type = "talk",
                description = "Talk to Commander Skyshadow",
                mapX = 0.362,
                mapY = 0.662,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to R-3D0",
                mapX = 0.550,
                mapY = 0.728,
                npc = "R-3D0",
            },
        },
    },
    -- ========================================================================
    -- Follow the Breadcrumbs chain
    -- ========================================================================
    {
        id = 10581,
        name = "Follow the Breadcrumbs",
        steps = {
            {
                type = "talk",
                description = "Talk to R-3D0",
                mapX = 0.550,
                mapY = 0.728,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Toshley",
                mapX = 0.604,
                mapY = 0.690,
                npc = "Toshley",
            },
        },
    },
    -- ========================================================================
    -- Picking Up Some Power Converters chain
    -- ========================================================================
    {
        id = 10584,
        name = "Picking Up Some Power Converters",
        steps = {
            {
                type = "travel",
                description = "Travel to the electromental encampment",
                mapX = 0.570,
                mapY = 0.570,
                hint = "Located at approximately 57, 57 in the zone",
            },
            {
                type = "collect",
                description = "Collect Power Converters from the ground",
                mapX = 0.570,
                mapY = 0.570,
                objective = 1,
                hint = "Found on the ground in the encampment",
            },
            {
                type = "interact",
                description = "Use the Power Converter on Electroelementals",
                mapX = 0.570,
                mapY = 0.570,
                objective = 2,
                hint = "Damage them to 50% health first, then use item",
            },
            {
                type = "kill",
                description = "Kill the Electroelementals",
                mapX = 0.570,
                mapY = 0.570,
                objective = 3,
                hint = "Slowing their movement speed helps avoid damage",
            },
            {
                type = "turnin",
                description = "Return to Toshley",
                mapX = 0.604,
                mapY = 0.690,
                npc = "Toshley",
            },
        },
    },
    -- ========================================================================
    -- Gauging the Resonant Frequency chain
    -- ========================================================================
    {
        id = 10594,
        name = "Gauging the Resonant Frequency",
        steps = {
            {
                type = "collect",
                description = "Collect measurements from singing crystals",
                mapX = 0.602,
                mapY = 0.690,
                objective = 1,
                hint = "Clear a large area around the drakes before laying crystals",
            },
            {
                type = "turnin",
                description = "Return to Nickwinkle the Metro-Gnome",
                mapX = 0.602,
                mapY = 0.690,
                npc = "Nickwinkle the Metro-Gnome",
            },
        },
    },
    -- ========================================================================
    -- Whispers of the Raven God chain
    -- ========================================================================
    {
        id = 10607,
        name = "Whispers of the Raven God",
        steps = {
            {
                type = "kill",
                description = "Kill Grishna Falconwings to obtain buff",
                mapX = 0.622,
                mapY = 0.390,
                objective = 1,
                hint = "Only 1 kill needed; must be in melee range to get buff",
            },
            {
                type = "collect",
                description = "Collect First Prophecy",
                mapX = 0.390,
                mapY = 0.170,
                objective = 2,
                hint = "On top of one of the tree towers",
            },
            {
                type = "collect",
                description = "Collect Second Prophecy",
                mapX = 0.420,
                mapY = 0.220,
                objective = 3,
                hint = "On top of one of the tree towers",
            },
            {
                type = "collect",
                description = "Collect Third Prophecy",
                mapX = 0.410,
                mapY = 0.190,
                objective = 4,
                hint = "On the ground by the swamp",
            },
            {
                type = "collect",
                description = "Collect Fourth Prophecy",
                mapX = 0.400,
                mapY = 0.230,
                objective = 5,
                hint = "Back of the camp on the ground",
            },
            {
                type = "turnin",
                description = "Return to Timeon",
                mapX = 0.622,
                mapY = 0.390,
                npc = "Timeon",
            },
        },
    },
    -- ========================================================================
    -- Crystal Clear chain
    -- ========================================================================
    {
        id = 10608,
        name = "Crystal Clear",
        steps = {
            {
                type = "kill",
                description = "Clear crystal flayers out of the Singing Ridge",
                mapX = 0.602,
                mapY = 0.690,
                objective = 1,
                hint = "Crystal flayers are found in an arch around the area",
            },
            {
                type = "turnin",
                description = "Return to Nickwinkle the Metro-Gnome",
                mapX = 0.602,
                mapY = 0.690,
                npc = "Nickwinkle the Metro-Gnome",
            },
        },
    },
    -- ========================================================================
    -- What Came First, the Drake or the Egg? chain
    -- ========================================================================
    {
        id = 10609,
        name = "What Came First, the Drake or the Egg?",
        steps = {
            {
                type = "interact",
                description = "Click on a Nether Drake Egg",
                mapX = 0.638,
                mapY = 0.000,
                objective = 1,
                hint = "Eggs are all over Singing Ridge, not just south of Death's Door",
            },
            {
                type = "interact",
                description = "Use the Temporal Phase Modulator on the hatched drake",
                mapX = 0.000,
                mapY = 0.000,
                objective = 2,
                hint = "Use modulator twice to get Mature Nether Drake",
            },
            {
                type = "interact",
                description = "Use the Temporal Phase Modulator a second time",
                mapX = 0.000,
                mapY = 0.000,
                objective = 3,
                hint = "Damage carries over; easier to weaken whelp first",
            },
            {
                type = "collect",
                description = "Collect three drake essences from Mature Nether Drakes",
                mapX = 0.000,
                mapY = 0.000,
                objective = 4,
                hint = "Mature drakes deal heavy arcane damage; consider weakening first",
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.000,
                mapY = 0.000,
            },
        },
    },
    -- ========================================================================
    -- Whispers on the Wind chain
    -- ========================================================================
    {
        id = 10614,
        name = "Whispers on the Wind",
        steps = {
            {
                type = "talk",
                description = "Talk to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Leoroxx",
                mapX = 0.752,
                mapY = 0.608,
                npc = "Leoroxx",
            },
        },
    },
    -- ========================================================================
    -- Ruuan Weald chain
    -- ========================================================================
    {
        id = 10615,
        name = "Ruuan Weald",
        steps = {
            {
                type = "travel",
                description = "Travel to Evergrove in Ruuan Weald",
                mapX = 0.622,
                mapY = 0.390,
                hint = "Follow road west from Dertrok, north at Razor Ridge fork, west at Bladed Gulch",
            },
            {
                type = "turnin",
                description = "Return to Timeon",
                mapX = 0.622,
                mapY = 0.390,
                npc = "Timeon",
            },
        },
    },
    -- ========================================================================
    -- Silkwing Cocoons chain
    -- ========================================================================
    {
        id = 10617,
        name = "Silkwing Cocoons",
        steps = {
            {
                type = "collect",
                description = "Collect 8 Silkwing Cocoons",
                mapX = 0.758,
                mapY = 0.614,
                objective = 1,
                hint = "Kill newly spawned Silkwing Larva for higher drop rates",
            },
            {
                type = "turnin",
                description = "Return to Taerek",
                mapX = 0.758,
                mapY = 0.614,
                npc = "Taerek",
            },
        },
    },
    -- ========================================================================
    -- The Softest Wings chain
    -- ========================================================================
    {
        id = 10618,
        name = "The Softest Wings",
        steps = {
            {
                type = "collect",
                description = "Collect Silkwing Wings",
                mapX = 0.758,
                mapY = 0.614,
                objective = 1,
                hint = "Kill Mature Silkwings; let larvae metamorph if needed",
            },
            {
                type = "turnin",
                description = "Return to Silmara",
                mapX = 0.758,
                mapY = 0.614,
                npc = "Silmara",
            },
        },
    },
    -- ========================================================================
    -- Ridgespine Menace chain
    -- ========================================================================
    {
        id = 10620,
        name = "Ridgespine Menace",
        steps = {
            {
                type = "kill",
                description = "Kill Ridgespine spiders in Razor Ridge",
                mapX = 0.670,
                mapY = 0.730,
                objective = 1,
                hint = "Stealthed spiders hide along hill edges, not in open areas",
            },
            {
                type = "turnin",
                description = "Return to Dizzy Dina",
                mapX = 0.604,
                mapY = 0.688,
                npc = "Dizzy Dina",
            },
        },
    },
    -- ========================================================================
    -- Cutting Your Teeth chain
    -- ========================================================================
    {
        id = 10632,
        name = "Cutting Your Teeth",
        steps = {
            {
                type = "collect",
                description = "Collect Raptor Teeth",
                mapX = 0.604,
                mapY = 0.692,
                objective = 1,
                hint = "Drop rate approximately 50% from raptors",
            },
            {
                type = "turnin",
                description = "Return to Razak Ironsides",
                mapX = 0.604,
                mapY = 0.692,
                npc = "Razak Ironsides",
            },
        },
    },
    -- ========================================================================
    -- Ride the Lightning chain
    -- ========================================================================
    {
        id = 10657,
        name = "Ride the Lightning",
        steps = {
            {
                type = "interact",
                description = "Use the repolarized magneto sphere",
                mapX = 0.604,
                mapY = 0.690,
                objective = 1,
                hint = "Use the item and let the Scalewing Serpent's Lightning strike you",
            },
            {
                type = "kill",
                description = "Defeat the Scalewing Serpent",
                mapX = 0.604,
                mapY = 0.690,
                objective = 2,
                hint = "Reduce it to low health first, then finish it after charging",
            },
            {
                type = "turnin",
                description = "Return to Toshley",
                mapX = 0.604,
                mapY = 0.690,
                npc = "Toshley",
            },
        },
    },
    -- ========================================================================
    -- More than a Pound of Flesh chain
    -- ========================================================================
    {
        id = 10671,
        name = "More than a Pound of Flesh",
        steps = {
            {
                type = "kill",
                description = "Kill Fiendling Flesh Beasts and collect 5 Fiendling Flesh",
                mapX = 0.604,
                mapY = 0.688,
                objective = 1,
                hint = "25% drop rate, expect to kill ~20 creatures",
            },
            {
                type = "turnin",
                description = "Return to Dizzy Dina",
                mapX = 0.604,
                mapY = 0.688,
                npc = "Dizzy Dina",
            },
        },
    },
    -- ========================================================================
    -- Trapping the Light Fantastic chain
    -- ========================================================================
    {
        id = 10674,
        name = "Trapping the Light Fantastic",
        steps = {
            {
                type = "interact",
                description = "Use Multi-spectrum Light-trap to capture light orbs at Razaan's Landing",
                mapX = 0.670,
                mapY = 0.430,
                objective = 1,
                hint = "Place traps under pink dots near lightning staffs in the camp",
            },
            {
                type = "turnin",
                description = "Return to Toshley",
                mapX = 0.604,
                mapY = 0.690,
                npc = "Toshley",
            },
        },
    },
    -- ========================================================================
    -- Show Them Gnome Mercy! chain
    -- ========================================================================
    {
        id = 10675,
        name = "Show Them Gnome Mercy!",
        steps = {
            {
                type = "kill",
                description = "Kill mobs around the portal to summon Nexus-Prince Razaan",
                mapX = 0.664,
                mapY = 0.430,
                objective = 1,
                hint = "Kill ~10 mobs near the portal center; watch the vertical column fill up",
            },
            {
                type = "kill",
                description = "Defeat Nexus-Prince Razaan",
                mapX = 0.664,
                mapY = 0.430,
                objective = 2,
            },
            {
                type = "collect",
                description = "Loot the Collection of Souls from Razaan's body",
                mapX = 0.664,
                mapY = 0.430,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Toshley",
                mapX = 0.604,
                mapY = 0.690,
                npc = "Toshley",
            },
        },
    },
    -- ========================================================================
    -- A Time for Negotiation... chain
    -- ========================================================================
    {
        id = 10682,
        name = "A Time for Negotiation...",
        steps = {
            {
                type = "travel",
                description = "Travel to find Overseer Nuaar on the road south of Evergrove",
                mapX = 0.590,
                mapY = 0.390,
                hint = "Nuaar patrols the road south of Evergrove; follow his patrol path",
            },
            {
                type = "talk",
                description = "Talk to Overseer Nuaar",
                mapX = 0.590,
                mapY = 0.390,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Tree Warden Chawn",
                mapX = 0.620,
                mapY = 0.394,
                npc = "Tree Warden Chawn",
            },
        },
    },
    -- ========================================================================
    -- The Den Mother chain
    -- ========================================================================
    {
        id = 10690,
        name = "The Den Mother",
        steps = {
            {
                type = "kill",
                description = "Slay Remaall",
                mapX = 0.520,
                mapY = 0.750,
                objective = 1,
                hint = "Found outside cave entrance in Jagged Ridge, very easy solo",
            },
            {
                type = "turnin",
                description = "Return to Commander Skyshadow",
                mapX = 0.362,
                mapY = 0.662,
                npc = "Commander Skyshadow",
            },
        },
    },
    -- ========================================================================
    -- Reunion chain
    -- ========================================================================
    {
        id = 10709,
        name = "Reunion",
        steps = {
            {
                type = "talk",
                description = "Talk to Leoroxx",
                mapX = 0.752,
                mapY = 0.608,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Test Flight: The Singing Ridge chain
    -- ========================================================================
    {
        id = 10710,
        name = "Test Flight: The Singing Ridge",
        useItem = 30540,
        steps = {
            {
                type = "turnin",
                description = "Return to Tally Zapnabber",
                mapX = 0.602,
                mapY = 0.684,
                npc = "Tally Zapnabber",
            },
        },
    },
    -- ========================================================================
    -- Test Flight: Razaan's Landing chain
    -- ========================================================================
    {
        id = 10711,
        name = "Test Flight: Razaan's Landing",
        steps = {
            {
                type = "interact",
                description = "Perform the experiment with Tally Zapnabber",
                mapX = 0.602,
                mapY = 0.684,
                objective = 1,
                hint = "Talk to Tally Zapnabber to start the flight experiment",
            },
            {
                type = "travel",
                description = "Fly to Razaan's Landing",
                mapX = 0.668,
                mapY = 0.499,
                hint = "Land at approximately 66.8, 49.9. Frost mages can use Ice Block to control descent",
            },
            {
                type = "turnin",
                description = "Return to Tally Zapnabber",
                mapX = 0.602,
                mapY = 0.684,
                npc = "Tally Zapnabber",
            },
        },
    },
    -- ========================================================================
    -- Test Flight: Ruuan Weald chain
    -- ========================================================================
    {
        id = 10712,
        name = "Test Flight: Ruuan Weald",
        useItem = 31124,
        steps = {
            {
                type = "travel",
                description = "Fly to Ruuan Weald and take readings from the nether-weather vane",
                mapX = 0.619,
                mapY = 0.398,
                hint = "Click the nether-weather vane in your inventory while flying",
            },
            {
                type = "turnin",
                description = "Return to O'Mally Zapnabber",
                mapX = 0.626,
                mapY = 0.402,
                npc = "O'Mally Zapnabber",
            },
        },
    },
    -- ========================================================================
    -- ...and a Time for Action chain
    -- ========================================================================
    {
        id = 10713,
        name = "...and a Time for Action",
        steps = {
            {
                type = "kill",
                description = "Kill Hewers",
                mapX = 0.590,
                mapY = 0.360,
                objective = 1,
                hint = "Several near tents west of Ruuan Weald, others hacking at trees",
            },
            {
                type = "interact",
                description = "Protect the trees",
                mapX = 0.620,
                mapY = 0.390,
                objective = 2,
                hint = "Interact with trees in the area to protect them",
            },
            {
                type = "turnin",
                description = "Return to Tree Warden Chawn",
                mapX = 0.620,
                mapY = 0.394,
                npc = "Tree Warden Chawn",
            },
        },
    },
    -- ========================================================================
    -- On Spirit's Wings chain
    -- ========================================================================
    {
        id = 10714,
        name = "On Spirit's Wings",
        steps = {
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Into the Churning Gulch chain
    -- ========================================================================
    {
        id = 10715,
        name = "Into the Churning Gulch",
        steps = {
            {
                type = "collect",
                description = "Collect venom glands from Crust Busters",
                mapX = 0.488,
                mapY = 0.446,
                objective = 1,
                hint = "Both young and greater crust busters drop glands; greater ones have ~10% higher drop rate",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Test Flight: Raven's Wood <needs reward> chain
    -- ========================================================================
    {
        id = 10716,
        name = "Test Flight: Raven's Wood <needs reward>",
        steps = {
            {
                type = "talk",
                description = "Speak with Rally before the flight",
                mapX = 0.000,
                mapY = 0.000,
                objective = 1,
            },
            {
                type = "travel",
                description = "Fly to Raven's Wood",
                mapX = 0.000,
                mapY = 0.000,
            },
            {
                type = "kill",
                description = "Survive encounters with ogres and arakkoa in Raven's Wood",
                mapX = 0.000,
                mapY = 0.000,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.000,
                mapY = 0.000,
            },
        },
    },
    -- ========================================================================
    -- Poaching from Poachers chain
    -- ========================================================================
    {
        id = 10717,
        name = "Poaching from Poachers",
        steps = {
            {
                type = "collect",
                description = "Collect Poacher's Net",
                mapX = 0.618,
                mapY = 0.394,
                objective = 1,
                hint = "Slow drop rate, same area as quest 10713",
            },
            {
                type = "turnin",
                description = "Return to Samia Inkling",
                mapX = 0.618,
                mapY = 0.394,
                npc = "Samia Inkling",
            },
        },
    },
    -- ========================================================================
    -- The Spirits Have Voices chain
    -- ========================================================================
    {
        id = 10718,
        name = "The Spirits Have Voices",
        steps = {
            {
                type = "talk",
                description = "Commune with Garm Wolfbrother's spirit",
                mapX = 0.526,
                mapY = 0.590,
                objective = 1,
                hint = "Must complete quest 10526 (The Thunderspike) first to see him",
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Did You Get The Note? chain
    -- ========================================================================
    {
        id = 10719,
        name = "Did You Get The Note?",
        steps = {
            {
                type = "turnin",
                description = "Return to Tree Warden Chawn",
                mapX = 0.620,
                mapY = 0.394,
                npc = "Tree Warden Chawn",
            },
        },
    },
    -- ========================================================================
    -- The Smallest Creatures chain
    -- ========================================================================
    {
        id = 10720,
        name = "The Smallest Creatures",
        steps = {
            {
                type = "travel",
                description = "Travel to the marmot cave",
                mapX = 0.565,
                mapY = 0.293,
                hint = "Located in the zone, marmot cave entrance",
            },
            {
                type = "interact",
                description = "Poison the kegs in the camp",
                mapX = 0.565,
                mapY = 0.293,
                objective = 1,
                hint = "Kegs are in the camp to the right of the cave",
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- A Boaring Time for Grulloc chain
    -- ========================================================================
    {
        id = 10721,
        name = "A Boaring Time for Grulloc",
        useItem = 31350,
        steps = {
            {
                type = "travel",
                description = "Travel to Grulloc's location southeast of Circle of Blood",
                mapX = 0.600,
                mapY = 0.480,
                hint = "Use whistle from 20+ yards away to avoid aggro",
            },
            {
                type = "interact",
                description = "Use the whistle to summon Huffer from the bonfire near Grulloc",
                mapX = 0.600,
                mapY = 0.480,
                objective = 1,
                hint = "Summon from bonfire before Grulloc, he won't aggro from there",
            },
            {
                type = "collect",
                description = "Loot the item from Grulloc's sack while mounted",
                mapX = 0.600,
                mapY = 0.480,
                objective = 2,
                hint = "Mount up, let piggy chase you, ride to sac and loot quickly",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Meeting at the Blackwing Coven chain
    -- ========================================================================
    {
        id = 10722,
        name = "Meeting at the Blackwing Coven",
        steps = {
            {
                type = "talk",
                description = "Talk to Watcher Moonshade",
                mapX = 0.502,
                mapY = 0.360,
                objective = 1,
            },
            {
                type = "collect",
                description = "Collect Blackwing Wyvern Scraps (5)",
                mapX = 0.480,
                mapY = 0.350,
                objective = 2,
                hint = "Farm mobs north-northwest of Cenarion post, lower level mobs die faster",
            },
            {
                type = "talk",
                description = "Return to Watcher Moonshade",
                mapX = 0.502,
                mapY = 0.360,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Tree Warden Chawn",
                mapX = 0.620,
                mapY = 0.394,
                npc = "Tree Warden Chawn",
            },
        },
    },
    -- ========================================================================
    -- Gorgrom the Dragon-Eater chain
    -- ========================================================================
    {
        id = 10723,
        name = "Gorgrom the Dragon-Eater",
        steps = {
            {
                type = "collect",
                description = "Collect 3 Grisly Totems from Bloodmaul ogres",
                mapX = 0.518,
                mapY = 0.584,
                objective = 1,
                hint = "100% drop rate from ogres in the area",
            },
            {
                type = "interact",
                description = "Place the 3 Grisly Totems at the altar",
                mapX = 0.310,
                mapY = 0.220,
                objective = 2,
                hint = "Spam click totems after clicking altar to complete",
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Prisoner of the Bladespire chain
    -- ========================================================================
    {
        id = 10724,
        name = "Prisoner of the Bladespire",
        group = 3,
        steps = {
            {
                type = "travel",
                description = "Travel to the northern ogre camp at Dragons' End",
                mapX = 0.518,
                mapY = 0.584,
                hint = "Camp is right outside Gruul's Lair with elite ogres",
            },
            {
                type = "kill",
                description = "Kill ogres to obtain a cage key",
                mapX = 0.518,
                mapY = 0.584,
                objective = 1,
                hint = "Drop rate is low; kite mobs down road to use Bloodmaul Ogres",
            },
            {
                type = "interact",
                description = "Use the cage key to free Leokk from the cage",
                mapX = 0.518,
                mapY = 0.584,
                objective = 2,
                hint = "Cage is up and to the left when entering camp",
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Whelps of the Wyrmcult chain
    -- ========================================================================
    {
        id = 10747,
        name = "Whelps of the Wyrmcult",
        steps = {
            {
                type = "travel",
                description = "Travel to the cave at Wyrmcult territory",
                mapX = 0.310,
                mapY = 0.320,
                hint = "Cave location where blackwhelps spawn",
            },
            {
                type = "collect",
                description = "Collect blackwhelps from the cave",
                mapX = 0.310,
                mapY = 0.320,
                objective = 1,
                hint = "Step on eggs to spawn more whelps if needed",
            },
            {
                type = "turnin",
                description = "Return to Samia Inkling",
                mapX = 0.618,
                mapY = 0.394,
                npc = "Samia Inkling",
            },
        },
    },
    -- ========================================================================
    -- Maxnar Must Die! chain
    -- ========================================================================
    {
        id = 10748,
        name = "Maxnar Must Die!",
        steps = {
            {
                type = "travel",
                description = "Travel to Maxnar's cavern",
                mapX = 0.620,
                mapY = 0.394,
                hint = "Head right when entering the cavern, it will curve around",
            },
            {
                type = "kill",
                description = "Kill Maxnar the Ashmaw",
                mapX = 0.330,
                mapY = 0.350,
                objective = 1,
                hint = "Watch for his flame breath attack",
            },
            {
                type = "turnin",
                description = "Return to Tree Warden Chawn",
                mapX = 0.620,
                mapY = 0.394,
                npc = "Tree Warden Chawn",
            },
        },
    },
    -- ========================================================================
    -- Baron Sablemane's Poison chain
    -- ========================================================================
    {
        id = 10749,
        name = "Baron Sablemane's Poison",
        steps = {
            {
                type = "collect",
                description = "Obtain Baron Sablemane's poison",
                mapX = 0.532,
                mapY = 0.412,
                objective = 1,
                hint = "Poison obtained from Baron Sablemane as part of prequest",
            },
            {
                type = "travel",
                description = "Travel to Rexxar at Thunderlord Stronghold",
                mapX = 0.518,
                mapY = 0.584,
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Culling the Wild chain
    -- ========================================================================
    {
        id = 10753,
        name = "Culling the Wild",
        steps = {
            {
                type = "kill",
                description = "Kill Felsworn mobs",
                mapX = 0.700,
                mapY = 0.370,
                objective = 1,
                hint = "Follow road north from Toshley's Station, left side near Ruuan Weald fork",
            },
            {
                type = "turnin",
                description = "Return to Faradrella",
                mapX = 0.626,
                mapY = 0.382,
                npc = "Faradrella",
            },
        },
    },
    -- ========================================================================
    -- Little Embers chain
    -- ========================================================================
    {
        id = 10770,
        name = "Little Embers",
        group = 2,
        steps = {
            {
                type = "kill",
                description = "Kill Little Ember imps",
                mapX = 0.720,
                mapY = 0.230,
                objective = 1,
                hint = "Careful pulls, elementals and gators nearby. Bring a buddy.",
            },
            {
                type = "turnin",
                description = "Return to Mosswood the Ancient",
                mapX = 0.612,
                mapY = 0.384,
                npc = "Mosswood the Ancient",
            },
        },
    },
    -- ========================================================================
    -- From the Ashes chain
    -- ========================================================================
    {
        id = 10771,
        name = "From the Ashes",
        group = 2,
        steps = {
            {
                type = "collect",
                description = "Collect soil sample from southern location",
                mapX = 0.710,
                mapY = 0.220,
                objective = 1,
                hint = "Southern sample at Skald, watch for fire elementals",
            },
            {
                type = "collect",
                description = "Collect soil sample from central location",
                mapX = 0.710,
                mapY = 0.200,
                objective = 2,
                hint = "Central sample just north of southern one",
            },
            {
                type = "collect",
                description = "Collect soil sample from northern location",
                mapX = 0.710,
                mapY = 0.180,
                objective = 3,
                hint = "Northern sample up a hill, bring fire resistance",
            },
            {
                type = "turnin",
                description = "Return to Mosswood the Ancient",
                mapX = 0.612,
                mapY = 0.384,
                npc = "Mosswood the Ancient",
            },
        },
    },
    -- ========================================================================
    -- Baron Sablemane chain
    -- ========================================================================
    {
        id = 10783,
        name = "Baron Sablemane",
        steps = {
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- It's a Trap! chain
    -- ========================================================================
    {
        id = 10785,
        name = "It's a Trap!",
        steps = {
            {
                type = "talk",
                description = "Talk to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Slaughter at Boulder'mok chain
    -- ========================================================================
    {
        id = 10786,
        name = "Slaughter at Boulder'mok",
        steps = {
            {
                type = "travel",
                description = "Travel north to Ruuan Weald",
                mapX = 0.518,
                mapY = 0.584,
                hint = "Head north from your current location",
            },
            {
                type = "travel",
                description = "Head west through the tunnel and past Raven's Wood to Boulder'mok",
                mapX = 0.300,
                mapY = 0.240,
                hint = "Tunnel is west of Ruuan Weald, past Raven's Wood",
            },
            {
                type = "kill",
                description = "Kill Bladespire ogres at Boulder'mok",
                mapX = 0.300,
                mapY = 0.240,
                objective = 1,
                hint = "Brutes enrage and Shamans heal - focus targets carefully",
            },
            {
                type = "turnin",
                description = "Return to Tor'chunk Twoclaws",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Tor'chunk Twoclaws",
            },
        },
    },
    -- ========================================================================
    -- A Date with Dorgok chain
    -- ========================================================================
    {
        id = 10795,
        name = "A Date with Dorgok",
        steps = {
            {
                type = "kill",
                description = "Kill Dorgok",
                mapX = 0.550,
                mapY = 0.240,
                objective = 1,
                hint = "He's on the 2nd floor of the tower. He casts fear and immolate.",
            },
            {
                type = "turnin",
                description = "Return to Commander Haephus Stonewall",
                mapX = 0.620,
                mapY = 0.380,
                npc = "Commander Haephus Stonewall",
            },
        },
    },
    -- ========================================================================
    -- Crush the Bloodmaul Camp! chain
    -- ========================================================================
    {
        id = 10796,
        name = "Crush the Bloodmaul Camp!",
        steps = {
            {
                type = "kill",
                description = "Kill Bloodmaul Ogres in the Bloodmaul Camp",
                mapX = 0.560,
                mapY = 0.250,
                objective = 1,
                hint = "Warlocks are more plentiful in the back of the camp",
            },
            {
                type = "turnin",
                description = "Return to Lieutenant Fairweather",
                mapX = 0.620,
                mapY = 0.380,
                npc = "Lieutenant Fairweather",
            },
        },
    },
    -- ========================================================================
    -- Favor of the Gronn chain
    -- ========================================================================
    {
        id = 10797,
        name = "Favor of the Gronn",
        steps = {
            {
                type = "collect",
                description = "Obtain Gorgrom's Favor from Dorgok",
                mapX = 0.000,
                mapY = 0.000,
                objective = 1,
                hint = "Drops from Dorgok after completing 'A Date with Dorgok' quest",
            },
            {
                type = "turnin",
                description = "Return to Commander Haephus Stonewall",
                mapX = 0.620,
                mapY = 0.380,
                npc = "Commander Haephus Stonewall",
            },
        },
    },
    -- ========================================================================
    -- Pay the Baron a Visit chain
    -- ========================================================================
    {
        id = 10798,
        name = "Pay the Baron a Visit",
        steps = {
            {
                type = "travel",
                description = "Travel to the Circle of Blood in Blade's Edge Mountains",
                mapX = 0.532,
                mapY = 0.412,
                hint = "Walk around the arena to the back to avoid combat",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Into the Churning Gulch chain
    -- ========================================================================
    {
        id = 10799,
        name = "Into the Churning Gulch",
        steps = {
            {
                type = "travel",
                description = "Travel to Churning Gulch, west of Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
            },
            {
                type = "kill",
                description = "Kill mobs in Churning Gulch to collect venom glands",
                mapX = 0.532,
                mapY = 0.412,
                objective = 1,
                hint = "Large wurms have higher drop rate than small snakes",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Goodnight, Gronn chain
    -- ========================================================================
    {
        id = 10800,
        name = "Goodnight, Gronn",
        steps = {
            {
                type = "travel",
                description = "Travel to Grulloc at the coordinates",
                mapX = 0.600,
                mapY = 0.470,
                hint = "Grulloc is a dangerous gronn - approach with caution",
            },
            {
                type = "interact",
                description = "Use Sablemane's Sleeping Powder on Grulloc to put him to sleep",
                mapX = 0.600,
                mapY = 0.470,
                objective = 1,
                hint = "Sleep lasts ~30 seconds; be ready to grab the sack quickly",
            },
            {
                type = "collect",
                description = "Grab Grulloc's sack while he is sleeping",
                mapX = 0.600,
                mapY = 0.470,
                objective = 2,
                hint = "Grab and run immediately - he will wake up soon!",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- It's a Trap! chain
    -- ========================================================================
    {
        id = 10801,
        name = "It's a Trap!",
        steps = {
            {
                type = "talk",
                description = "Talk to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                objective = 1,
            },
            {
                type = "collect",
                description = "Obtain the dragon fire trap from Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                objective = 2,
            },
            {
                type = "kill",
                description = "Kill a gronn using the trap",
                mapX = 0.532,
                mapY = 0.412,
                objective = 3,
                hint = "Use the trap on any gronn in Blade's Edge Mountains",
            },
            {
                type = "turnin",
                description = "Return to Commander Haephus Stonewall",
                mapX = 0.620,
                mapY = 0.380,
                npc = "Commander Haephus Stonewall",
            },
        },
    },
    -- ========================================================================
    -- Gorgrom the Dragon-Eater chain
    -- ========================================================================
    {
        id = 10802,
        name = "Gorgrom the Dragon-Eater",
        steps = {
            {
                type = "travel",
                description = "Travel to the Altar of Gorgrom",
                mapX = 0.620,
                mapY = 0.380,
                hint = "Keep distance from the Altar and don't interfere with the script",
            },
            {
                type = "interact",
                description = "Place the trap at the Altar",
                mapX = 0.620,
                mapY = 0.380,
                objective = 1,
                hint = "Maintain suitable distance after placing the trap",
            },
            {
                type = "talk",
                description = "Deliver the message to Gorgrom when he appears",
                mapX = 0.620,
                mapY = 0.380,
                objective = 2,
                hint = "Gorgrom appears in the large clearing north of the Altar",
            },
            {
                type = "turnin",
                description = "Return to Commander Haephus Stonewall",
                mapX = 0.620,
                mapY = 0.380,
                npc = "Commander Haephus Stonewall",
            },
        },
    },
    -- ========================================================================
    -- Slaughter at Boulder'mok chain
    -- ========================================================================
    {
        id = 10803,
        name = "Slaughter at Boulder'mok",
        steps = {
            {
                type = "travel",
                description = "Travel to Boulder'mok in the northwest area",
                mapX = 0.290,
                mapY = 0.240,
                hint = "Go west across bridge from Evergrove, through cave",
            },
            {
                type = "kill",
                description = "Slay ogres at Boulder'mok",
                mapX = 0.620,
                mapY = 0.380,
                objective = 1,
                hint = "Plenty of ogres in the northwest area",
            },
            {
                type = "turnin",
                description = "Return to Lieutenant Fairweather",
                mapX = 0.620,
                mapY = 0.380,
                npc = "Lieutenant Fairweather",
            },
        },
    },
    -- ========================================================================
    -- Massacre at Gruul's Lair chain
    -- ========================================================================
    {
        id = 10805,
        name = "Massacre at Gruul's Lair",
        group = 3,
        steps = {
            {
                type = "travel",
                description = "Travel to Gruul's Lair",
                mapX = 0.532,
                mapY = 0.412,
                hint = "Meet Baron Sablemane at the lair entrance",
            },
            {
                type = "kill",
                description = "Kill the elite mobs at Gruul's Lair",
                mapX = 0.620,
                mapY = 0.220,
                objective = 1,
                hint = "Pull mobs near Baron Sablemane - he'll help kill them",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Showdown chain
    -- ========================================================================
    {
        id = 10806,
        name = "Showdown",
        group = 3,
        steps = {
            {
                type = "interact",
                description = "Summon Goc using the Signet of the Guildmaster",
                mapX = 0.532,
                mapY = 0.412,
                objective = 1,
            },
            {
                type = "kill",
                description = "Defeat Goc",
                mapX = 0.532,
                mapY = 0.412,
                objective = 2,
                hint = "A friendly NPC will tank; burn Goc down before he kills the NPC",
            },
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Damaged Mask chain
    -- ========================================================================
    {
        id = 10810,
        name = "Damaged Mask",
        steps = {
            {
                type = "collect",
                description = "Obtain the damaged mask",
                mapX = 0.000,
                mapY = 0.000,
                objective = 1,
                hint = "This quest starts a questline with group content ahead",
            },
            {
                type = "turnin",
                description = "Return to O'Mally Zapnabber",
                mapX = 0.626,
                mapY = 0.402,
                npc = "O'Mally Zapnabber",
            },
        },
    },
    -- ========================================================================
    -- Mystery Mask chain
    -- ========================================================================
    {
        id = 10812,
        name = "Mystery Mask",
        steps = {
            {
                type = "turnin",
                description = "Return to Wildlord Antelarion",
                mapX = 0.618,
                mapY = 0.400,
                npc = "Wildlord Antelarion",
            },
        },
    },
    -- ========================================================================
    -- Baron Sablemane Has Requested Your Presence chain
    -- ========================================================================
    {
        id = 10818,
        name = "Baron Sablemane Has Requested Your Presence",
        steps = {
            {
                type = "turnin",
                description = "Return to Baron Sablemane",
                mapX = 0.532,
                mapY = 0.412,
                npc = "Baron Sablemane",
            },
        },
    },
    -- ========================================================================
    -- Felsworn Gas Mask chain
    -- ========================================================================
    {
        id = 10819,
        name = "Felsworn Gas Mask",
        useItem = 31366,
        steps = {
            {
                type = "interact",
                description = "Use Felsworn Gas Mask on Legion Communicator",
                mapX = 0.733,
                mapY = 0.401,
                objective = 1,
                hint = "Must stay in Blade's Edge Mountains or mask disappears",
            },
            {
                type = "talk",
                description = "Speak with Wildlord Antelarion",
                mapX = 0.618,
                mapY = 0.400,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Legion Communicator",
                mapX = 0.733,
                mapY = 0.401,
                npc = "Legion Communicator",
            },
        },
    },
    -- ========================================================================
    -- Deceive thy Enemy chain
    -- ========================================================================
    {
        id = 10820,
        name = "Deceive thy Enemy",
        steps = {
            {
                type = "interact",
                description = "Use the Mask of the Deceiver",
                mapX = 0.733,
                mapY = 0.401,
                objective = 1,
                hint = "Mask has 30m duration - don't destroy it, you need it again for turnin",
            },
            {
                type = "interact",
                description = "Use Legion Communicator to report the revolt",
                mapX = 0.733,
                mapY = 0.401,
                objective = 2,
                hint = "Must be done while mask is active (within 30m)",
            },
            {
                type = "turnin",
                description = "Return to Legion Communicator",
                mapX = 0.733,
                mapY = 0.401,
                npc = "Legion Communicator",
            },
        },
    },
    -- ========================================================================
    -- You're Fired! chain
    -- ========================================================================
    {
        id = 10821,
        name = "You're Fired!",
        group = 2,
        steps = {
            {
                type = "collect",
                description = "Collect 5 keys from guards",
                mapX = 0.733,
                mapY = 0.401,
                objective = 1,
                hint = "Kill guards until you have 5 keys",
            },
            {
                type = "interact",
                description = "Click all 5 obelisks",
                mapX = 0.733,
                mapY = 0.401,
                objective = 2,
                hint = "Quickly activate all 5 obelisks after collecting keys",
            },
            {
                type = "kill",
                description = "Kill Doomcryer",
                mapX = 0.618,
                mapY = 0.400,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Wildlord Antelarion",
                mapX = 0.618,
                mapY = 0.400,
                npc = "Wildlord Antelarion",
            },
        },
    },
    -- ========================================================================
    -- The Truth Unorbed chain
    -- ========================================================================
    {
        id = 10825,
        name = "The Truth Unorbed",
        steps = {
            {
                type = "collect",
                description = "Collect the Unorbed item from Grishna arakkoas",
                mapX = 0.390,
                mapY = 0.170,
                objective = 1,
                hint = "Item drops from any Grishna arakkoa in the area",
            },
            {
                type = "travel",
                description = "Travel to Tree Warden Chawn in Ruuan Weald",
                mapX = 0.620,
                mapY = 0.394,
                hint = "West through tunnel and across Wyrmskull Bridge",
            },
            {
                type = "turnin",
                description = "Return to Tree Warden Chawn",
                mapX = 0.620,
                mapY = 0.394,
                npc = "Tree Warden Chawn",
            },
        },
    },
    -- ========================================================================
    -- Treebole Must Know chain
    -- ========================================================================
    {
        id = 10829,
        name = "Treebole Must Know",
        steps = {
            {
                type = "turnin",
                description = "Return to Treebole",
                mapX = 0.366,
                mapY = 0.232,
                npc = "Treebole",
            },
        },
    },
    -- ========================================================================
    -- Exorcising the Trees chain
    -- ========================================================================
    {
        id = 10830,
        name = "Exorcising the Trees",
        steps = {
            {
                type = "collect",
                description = "Collect Exorcism Orbs from Grishnath village",
                mapX = 0.366,
                mapY = 0.232,
                objective = 1,
                hint = "Look for purple orbs next to the tents in Grishnath village",
            },
            {
                type = "collect",
                description = "Collect Exorcism Feathers from ravens in Raven's Wood",
                mapX = 0.366,
                mapY = 0.232,
                objective = 2,
                hint = "Feathers drop from ravens in the area; one person can collect for group",
            },
            {
                type = "interact",
                description = "Exorcise the trees at Treebole",
                mapX = 0.366,
                mapY = 0.232,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Treebole",
                mapX = 0.366,
                mapY = 0.232,
                npc = "Treebole",
            },
        },
    },
    -- ========================================================================
    -- Since Time Forgotten... chain
    -- ========================================================================
    {
        id = 10843,
        name = "Since Time Forgotten...",
        steps = {
            {
                type = "turnin",
                description = "Return to Leoroxx",
                mapX = 0.752,
                mapY = 0.608,
                npc = "Leoroxx",
            },
        },
    },
    -- ========================================================================
    -- Forge Camp: Anger chain
    -- ========================================================================
    {
        id = 10844,
        name = "Forge Camp: Anger",
        steps = {
            {
                type = "travel",
                description = "Travel to Forge Camp: Anger",
                mapX = 0.000,
                mapY = 0.000,
            },
            {
                type = "interact",
                description = "Complete objectives at Forge Camp: Anger",
                mapX = 0.000,
                mapY = 0.000,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.000,
                mapY = 0.000,
            },
        },
    },
    -- ========================================================================
    -- Slay the Brood Mother chain
    -- ========================================================================
    {
        id = 10845,
        name = "Slay the Brood Mother",
        steps = {
            {
                type = "kill",
                description = "Slay Dreadwing, the Brood Mother",
                mapX = 0.752,
                mapY = 0.608,
                objective = 1,
                hint = "Use holy damage; shadow and most magic schools are heavily resisted",
            },
            {
                type = "turnin",
                description = "Return to Leoroxx",
                mapX = 0.752,
                mapY = 0.608,
                npc = "Leoroxx",
            },
        },
    },
    -- ========================================================================
    -- Understanding the Mok'Nathal chain
    -- ========================================================================
    {
        id = 10846,
        name = "Understanding the Mok'Nathal",
        steps = {
            {
                type = "kill",
                description = "Slay the Vehk'nir chieftain",
                mapX = 0.707,
                mapY = 0.707,
                objective = 1,
                hint = "Kill all enemies on the way in to avoid adds",
            },
            {
                type = "turnin",
                description = "Return to Leoroxx",
                mapX = 0.752,
                mapY = 0.608,
                npc = "Leoroxx",
            },
        },
    },
    -- ========================================================================
    -- The Totems of My Enemy chain
    -- ========================================================================
    {
        id = 10851,
        name = "The Totems of My Enemy",
        steps = {
            {
                type = "travel",
                description = "Travel to Bladespire Outpost",
                mapX = 0.586,
                mapY = 0.600,
                hint = "Located in Nagrand, can combine with quest 'Since Time Forgotten'",
            },
            {
                type = "collect",
                description = "Collect totems from Bladespire Outpost",
                mapX = 0.586,
                mapY = 0.600,
                objective = 1,
                hint = "Kill ogres at the outpost to obtain totems",
            },
            {
                type = "turnin",
                description = "Return to Spiritcaller Dohgar",
                mapX = 0.748,
                mapY = 0.604,
                npc = "Spiritcaller Dohgar",
            },
        },
    },
    -- ========================================================================
    -- Spirit Calling chain
    -- ========================================================================
    {
        id = 10853,
        name = "Spirit Calling",
        useItem = 31663,
        steps = {
            {
                type = "travel",
                description = "Travel to Singing Ridge",
                mapX = 0.600,
                mapY = 0.760,
                hint = "Netherdrakes can be found at this location",
            },
            {
                type = "kill",
                description = "Kill netherdrakes in Singing Ridge",
                mapX = 0.600,
                mapY = 0.760,
                objective = 1,
                hint = "Make sure to kill the Brood Mother (Dreadwing)",
            },
            {
                type = "turnin",
                description = "Return to Spiritcaller Dohgar",
                mapX = 0.748,
                mapY = 0.604,
                npc = "Spiritcaller Dohgar",
            },
        },
    },
    -- ========================================================================
    -- Gather the Orbs chain
    -- ========================================================================
    {
        id = 10859,
        name = "Gather the Orbs",
        steps = {
            {
                type = "travel",
                description = "Travel to Razaan's Landing",
                mapX = 0.748,
                mapY = 0.604,
            },
            {
                type = "interact",
                description = "Drop the totem to collect Razaani Light Orbs",
                mapX = 0.748,
                mapY = 0.604,
                objective = 1,
                hint = "Drop totem at entrance, don't get too close. Pink orbs fly into it.",
            },
            {
                type = "turnin",
                description = "Return to Spiritcaller Dohgar",
                mapX = 0.748,
                mapY = 0.604,
                npc = "Spiritcaller Dohgar",
            },
        },
    },
    -- ========================================================================
    -- Mok'Nathal Treats chain
    -- ========================================================================
    {
        id = 10860,
        name = "Mok'Nathal Treats",
        steps = {
            {
                type = "collect",
                description = "Collect Scalewing Serpent meat",
                mapX = 0.650,
                mapY = 0.580,
                objective = 1,
                hint = "Kill Scalewing Serpents in the area",
            },
            {
                type = "collect",
                description = "Collect Daggermaw Lashtail meat",
                mapX = 0.650,
                mapY = 0.580,
                objective = 2,
                hint = "Kill Daggermaw Lashtails in the area",
            },
            {
                type = "turnin",
                description = "Return to Matron Varah",
                mapX = 0.760,
                mapY = 0.602,
                npc = "Matron Varah",
            },
        },
    },
    -- ========================================================================
    -- Inform Leoroxx! chain
    -- ========================================================================
    {
        id = 10865,
        name = "Inform Leoroxx!",
        steps = {
            {
                type = "turnin",
                description = "Return to Leoroxx",
                mapX = 0.752,
                mapY = 0.608,
                npc = "Leoroxx",
            },
        },
    },
    -- ========================================================================
    -- There Can Be Only One Response chain
    -- ========================================================================
    {
        id = 10867,
        name = "There Can Be Only One Response",
        steps = {
            {
                type = "kill",
                description = "Kill Razaani enemies",
                mapX = 0.752,
                mapY = 0.608,
                objective = 1,
                hint = "Kill 12-15 Razaani; watch for the Prince spawn yell",
            },
            {
                type = "kill",
                description = "Kill the Razaani Prince",
                mapX = 0.752,
                mapY = 0.608,
                objective = 2,
                hint = "Boss is larger and weak; kill before despawn",
            },
            {
                type = "turnin",
                description = "Return to Spiritcaller Dohgar",
                mapX = 0.748,
                mapY = 0.604,
                npc = "Spiritcaller Dohgar",
            },
        },
    },
    -- ========================================================================
    -- Longtail is the Lynchpin chain
    -- ========================================================================
    {
        id = 10893,
        name = "Longtail is the Lynchpin",
        steps = {
            {
                type = "kill",
                description = "Kill Draaca Longtail",
                mapX = 0.460,
                mapY = 0.320,
                objective = 1,
                hint = "Use top ridge to avoid mobs, or use mount in cave",
            },
            {
                type = "turnin",
                description = "Return to Watcher Moonshade",
                mapX = 0.502,
                mapY = 0.360,
                npc = "Watcher Moonshade",
            },
        },
    },
    -- ========================================================================
    -- Wyrmskull Watcher chain
    -- ========================================================================
    {
        id = 10894,
        name = "Wyrmskull Watcher",
        steps = {
            {
                type = "collect",
                description = "Obtain Wyrmskull Watcher quest item from Wyrmcult Poachers and Hewers",
                mapX = 0.350,
                mapY = 0.500,
                objective = 1,
                hint = "Drop from Wyrmcult mobs west of Ruaan Weald",
            },
            {
                type = "turnin",
                description = "Return to Watcher Moonshade",
                mapX = 0.502,
                mapY = 0.360,
                npc = "Watcher Moonshade",
            },
        },
    },
    -- ========================================================================
    -- Harvesting the Fel Ammunition chain
    -- ========================================================================
    {
        id = 10904,
        name = "Harvesting the Fel Ammunition",
        steps = {
            {
                type = "collect",
                description = "Collect Fel Cannonballs",
                mapX = 0.630,
                mapY = 0.640,
                objective = 1,
                hint = "Kill Felguards at Death's Watch, watch for 3 pathing mobs",
            },
            {
                type = "turnin",
                description = "Return to Evergrove Druid",
                mapX = 0.650,
                mapY = 0.684,
                npc = "Evergrove Druid",
            },
        },
    },
    -- ========================================================================
    -- Death's Door chain
    -- ========================================================================
    {
        id = 10910,
        name = "Death's Door",
        useItem = 31763,
        steps = {
            {
                type = "talk",
                description = "Talk to Wildlord Antelarion",
                mapX = 0.618,
                mapY = 0.400,
                objective = 1,
            },
            {
                type = "travel",
                description = "Travel to Death's Door cave",
                mapX = 0.650,
                mapY = 0.700,
                hint = "Use Druid signal outside cave entrance, no need to go inside",
            },
            {
                type = "interact",
                description = "Use Druid signal at Death's Door cave entrance",
                mapX = 0.650,
                mapY = 0.700,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Evergrove Druid",
                mapX = 0.650,
                mapY = 0.684,
                npc = "Evergrove Druid",
            },
        },
    },
    -- ========================================================================
    -- Fire At Will! chain
    -- ========================================================================
    {
        id = 10911,
        name = "Fire At Will!",
        steps = {
            {
                type = "travel",
                description = "Travel to the Northern Cannon",
                mapX = 0.610,
                mapY = 0.600,
                hint = "Northern Cannon location",
            },
            {
                type = "interact",
                description = "Use the Northern Cannon to destroy the northern warp-gate",
                mapX = 0.610,
                mapY = 0.600,
                objective = 1,
                hint = "Requires 7 shots; kill imps with Naturalized ammunition",
            },
            {
                type = "travel",
                description = "Travel to the Southern Cannon",
                mapX = 0.650,
                mapY = 0.680,
                hint = "Southern Cannon location",
            },
            {
                type = "interact",
                description = "Use the Southern Cannon to destroy the southern warp-gate",
                mapX = 0.650,
                mapY = 0.680,
                objective = 2,
                hint = "Requires 7 shots; watch for Void Terrors spawning",
            },
            {
                type = "interact",
                description = "Use your Druid signal to complete the quest",
                mapX = 0.650,
                mapY = 0.680,
                objective = 3,
                hint = "Signal the druids after destroying both warp-gates",
            },
            {
                type = "turnin",
                description = "Return to Evergrove Druid",
                mapX = 0.650,
                mapY = 0.684,
                npc = "Evergrove Druid",
            },
        },
    },
    -- ========================================================================
    -- The Hound-Master chain
    -- ========================================================================
    {
        id = 10912,
        name = "The Hound-Master",
        steps = {
            {
                type = "talk",
                description = "Speak with Baelmon the Hound-Master",
                mapX = 0.650,
                mapY = 0.684,
                objective = 1,
            },
            {
                type = "kill",
                description = "Defeat Baelmon the Hound-Master",
                mapX = 0.650,
                mapY = 0.684,
                objective = 2,
                hint = "Elite mob but soloable; doesn't pose much difficulty",
            },
            {
                type = "turnin",
                description = "Return to Wildlord Antelarion",
                mapX = 0.618,
                mapY = 0.400,
                npc = "Wildlord Antelarion",
            },
        },
    },
    -- ========================================================================
    -- Killing the Crawlers chain
    -- ========================================================================
    {
        id = 10927,
        name = "Killing the Crawlers",
        steps = {
            {
                type = "kill",
                description = "Kill Crawlers in the cave",
                mapX = 0.330,
                mapY = 0.880,
                objective = 1,
                hint = "Cave connecting Zangarmarsh and Blade's Edge Mountains",
            },
            {
                type = "turnin",
                description = "Return to Commander Skyshadow",
                mapX = 0.362,
                mapY = 0.662,
                npc = "Commander Skyshadow",
            },
        },
    },
    {
        id = 10928,
        name = "Killing the Crawlers",
        steps = {
            {
                type = "kill",
                description = "Kill 6 Crawlers",
                mapX = 0.530,
                mapY = 0.962,
                objective = 1,
                hint = "Crawlers are in the tunnel right in front of the quest giver",
            },
            {
                type = "turnin",
                description = "Return to Tor'chunk Twoclaws",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Tor'chunk Twoclaws",
            },
        },
    },
    -- ========================================================================
    -- Stasis Chambers of Bash'ir chain
    -- ========================================================================
    {
        id = 10974,
        name = "Stasis Chambers of Bash'ir",
        group = 5,
        steps = {
            {
                type = "travel",
                description = "Travel to the Stasis Chambers of Bash'ir in Blade's Edge Mountains",
                mapX = 0.528,
                mapY = 0.150,
                hint = "Meet Commander Ameer at the chambers",
            },
            {
                type = "interact",
                description = "Investigate the Stasis Chambers",
                mapX = 0.528,
                mapY = 0.150,
                objective = 1,
                hint = "Interact with the chamber controls or examine the area",
            },
            {
                type = "kill",
                description = "Defeat Thuk the Defiant and his spawned allies",
                mapX = 0.510,
                mapY = 0.120,
                objective = 2,
                hint = "Level 70 elite; use crowd control (stuns, traps, snares)",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.528,
                mapY = 0.150,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Purging the Chambers of Bash'ir chain
    -- ========================================================================
    {
        id = 10975,
        name = "Purging the Chambers of Bash'ir",
        group = 5,
        steps = {
            {
                type = "interact",
                description = "Interact with a stasis chamber",
                mapX = 0.528,
                mapY = 0.150,
                objective = 1,
                hint = "Random mob spawns; can be killed with 3 people (tank, healer, dps)",
            },
            {
                type = "kill",
                description = "Destroy the evil that emerges from the stasis chamber",
                mapX = 0.528,
                mapY = 0.150,
                objective = 2,
                hint = "Mob type varies; Trelopades (Pit Lord) is one possible spawn",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.528,
                mapY = 0.150,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- The Mark of the Nexus-King chain
    -- ========================================================================
    {
        id = 10976,
        name = "The Mark of the Nexus-King",
        group = 5,
        steps = {
            {
                type = "collect",
                description = "Collect 5 Ethereum Prison Keys",
                mapX = 0.528,
                mapY = 0.150,
                objective = 1,
                hint = "Farm keys from Ethereum mobs in Netherstorm",
            },
            {
                type = "talk",
                description = "Give 5 Ethereum Prison Keys to Image of Commander Ameer",
                mapX = 0.528,
                mapY = 0.150,
                objective = 2,
                hint = "Located at Bash'ir's Landing",
            },
            {
                type = "interact",
                description = "Open a stasis chamber with the key",
                mapX = 0.528,
                mapY = 0.150,
                objective = 3,
                hint = "Opens a chamber containing a level 70 elite boss",
            },
            {
                type = "kill",
                description = "Defeat the level 70 elite that emerges from the chamber",
                mapX = 0.528,
                mapY = 0.150,
                objective = 4,
                hint = "Bring a group - this elite is very difficult to solo",
            },
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.528,
                mapY = 0.150,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- The Eye of Haramad chain
    -- ========================================================================
    {
        id = 10982,
        name = "The Eye of Haramad",
        steps = {
            {
                type = "turnin",
                description = "Return to Image of Commander Ameer",
                mapX = 0.528,
                mapY = 0.150,
                npc = "Image of Commander Ameer",
            },
        },
    },
    -- ========================================================================
    -- Speak with the Ogre chain
    -- ========================================================================
    {
        id = 10984,
        name = "Speak with the Ogre",
        next = 10983,
        steps = {
            {
                type = "talk",
                description = "Speak with V'eru",
                mapX = 0.564,
                mapY = 0.490,
                objective = 1,
                hint = "Quest may be unfinished in log from earlier in zone",
            },
            {
                type = "turnin",
                description = "Return to Grok",
                mapX = 0.652,
                mapY = 0.680,
                npc = "Grok",
            },
        },
    },
    {
        id = 10983,
        name = "Mog'dorg the Wizened",
        prereq = 10984,
        next = 10995,
        steps = {
            {
                type = "talk",
                description = "Talk to Grok",
                mapX = 0.652,
                mapY = 0.680,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    {
        id = 10995,
        name = "Grulloc Has Two Skulls",
        group = 5,
        prereq = 10983,
        next = 10996,
        steps = {
            {
                type = "kill",
                description = "Kill Grulloc",
                mapX = 0.554,
                mapY = 0.448,
                objective = 1,
                hint = "Skull drops as shared loot; you can wait for others to kill him",
            },
            {
                type = "collect",
                description = "Collect Grulloc's Skull",
                mapX = 0.554,
                mapY = 0.448,
                objective = 2,
                hint = "Loot the skull from the ground after Grulloc is defeated",
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    {
        id = 10996,
        name = "Maggoc's Treasure Chest",
        group = 5,
        prereq = 10995,
        next = 10997,
        steps = {
            {
                type = "kill",
                description = "Kill Maggoc",
                mapX = 0.554,
                mapY = 0.448,
                objective = 1,
                hint = "Chest drops for all questers, even if not in killing group",
            },
            {
                type = "collect",
                description = "Loot Maggoc's Treasure Chest",
                mapX = 0.554,
                mapY = 0.448,
                objective = 2,
                hint = "Chest appears on ground after Maggoc dies",
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    {
        id = 10997,
        name = "Even Gronn Have Standards",
        group = 5,
        prereq = 10996,
        next = 10998,
        steps = {
            {
                type = "travel",
                description = "Travel to Slaag's location in the giant hut",
                mapX = 0.120,
                mapY = 0.180,
                hint = "Southwest end of the area, in a giant hut",
            },
            {
                type = "kill",
                description = "Kill Slaag",
                mapX = 0.120,
                mapY = 0.180,
                objective = 1,
                hint = "Can loot even if not in the killing group",
            },
            {
                type = "collect",
                description = "Collect Slaag's standard from the ground",
                mapX = 0.120,
                mapY = 0.180,
                objective = 2,
                hint = "Spawns on ground after Slaag dies, usable by all",
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    {
        id = 10998,
        name = "Grim(oire) Business",
        group = 4,
        prereq = 10997,
        next = 11000,
        steps = {
            {
                type = "interact",
                description = "Summon Vim'gol the Vile",
                mapX = 0.554,
                mapY = 0.448,
                objective = 1,
                hint = "Requires 4-5 players to summon and shrink him",
            },
            {
                type = "kill",
                description = "Defeat Vim'gol the Vile",
                mapX = 0.554,
                mapY = 0.448,
                objective = 2,
                hint = "Can nuke him down even if he enrages at 50%",
            },
            {
                type = "collect",
                description = "Take the grimoire from Vim'gol's corpse",
                mapX = 0.554,
                mapY = 0.448,
                objective = 3,
                hint = "Grimoire drops on ground; anyone can pick it up",
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    {
        id = 11000,
        name = "Into the Soulgrinder",
        group = 5,
        prereq = 10998,
        next = 11022,
        steps = {
            {
                type = "travel",
                description = "Travel to the Soulgrinder",
                mapX = 0.600,
                mapY = 0.240,
            },
            {
                type = "interact",
                description = "Use the book to summon Skulloc",
                mapX = 0.600,
                mapY = 0.240,
                objective = 1,
                hint = "Multiple adds will spawn; defeat them while the book is being used",
            },
            {
                type = "kill",
                description = "Defeat Skulloc",
                mapX = 0.554,
                mapY = 0.448,
                objective = 2,
                hint = "Boss spawns after ~2 minutes of defending the book",
            },
            {
                type = "collect",
                description = "Loot Skulloc's soul from his corpse",
                mapX = 0.554,
                mapY = 0.448,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    {
        id = 11022,
        name = "Speak with Mog'dorg",
        prereq = 11000,
        steps = {
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    -- ========================================================================
    -- Ogre Heaven chain
    -- ========================================================================
    {
        id = 11009,
        name = "Ogre Heaven",
        group = 5,
        steps = {
            {
                type = "turnin",
                description = "Return to Chu'a'lor",
                mapX = 0.288,
                mapY = 0.574,
                npc = "Chu'a'lor",
            },
        },
    },
    -- ========================================================================
    -- Bombing Run chain
    -- ========================================================================
    {
        id = 11010,
        name = "Bombing Run",
        steps = {
            {
                type = "interact",
                description = "Bomb the fel cannonball stacks at the Forge camps",
                mapX = 0.276,
                mapY = 0.528,
                objective = 1,
                hint = "Keep moving constantly; only stop briefly to drop bombs",
            },
            {
                type = "turnin",
                description = "Return to Sky Sergeant Vanderlip",
                mapX = 0.276,
                mapY = 0.528,
                npc = "Sky Sergeant Vanderlip",
            },
        },
    },
    -- ========================================================================
    -- Bomb Them Again! chain
    -- ========================================================================
    {
        id = 11023,
        name = "Bomb Them Again!",
        steps = {
            {
                type = "travel",
                description = "Travel to Camp Wrath bombing run area",
                mapX = 0.276,
                mapY = 0.528,
                hint = "Approach from the left side to minimize cannon fire",
            },
            {
                type = "interact",
                description = "Complete the bombing run on enemy targets",
                mapX = 0.276,
                mapY = 0.528,
                objective = 1,
                hint = "Use flying mount to bomb targets; avoid heavy cannon fire",
            },
            {
                type = "turnin",
                description = "Return to Sky Sergeant Vanderlip",
                mapX = 0.276,
                mapY = 0.528,
                npc = "Sky Sergeant Vanderlip",
            },
        },
    },
    -- ========================================================================
    -- The Crystals chain
    -- ========================================================================
    {
        id = 11025,
        name = "The Crystals",
        steps = {
            {
                type = "collect",
                description = "Collect Apexis Shards",
                mapX = 0.288,
                mapY = 0.574,
                objective = 1,
                hint = "Drop from Apexis Flayers near Chu'a'lor at Bash'ir Landing",
            },
            {
                type = "turnin",
                description = "Return to Chu'a'lor",
                mapX = 0.288,
                mapY = 0.574,
                npc = "Chu'a'lor",
            },
        },
    },
    -- ========================================================================
    -- Banish the Demons chain
    -- ========================================================================
    {
        id = 11026,
        name = "Banish the Demons",
        steps = {
            {
                type = "interact",
                description = "Use the banishing crystal to open a portal near the demons in Forge Camp: Wrath",
                mapX = 0.288,
                mapY = 0.578,
                objective = 1,
                hint = "Requires an Apexis Shard; use the item anywhere in the camps",
            },
            {
                type = "kill",
                description = "Kill the demons near the portal",
                mapX = 0.288,
                mapY = 0.578,
                objective = 2,
                hint = "Demons spawn near the portal you create",
            },
            {
                type = "turnin",
                description = "Return to Kronk",
                mapX = 0.288,
                mapY = 0.578,
                npc = "Kronk",
            },
        },
    },
    -- ========================================================================
    -- Yous Have Da Darkrune? chain
    -- ========================================================================
    {
        id = 11027,
        name = "Yous Have Da Darkrune?",
        steps = {
            {
                type = "interact",
                description = "Use item on forge camp with trapped demon",
                mapX = 0.000,
                mapY = 0.000,
                objective = 1,
            },
            {
                type = "interact",
                description = "Break the seal on the transporter using demon's hammer toss (about 4 hits)",
                mapX = 0.000,
                mapY = 0.000,
                objective = 2,
            },
            {
                type = "interact",
                description = "Control Felguard demon and defeat enemies in Phase 1",
                mapX = 0.000,
                mapY = 0.000,
                objective = 3,
            },
            {
                type = "turnin",
                description = "Turn in quest",
                mapX = 0.000,
                mapY = 0.000,
            },
        },
    },
    -- ========================================================================
    -- Our Boy Wants To Be A Skyguard Ranger chain
    -- ========================================================================
    {
        id = 11030,
        name = "Our Boy Wants To Be A Skyguard Ranger",
        steps = {
            {
                type = "collect",
                description = "Collect 10 Apexis Shards",
                mapX = 0.284,
                mapY = 0.576,
                objective = 1,
                hint = "Apexis Shards can be farmed from Apexis creatures in Shadowmoon Valley",
            },
            {
                type = "travel",
                description = "Travel to the Fel Crystalforge",
                mapX = 0.320,
                mapY = 0.400,
                hint = "Located at 32,40 in Shadowmoon Valley",
            },
            {
                type = "interact",
                description = "Use the Fel Crystalforge to obtain the Unstable Flask of the Beast",
                mapX = 0.320,
                mapY = 0.400,
                objective = 2,
                hint = "Use the forge popup to purchase the flask with your Apexis Shards",
            },
            {
                type = "turnin",
                description = "Return to Torkus",
                mapX = 0.284,
                mapY = 0.576,
                npc = "Torkus",
            },
        },
    },
    -- ========================================================================
    -- Out of This World Produce! chain
    -- ========================================================================
    {
        id = 11036,
        name = "Out of This World Produce!",
        steps = {
            {
                type = "travel",
                description = "Travel to Old Orok at Area 52",
                mapX = 0.530,
                mapY = 0.544,
                hint = "Area 52 is in Netherstorm at coordinates 33,64",
            },
            {
                type = "collect",
                description = "Collect the delivery from Old Orok",
                mapX = 0.530,
                mapY = 0.544,
                objective = 1,
            },
            {
                type = "travel",
                description = "Return to Rocket-Chief Fuselage",
                mapX = 0.326,
                mapY = 0.648,
            },
            {
                type = "interact",
                description = "Deliver the crate to Rocket-Chief Fuselage",
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
    -- Parts for the Rocket-Chief chain
    -- ========================================================================
    {
        id = 11040,
        name = "Parts for the Rocket-Chief",
        steps = {
            {
                type = "travel",
                description = "Travel to Area 52 in Netherstorm",
                mapX = 0.326,
                mapY = 0.648,
                hint = "Follow the road east from Ruuan Weald, then north to Netherstorm",
            },
            {
                type = "interact",
                description = "Interact with the Rocket-Chief Fuselage crate",
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
    -- Building a Better Gryphon chain
    -- ========================================================================
    {
        id = 11043,
        name = "Building a Better Gryphon",
        steps = {
            {
                type = "talk",
                description = "Talk to Rip Pedalslam",
                mapX = 0.610,
                mapY = 0.704,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Brunn Flamebeard",
                mapX = 0.376,
                mapY = 0.560,
                npc = "Brunn Flamebeard",
            },
        },
    },
    -- ========================================================================
    -- The Apprentice's Request chain
    -- ========================================================================
    {
        id = 11047,
        name = "The Apprentice's Request",
        steps = {
            {
                type = "talk",
                description = "Talk to Agadai",
                mapX = 0.520,
                mapY = 0.544,
                objective = 1,
                hint = "Located next to the windrider in Thunderlord Stronghold",
            },
            {
                type = "travel",
                description = "Travel to Shadowmoon Village",
                mapX = 0.292,
                mapY = 0.294,
                hint = "Go to Shadowmoon Village in Shadowmoon Valley",
            },
            {
                type = "turnin",
                description = "Return to Dama Wildmane",
                mapX = 0.292,
                mapY = 0.294,
                npc = "Dama Wildmane",
            },
        },
    },
    -- ========================================================================
    -- Banish More Demons chain
    -- ========================================================================
    {
        id = 11051,
        name = "Banish More Demons",
        steps = {
            {
                type = "kill",
                description = "Banish demons in Netherstorm",
                mapX = 0.288,
                mapY = 0.578,
                objective = 1,
                hint = "Complete the banishing process as instructed by Kronk",
            },
            {
                type = "interact",
                description = "Open the Grab Bag to receive your reward",
                mapX = 0.288,
                mapY = 0.578,
                objective = 2,
                hint = "Low chance for Darkrune; may get Charged/Depleted Crystal Focus instead",
            },
            {
                type = "turnin",
                description = "Return to Kronk",
                mapX = 0.288,
                mapY = 0.578,
                npc = "Kronk",
            },
        },
    },
    -- ========================================================================
    -- The Trouble Below chain
    -- ========================================================================
    {
        id = 11057,
        name = "The Trouble Below",
        steps = {
            {
                type = "travel",
                description = "Go to the Circle of Blood arena in Blade's Edge Mountains",
                mapX = 0.554,
                mapY = 0.449,
            },
            {
                type = "turnin",
                description = "Return to Mog'dorg the Wizened",
                mapX = 0.554,
                mapY = 0.448,
                npc = "Mog'dorg the Wizened",
            },
        },
    },
    -- ========================================================================
    -- An Apexis Relic chain
    -- ========================================================================
    {
        id = 11058,
        name = "An Apexis Relic",
        steps = {
            {
                type = "interact",
                description = "Use Apexis Shard on Apexis Relic and complete 5 right sequences",
                mapX = 0.288,
                mapY = 0.574,
                objective = 1,
                hint = "Use Ogri'lazy addon to help with sequences, or manually click the order shown",
            },
            {
                type = "turnin",
                description = "Return to Chu'a'lor",
                mapX = 0.288,
                mapY = 0.574,
                npc = "Chu'a'lor",
            },
        },
    },
    -- ========================================================================
    -- Guardian of the Monument chain
    -- ========================================================================
    {
        id = 11059,
        name = "Guardian of the Monument",
        group = 5,
        steps = {
            {
                type = "interact",
                description = "Interact with the Apexis Monument with 4 players and 35 apexis shards",
                mapX = 0.288,
                mapY = 0.574,
                objective = 1,
                hint = "Requires 4 players at each button and 35 shards to start",
            },
            {
                type = "interact",
                description = "Complete 6 rounds of the color sequence game",
                mapX = 0.288,
                mapY = 0.574,
                objective = 2,
                hint = "Watch the spark colors and type first letters (y/g/b/r/p) in chat",
            },
            {
                type = "kill",
                description = "Kill the giant construct that spawns after 6 rounds",
                mapX = 0.288,
                mapY = 0.574,
                objective = 3,
                hint = "Loot the head from the defeated giant",
            },
            {
                type = "turnin",
                description = "Return to Chu'a'lor",
                mapX = 0.288,
                mapY = 0.574,
                npc = "Chu'a'lor",
            },
        },
    },
    -- ========================================================================
    -- A Crystalforged Darkrune chain
    -- ========================================================================
    {
        id = 11060,
        name = "A Crystalforged Darkrune",
        steps = {
            {
                type = "travel",
                description = "Travel to Shartuul's Transporter at Forge Camp: Wrath",
                mapX = 0.284,
                mapY = 0.580,
                hint = "Located on the westernmost plateau in Blade's Edge",
            },
            {
                type = "interact",
                description = "Use the Crystalforged Darkrune at Shartuul's Transporter to start the event",
                mapX = 0.284,
                mapY = 0.580,
                objective = 1,
            },
            {
                type = "interact",
                description = "Control the Fel Guard and use its hammer to smash the warp-gate's shield",
                mapX = 0.284,
                mapY = 0.580,
                objective = 2,
            },
            {
                type = "kill",
                description = "Defeat the first demon that emerges from the warp-gate",
                mapX = 0.284,
                mapY = 0.580,
                objective = 3,
            },
            {
                type = "interact",
                description = "Control the first demon",
                mapX = 0.284,
                mapY = 0.580,
                objective = 4,
            },
            {
                type = "kill",
                description = "Defeat subsequent demons as they appear",
                mapX = 0.284,
                mapY = 0.580,
                objective = 5,
            },
            {
                type = "interact",
                description = "Control each demon as it appears",
                mapX = 0.284,
                mapY = 0.580,
                objective = 6,
            },
            {
                type = "kill",
                description = "Defeat the Eredar Overseer",
                mapX = 0.284,
                mapY = 0.580,
                objective = 7,
            },
            {
                type = "turnin",
                description = "Return to Gahk",
                mapX = 0.284,
                mapY = 0.580,
                npc = "Gahk",
            },
        },
    },
    -- ========================================================================
    -- A Father's Duty chain
    -- ========================================================================
    {
        id = 11061,
        name = "A Father's Duty",
        steps = {
            {
                type = "collect",
                description = "Collect 10 Apexis Shards",
                mapX = 0.284,
                mapY = 0.576,
                objective = 1,
                hint = "Farm Apexis Shards from mobs in Blade's Edge Mountains",
            },
            {
                type = "travel",
                description = "Travel to Bash'ir Crystalforge",
                mapX = 0.540,
                mapY = 0.100,
                hint = "Clear mobs around the forge before using it",
            },
            {
                type = "interact",
                description = "Trade 10 Apexis Shards for Unstable Flask of the Sorcerer",
                mapX = 0.540,
                mapY = 0.100,
                objective = 2,
            },
            {
                type = "travel",
                description = "Return to Torkus in Ogri'la",
                mapX = 0.284,
                mapY = 0.576,
            },
            {
                type = "turnin",
                description = "Return to Torkus",
                mapX = 0.284,
                mapY = 0.576,
                npc = "Torkus",
            },
        },
    },
    -- ========================================================================
    -- The Skyguard Outpost chain
    -- ========================================================================
    {
        id = 11062,
        name = "The Skyguard Outpost",
        steps = {
            {
                type = "travel",
                description = "Travel to the Skyguard Outpost",
                mapX = 0.274,
                mapY = 0.526,
                hint = "Located in Terokkar Forest, coordinates 28, 51",
            },
            {
                type = "talk",
                description = "Talk to Sky Commander Keller",
                mapX = 0.274,
                mapY = 0.526,
                objective = 1,
            },
            {
                type = "talk",
                description = "Talk to Sergeant Vanderlip",
                mapX = 0.288,
                mapY = 0.574,
                objective = 2,
                hint = "She's across from Sky Commander Keller at the outpost",
            },
            {
                type = "turnin",
                description = "Return to Sky Commander Keller",
                mapX = 0.274,
                mapY = 0.526,
                npc = "Sky Commander Keller",
            },
        },
    },
    -- ========================================================================
    -- Wrangle Some Aether Rays! chain
    -- ========================================================================
    {
        id = 11065,
        name = "Wrangle Some Aether Rays!",
        steps = {
            {
                type = "collect",
                description = "Wrangle 4 Aether Rays",
                mapX = 0.280,
                mapY = 0.514,
                objective = 1,
                hint = "Reduce rays below 40% health before using wrangler",
            },
            {
                type = "turnin",
                description = "Return to Skyguard Khatie",
                mapX = 0.280,
                mapY = 0.514,
                npc = "Skyguard Khatie",
            },
        },
    },
    -- ========================================================================
    -- Wrangle More Aether Rays! chain
    -- ========================================================================
    {
        id = 11066,
        name = "Wrangle More Aether Rays!",
        steps = {
            {
                type = "collect",
                description = "Wrangle 4 Aether Rays",
                mapX = 0.280,
                mapY = 0.514,
                objective = 1,
                hint = "Use the Skyguard Lasso on Aether Rays in Blade's Edge Mountains",
            },
            {
                type = "turnin",
                description = "Return to Skyguard Khatie",
                mapX = 0.280,
                mapY = 0.514,
                npc = "Skyguard Khatie",
            },
        },
    },
    -- ========================================================================
    -- To Rule The Skies chain
    -- ========================================================================
    {
        id = 11078,
        name = "To Rule The Skies",
        group = 5,
        steps = {
            {
                type = "collect",
                description = "Collect 35 Apexis Shards",
                mapX = 0.274,
                mapY = 0.526,
                objective = 1,
                hint = "Dropped from any summoned dragon in zone",
            },
            {
                type = "interact",
                description = "Summon a dragon using the shards",
                mapX = 0.274,
                mapY = 0.526,
                objective = 2,
                hint = "Can summon Rivendark, Obsidia, Furywing, or Insidion",
            },
            {
                type = "kill",
                description = "Defeat the summoned dragon",
                mapX = 0.274,
                mapY = 0.526,
                objective = 3,
                hint = "Dragon will fear like Onyxia; coordinate with group",
            },
            {
                type = "collect",
                description = "Collect Dragon Teeth from the defeated dragon",
                mapX = 0.274,
                mapY = 0.526,
                objective = 4,
                hint = "Dropped by any of the four possible dragons",
            },
            {
                type = "turnin",
                description = "Return to Sky Commander Keller",
                mapX = 0.274,
                mapY = 0.526,
                npc = "Sky Commander Keller",
            },
        },
    },
    -- ========================================================================
    -- A Fel Whip For Gahk chain
    -- ========================================================================
    {
        id = 11079,
        name = "A Fel Whip For Gahk",
        group = 5,
        steps = {
            {
                type = "collect",
                description = "Collect 35 Apexis Shards",
                mapX = 0.284,
                mapY = 0.580,
                objective = 1,
                hint = "Shards drop from demons in Hellfire Peninsula",
            },
            {
                type = "interact",
                description = "Use summoning stone at Forge Camp to summon a demon chief",
                mapX = 0.284,
                mapY = 0.580,
                objective = 2,
                hint = "Stones are in green smokey structures at Forge Camps",
            },
            {
                type = "kill",
                description = "Defeat the summoned demon chief",
                mapX = 0.284,
                mapY = 0.580,
                objective = 3,
                hint = "Terrorguard is a standard tank and spank, watch for enrage",
            },
            {
                type = "collect",
                description = "Loot the Fel Whip from the defeated demon",
                mapX = 0.284,
                mapY = 0.580,
                objective = 4,
                hint = "Demon drops Fel Whip and Apexis Crystal",
            },
            {
                type = "turnin",
                description = "Return to Gahk",
                mapX = 0.284,
                mapY = 0.580,
                npc = "Gahk",
            },
        },
    },
    -- ========================================================================
    -- The Relic's Emanation chain
    -- ========================================================================
    {
        id = 11080,
        name = "The Relic's Emanation",
        steps = {
            {
                type = "interact",
                description = "Interact with the Apexis Relic and complete 8 correct sequences",
                mapX = 0.288,
                mapY = 0.574,
                objective = 1,
                hint = "Write down the sequence; don't take too long or it resets",
            },
            {
                type = "collect",
                description = "Obtain the emanation from the Apexis Relic",
                mapX = 0.288,
                mapY = 0.574,
                objective = 2,
            },
            {
                type = "turnin",
                description = "Return to Chu'a'lor",
                mapX = 0.288,
                mapY = 0.574,
                npc = "Chu'a'lor",
            },
        },
    },
    -- ========================================================================
    -- A Special Thank You chain
    -- ========================================================================
    {
        id = 11091,
        name = "A Special Thank You",
        steps = {
            {
                type = "talk",
                description = "Talk to Chu'a'lor",
                mapX = 0.288,
                mapY = 0.574,
                objective = 1,
            },
            {
                type = "turnin",
                description = "Return to Jho'nass",
                mapX = 0.280,
                mapY = 0.586,
                npc = "Jho'nass",
            },
        },
    },
    -- ========================================================================
    -- Bombing Run chain
    -- ========================================================================
    {
        id = 11102,
        name = "Bombing Run",
        steps = {
            {
                type = "interact",
                description = "Bomb fel cannonball stacks",
                mapX = 0.276,
                mapY = 0.528,
                objective = 1,
                hint = "Use bombing run ability on cannonball stacks",
            },
            {
                type = "turnin",
                description = "Return to Sky Sergeant Vanderlip",
                mapX = 0.276,
                mapY = 0.528,
                npc = "Sky Sergeant Vanderlip",
            },
        },
    },
    -- ========================================================================
    -- Assault on Bash'ir Landing! chain
    -- ========================================================================
    {
        id = 11119,
        name = "Assault on Bash'ir Landing!",
        group = 5,
        steps = {
            {
                type = "talk",
                description = "Talk to Sky Commander Keller to learn about the assault timing",
                mapX = 0.274,
                mapY = 0.526,
                objective = 1,
                hint = "He tells you when the next assault departs",
            },
            {
                type = "travel",
                description = "Travel to Bash'ir Landing and defend the Skyguard assault",
                mapX = 0.500,
                mapY = 0.500,
                hint = "Defend the squad at Bash'ir Crystalforge for multiple waves",
            },
            {
                type = "interact",
                description = "Survive waves of ethereal attacks to allow the Skyguard to resupply",
                mapX = 0.274,
                mapY = 0.526,
                objective = 2,
                hint = "Keep NPCs alive through multiple assault cycles for rewards",
            },
            {
                type = "turnin",
                description = "Return to Aether-tech Apprentice",
                mapX = 0.278,
                mapY = 0.522,
                npc = "Aether-tech Apprentice",
            },
        },
    },
    -- ========================================================================
    -- Intercepting the Mana Cells chain
    -- ========================================================================
    {
        id = 11513,
        name = "Intercepting the Mana Cells",
        steps = {
            {
                type = "collect",
                description = "Acquire Bash'ir Phasing Device",
                mapX = 0.492,
                mapY = 0.424,
                objective = 1,
                hint = "Drops from ethereals or elementals in the area",
            },
            {
                type = "interact",
                description = "Activate the Bash'ir Phasing Device",
                mapX = 0.492,
                mapY = 0.424,
                objective = 2,
                hint = "Allows you to see mana cells and Phase Wyrms",
            },
            {
                type = "collect",
                description = "Collect mana cells",
                mapX = 0.492,
                mapY = 0.424,
                objective = 3,
                hint = "Visible only after activating the Phasing Device",
            },
            {
                type = "turnin",
                description = "Return to Exarch Nasuun",
                mapX = 0.492,
                mapY = 0.424,
                npc = "Exarch Nasuun",
            },
        },
    },
    -- ========================================================================
    -- Maintaining the Sunwell Portal chain
    -- ========================================================================
    {
        id = 11514,
        name = "Maintaining the Sunwell Portal",
        steps = {
            {
                type = "collect",
                description = "Obtain Bash'ir Phasing Device from ethereal mobs",
                mapX = 0.492,
                mapY = 0.424,
                objective = 1,
                hint = "Kill ethereals in the area until one drops the device",
            },
            {
                type = "collect",
                description = "Collect 10 Mana Cells",
                mapX = 0.492,
                mapY = 0.424,
                objective = 2,
                hint = "Use phasing device to see hidden cells; don't log out in zone",
            },
            {
                type = "turnin",
                description = "Return to Exarch Nasuun",
                mapX = 0.492,
                mapY = 0.424,
                npc = "Exarch Nasuun",
            },
        },
    },
    -- ========================================================================
    -- Prisoner of the Bladespire chain
    -- ========================================================================
    {
        id = 10742,
        name = "Showdown",
        group = 3,
        prereq = 10724,
        steps = {
            {
                type = "kill",
                description = "Kill Goc",
                mapX = 0.518,
                mapY = 0.584,
                objective = 1,
                hint = "Rexxar tanks; focus DPS and avoid AE damage",
            },
            {
                type = "kill",
                description = "Kill Gorgrom the Dragon-Eater",
                mapX = 0.518,
                mapY = 0.584,
                objective = 2,
                hint = "Rexxar tanks; focus DPS and avoid AE damage",
            },
            {
                type = "turnin",
                description = "Return to Rexxar",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Rexxar",
            },
        },
    },
    -- ========================================================================
    -- Baron Sablemane's Poison chain
    -- ========================================================================
    {
        id = 10784,
        name = "Crush the Bloodmaul Camp",
        prereq = 10749,
        steps = {
            {
                type = "kill",
                description = "Kill Bloodmaul Ogres at the Bloodmaul Camp",
                mapX = 0.560,
                mapY = 0.270,
                objective = 1,
                hint = "Can be done alongside 'The Smallest Creature' quest",
            },
            {
                type = "turnin",
                description = "Return to Tor'chunk Twoclaws",
                mapX = 0.518,
                mapY = 0.584,
                npc = "Tor'chunk Twoclaws",
            },
        },
    },
})
