# Breadcrumb — TBC Anniversary Quest Tracker

## What this addon does

Post-accept quest helper for WoW TBC Anniversary. Shows step-by-step objectives with coordinates for quests already in the player's log. Designed for endgame questing (farming money by completing quests efficiently).

**This is NOT a leveling guide like RestedXP.** No quest pickup guidance, no leveling routes, no "accept quest" steps.

## Key decisions

- **Post-accept only** — only tracks objectives + turnin for quests in the quest log
- **Multi-quest tracking** — automatically tracks ALL quests in the log that have Breadcrumb data, grouped by zone with collapsible zone headers
- **Self-contained data** — all quest steps, coordinates, and hints are bundled as Lua tables. No runtime API calls
- **Own HUD arrow** — free-floating directional arrow (Arrow-1024.tga spritesheet, 108 frames) + distance in yards. Points to the selected quest's active step. Shows "Travel to: Zone Name" when player is in a different zone
- **Quest chain auto-advance** — when turning in a quest with a `next` field, the addon auto-selects the next quest in the chain
- **Item bar** — standalone floating frame with a `SecureActionButtonTemplate` button for quest items. Shows when selected quest has `useItem`. Never put secure buttons inside tracker entries (causes taint)
- **No UTF-8 emoji** — WoW fonts don't render Unicode emoji. Use `Interface\Buttons\WHITE8X8` colored textures as indicators
- **MapIDs differ between sources** — always verify in-game via `/bc status`
- **UI style**: [Syling Tracker](https://github.com/Skamer/Syling-Tracker) inspired — dark backdrop, 1px borders, colored square indicators, gold quest names
- Target client: **TBC Anniversary** (interface 20505, game 2.5.5)

---

## File structure

```
Breadcrumb/
├── Breadcrumb.toc
├── Core.lua                    # Namespace, event bus, event dispatch, module init, slash commands
├── Core/
│   └── StepResolver.lua        # Multi-quest tracking, step resolution, chain auto-advance
├── UI/
│   ├── TrackerFrame.lua        # Multi-quest tracker with zone grouping, expand/collapse, quest lookup popup
│   ├── HudArrow.lua            # Directional arrow with zone travel hint
│   ├── ItemBar.lua             # Standalone secure item button for quest items
│   └── MinimapButton.lua       # Minimap icon (toggle tracker / arrow)
├── Data/
│   ├── QuestData.lua           # Quest registry (RegisterZone, GetQuest, GetQuestUrl)
│   └── Zones/                  # Per-zone quest definitions
│       ├── BladesEdgeMountains.lua
│       └── Netherstorm.lua
├── media/
│   └── arrow.tga               # TomTom Arrow-1024.tga spritesheet (108 frames)
└── tools/                      # Build-time scripts (not shipped)
```

## Quest data schema

Zone files call `BC.QuestData:RegisterZone(mapID, quests)`. The mapID is set once per zone.

**Scale**: ~120-160 quests/zone, ~700+ across Outland, ~200-300 KB total. No lazy loading needed.

```lua
BC.QuestData:RegisterZone(1953, {  -- Netherstorm (in-game mapID)
    {
        id = 10271,
        name = "Getting Down to Business",
        prereq = 10270,            -- optional chain link
        next = 10281,              -- optional chain link
        group = 5,                 -- optional: suggested group size, shown as [5]
        useItem = 28455,           -- optional: quest item ID, shown in ItemBar when selected
        steps = {
            {
                type = "kill",     -- kill | collect | talk | travel | interact | turnin
                description = "Collect Nether Dragon Essence",
                mapID = 1952,      -- optional: override zone mapID if step is in different zone
                mapX = 0.720,      -- 0-1 normalized map coords
                mapY = 0.390,
                objective = 1,     -- GetQuestLogLeaderBoard index (optional)
                hint = "Kill Nether Drakes on Celestial Ridge",  -- optional
                npc = "NPC Name",  -- optional
            },
        },
    },
})
```

---

## Creating zone quest data

1. **Find the in-game mapID** — go to the zone, `/bc status`, note "Player mapID". Wowhead mapIDs do NOT match TBC Anniversary.
2. **Research quests** — look up quest IDs, objectives, NPC names, coordinates. Divide coords by 100 for 0-1 floats.
3. **Verify coordinates in-game** — `/bc status` shows "Map coords" at current position.
4. **Check cross-zone steps** — use per-step `mapID` override when objective is in a different zone than quest giver.

### Rules for quest steps

- **No "accept" steps** — post-accept only
- **`objective` index** matches `GetQuestLogLeaderBoard` order (1-based)
- **Multiple kill objectives** → separate steps with own `objective` index
- **`turnin`** is always last — no `objective` field
- **`hint`** shown below active step in tracker
- **`mapID` on step** overrides zone mapID for cross-zone objectives
- **`group = N`** shown as `[N]` after quest name
- **`useItem = itemID`** shows clickable item in ItemBar (standalone `SecureActionButtonTemplate` frame — never inside tracker entries, causes taint)

### Known TBC Anniversary mapIDs

| Zone | In-game mapID |
|---|---|
| Netherstorm | 1953 |
| Terokkar Forest | 1952 |
| Nagrand | 1951 |
| Zangarmarsh | 1946 |
| Blade's Edge Mountains | 1949 |
| Hellfire Peninsula | ? |
| Shadowmoon Valley | ? |
| Outland (continent) | 1945 |

---

## Architecture

### Multi-quest tracking

StepResolver tracks ALL quests in the log with Breadcrumb data. One quest is "selected" (drives the arrow). User clicks a quest in the tracker to select/expand it.

### Event flow

1. `ADDON_LOADED` → init SavedVariables → init modules
2. `PLAYER_ENTERING_WORLD` → `ScanAllQuests()` → `ResolveAllSteps()` → fire `STEPS_UPDATED`
3. `QUEST_LOG_UPDATE` → rescan all → steps may advance → `STEPS_UPDATED`
4. `QUEST_TURNED_IN` → set `pendingChainQuestID` → on next scan, auto-select chain quest
5. `QUEST_ACCEPTED` → if quest has Breadcrumb data, set as pending → auto-select
6. TrackerFrame, HudArrow, ItemBar subscribe to `STEPS_UPDATED` / `STEP_CHANGED`

### Chain auto-advance

When a quest is turned in and has a `next` field pointing to another quest with Breadcrumb data:
1. `pendingChainQuestID` is set immediately
2. `ResolveAllSteps` checks for pending — if quest is in log, selects it; if not yet, **waits** (doesn't auto-select a different quest)
3. When `QUEST_ACCEPTED` fires for the chain quest, it gets selected
4. 5-second safety timeout clears pending if quest never accepted

### Module pattern

```lua
local ADDON_NAME, BC = ...
local M = {}
BC.ModuleName = M
function M:Initialize() ... end  -- called from Core.lua ADDON_LOADED
```

### Event bus

```lua
BC.Events:Register("EVENT_NAME", callback)
BC.Events:Fire("EVENT_NAME", ...)
```

---

## TBC Classic API notes

- `GetQuestLogTitle(i)` → 8th return is `questID`
- `GetNumQuestLeaderBoards(idx)` + `GetQuestLogLeaderBoard(j, idx)` → objective progress
- `C_Map.GetBestMapForUnit("player")` → current mapID (may be sub-zone)
- `C_Map.GetMapInfo(mapID).parentMapID` → walk up zone hierarchy
- `C_Timer.After(delay, func)` is available
- `C_Container` namespace replaces legacy container globals — shim in Core.lua
- `UnitPosition("player")` returns `y, x` (swapped) in TBC
- World coords from `GetWorldPosFromMapPos` have swapped axes: `GetXY()` returns (north/south, east/west)
- Never hardcode English strings — use mapID comparisons
- `Lua and func()` truncates multiple return values to one — use direct call for multi-return

---

## Coding conventions

- Namespace: `local ADDON_NAME, BC = ...`, global `Breadcrumb = BC`
- Settings: `BC.db.settings.*` (account-wide), `BC.charDb.*` (per-character)
- Debug: `BC:Debug("msg")`, Print: `BC:Print("msg")`
- TOC groups: `# Core`, `# Data`, `# Core Systems`, `# Interface`

## Versioning & releases

**Semver** (`MAJOR.MINOR.PATCH`). Beta: `X.Y.Z-beta.N`.

Stable release — update in one commit, then tag:
1. `CLAUDE.md`, `CHANGELOG.md`, `README.md`, `Breadcrumb.toc`
2. `git tag -a vX.Y.Z -m "vX.Y.Z"`

---

## Reference addons

| Addon | Purpose |
|---|---|
| **[Syling Tracker](https://github.com/Skamer/Syling-Tracker)** | UI/visual reference — dark theme, objective display |
| **FishingKit** (local) | Architecture: module pattern, event bus, coordinate math |
| **Questie** (local) | Reference for SecureActionButtonTemplate usage, quest item buttons |
| **TomTom** | Arrow spritesheet and coordinate conversion math |

