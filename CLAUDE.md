# WoW TBC Anniversary — Smart Quest Tracker Addon

## Project goal

Build a World of Warcraft TBC Anniversary addon that replaces the default quest tracker with a step-by-step quest guide, including a directional arrow on the minimap pointing to the next objective.

## Decisions made

- **No live AI / Claude API calls at runtime.** The AI enrichment (Claude) is used offline at data-prep / build time only — it processes Wowhead quest data and outputs structured step JSON that gets bundled with the addon.
- Target client: **WoW TBC Anniversary** (2.x client, Classic API surface).

---

## Game Version Notes (Critical)

- **Interface version**: `20504` / `20505` (game version 2.5.5).
- **TBC Classic Anniversary uses the `C_Container` namespace** — legacy globals like `GetContainerNumSlots`, `GetContainerItemLink`, `GetContainerItemInfo` may not exist.
- A compatibility shim is needed to map legacy globals to `C_Container` equivalents:
  ```lua
  if not GetContainerNumSlots and C_Container then
      GetContainerNumSlots = C_Container.GetContainerNumSlots
      GetContainerItemLink = C_Container.GetContainerItemLink
      -- etc.
  end
  ```
- `C_Container.GetContainerItemInfo` returns a **table** (fields: `iconFileID`, `stackCount`, `isLocked`, `quality`, etc.) — not legacy multiple-return-value style. Wrap it if using legacy call patterns.
- **`UseContainerItem(bag, slot)`** — the legacy global does not exist on TBC Classic Anniversary; shim to `C_Container.UseContainerItem`.

## Important API Behaviour (TBC Classic 2.5.5)

- **`UNIT_SPELLCAST_*` event signature**: TBC Classic Anniversary uses the modern `(unit, castGUID, spellID)` 3-arg format (spellID is arg3), not the old TBC `(unit, spellName, rank, lineID, spellID)` 5-arg format (spellID is arg5). Use `local spellID = arg5 or arg3` to support both.
- **`C_Timer.After(delay, func)`** is available.
- Item links follow pattern `item:(%d+)` for extracting itemID.
- **`EquipItemByName` in combat**: only `"item:ID"` format works under combat lockdown. Item-name strings and full hyperlinks silently fail. Must be called immediately from `PLAYER_REGEN_DISABLED`.
- **`GLOBAL_MOUSE_DOWN`** — fires with `arg1 = "RightButton"` (etc.) before click events are dispatched to frames. `WorldFrame:HookScript("OnMouseDown")` fires too late.
- **`SecureActionButtonTemplate` + `type=macro` + `macrotext`** — use macrotext for secure actions. The `target-slot` attribute for `type=item` is not required in TBC Classic when using macrotext.
- **`GetItemSubClassInfo(classID, subClassID)`** — returns the localized subclass name string. Available in TBC Classic Anniversary.
- **`C_Map.GetBestMapForUnit("player")`** — returns the mapID for the player's current zone. Use mapID comparisons instead of English zone name strings for locale independence.
- **Localization**: Never hardcode English spell names, item subtypes, zone names, or tracking names. Resolve via `GetSpellInfo(spellID)`, `GetItemSubClassInfo()`, and mapID comparisons.
- **Native `Slider` frame** is not draggable in TBC Classic Anniversary — use manual hit-area Frame + `OnMouseDown`/`OnUpdate` cursor tracking instead.

---

## Architecture overview

### 1. Data sources

| Source | What it provides | How to access |
|---|---|---|
| Wowhead TBC | Quest steps, NPC/object coords, objective text | Scrape `https://tbc.wowhead.com/quest=XXXX&xml` at build time |
| Blizzard Lua API | Live quest state, objective completion | `GetQuestLogTitle`, `GetQuestLogLeaderBoard`, `QUEST_LOG_UPDATE` event |
| SavedVariables | Cached step data + user progress | Standard `##SavedVariables` in TOC |

### 2. AI enrichment pipeline (offline / build-time only)

- Feed each quest's Wowhead page (HTML or XML) to **Claude** via the Anthropic API.
- Prompt Claude to output a structured JSON with:
  - Ordered step list (step number, description, action type)
  - Coordinates per step (`mapX`, `mapY` as 0–1 floats, zone/map ID)
  - Natural language hints for tricky steps
- Bundle the resulting JSON as Lua tables inside the addon (e.g. `QuestData.lua`).
- This pipeline runs as a Node.js or Python script in the repo, not inside the game.

### 3. Core engine (Lua, in-game)

- **Quest step resolver**: merges bundled step data with live Blizzard quest state → determines the current active step.
- **Waypoint engine**: converts zone-relative map coords (0–1) to world coordinates usable by the minimap arrow. Use `C_Map.GetPlayerMapPosition` and zone scale factors.

### 4. UI components

| Component | Implementation notes |
|---|---|
| Step tracker frame | `CreateFrame("Frame")` replacing `QuestWatchFrame`. Vertical list of steps, active step highlighted, completed steps struck through. `ScrollFrame` for long quests. |
| Minimap arrow | Rotating texture overlay on the minimap frame. Angle = atan2 of (target - player position vector) minus `GetPlayerFacing()`. Updated every `OnUpdate`. |
| World map pin | `CreateFrame("Button")` placed on `WorldMapFrame` using `C_Map.GetWorldPosFromMapPos`. |
| HUD compass (optional) | Standalone directional arrow frame anchored to screen center-bottom. |

### 5. Event / update loop

Key events to register:

```lua
frame:RegisterEvent("QUEST_LOG_UPDATE")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
frame:SetScript("OnUpdate", function(self, elapsed) ... end) -- for arrow rotation
```

---

## Minimap arrow — key math

```lua
-- Every OnUpdate:
local playerPos = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player")
local targetX, targetY = currentStep.mapX, currentStep.mapY

local dx = targetX - playerPos.x
local dy = targetY - playerPos.y

local angle = math.atan2(dy, dx)          -- vector toward target
local facing = GetPlayerFacing()           -- player's facing in radians
local relativeAngle = angle - facing       -- relative bearing

-- Apply relativeAngle to arrow texture rotation
arrowTexture:SetTexCoord(...)              -- or use a rotation matrix via frame transforms
```

Distance in yards: multiply the map-coordinate distance by the zone's yards-per-unit scale (available via `C_Map` data or hardcoded per zone from community resources).

---

## Coding Conventions

- **Addon namespace**: Use `local ADDON_NAME, NS = ...` to populate via the addon vararg. Expose globally as `Breadcrumb = NS`.
- **Module pattern**: `local Module = {}; NS.ModuleName = Module`
- **Event handling**: Register events via a table `local events = { "EVENT_NAME", ... }` and dispatch through `eventHandlers.EVENT_NAME = function(...) end`.
- **Event bus (pub/sub)**: Modules subscribe in `Initialize()`; Core fires without knowing who listens.
- **Debug logging**: `NS:Debug("message")`
- **Settings access**: `NS.db.settings.settingName` (persisted SavedVariables)
- **Color codes**: Define in a `NS.Colors` table (e.g. `addon`, `success`, `warning`, `error`, `info`, `highlight`).

## TOC File Conventions

```toc
## Interface: 20505
## Title: |cFFRRGGBBAddon Name|r - Description
## Notes: Short description of the addon.
## Author: Author Name
## Version: X.Y.Z
## SavedVariables: AddonNameDB
## SavedVariablesPerCharacter: AddonNameCharDB
## IconTexture: Interface\AddOns\AddonName\media\icon.blp

# https://warcraft.wiki.gg/wiki/Addon_Categories
## Category: Quests
## Category-deDE: Quests
## Category-frFR: Quêtes
```

- Group files in the TOC with comments: `# Core Systems`, `# Features`, `# Interface`.
- Use backslash `\` for directory separators in TOC file paths.

## Versioning

This project follows **Semantic Versioning** (`MAJOR.MINOR.PATCH`):

| Change type | Version bump | Example |
|---|---|---|
| Breaking changes (SavedVariables schema incompatible, removed features) | MAJOR | `1.x.x` → `2.0.0` |
| New features (backwards-compatible) | MINOR | `1.0.x` → `1.1.0` |
| Bug fixes only (no new features) | PATCH | `1.1.x` → `1.1.1` |

### Beta Releases

Beta releases use the semver pre-release suffix: `MAJOR.MINOR.PATCH-beta.N` where `N` starts at 1 and increments for each beta of the same target version.

- The target version (`MAJOR.MINOR.PATCH`) reflects what the final release will be.
- The git tag **must** contain the word `beta` — e.g. `v1.0.0-beta.1`.
- The TOC `## Version:` is set to the full pre-release string (e.g. `1.0.0-beta.1`) so the in-game tooltip shows it is a beta.
- Beta releases get a `CHANGELOG.md` entry at the top using the full version string.
- When the beta graduates to stable, drop the suffix and retag.

## Release Process

### Stable release

Before each stable release, update **all four** of the following in a single commit, then tag:

1. **`CLAUDE.md`** — update to reflect changes in this release
2. **`CHANGELOG.md`** — add a new `## vX.Y.Z` section at the top documenting new features, fixes, and files modified
3. **`README.md`** — update version badge and reflect any new features
4. **`Breadcrumb.toc`** — bump `## Version:`

Then commit and tag:
```
git add CLAUDE.md CHANGELOG.md README.md Breadcrumb.toc
git commit -m "chore: release vX.Y.Z"
git tag -a vX.Y.Z -m "vX.Y.Z"
```

### Beta release

Beta releases only require `CHANGELOG.md` and the TOC file:

1. **`CHANGELOG.md`** — add a new `## vX.Y.Z-beta.N` section at the top
2. **`Breadcrumb.toc`** — set `## Version:` to `X.Y.Z-beta.N`

Then commit and tag:
```
git add CHANGELOG.md Breadcrumb.toc
git commit -m "chore: release vX.Y.Z-beta.N"
git tag -a vX.Y.Z-beta.N -m "vX.Y.Z-beta.N"
```

---

## Recommended libraries

- `LibStub` — library versioning
- `AceAddon-3.0` + `AceEvent-3.0` — addon structure and event handling
- `AceDB-3.0` — SavedVariables with defaults
- `LibDBIcon-1.0` — minimap button/toggle
- **TomTom** (open source, MIT) — reference implementation for waypoint arrow math; study or embed `LibTomTom`

---

## Repo / file structure suggestion

```
Breadcrumb/
├── Breadcrumb.toc              # ##Interface: 20505, ##SavedVariables: BreadcrumbDB
├── Core.lua                    # Addon init, event registration, state management
├── Core/
│   ├── StepResolver.lua        # Merges bundled data + live state
│   └── WaypointEngine.lua      # Coord math, arrow angle
├── UI/
│   ├── TrackerFrame.lua        # Step list UI
│   ├── MinimapArrow.lua        # Rotating arrow overlay
│   └── WorldMapPin.lua         # Map pin
├── Data/
│   └── QuestData.lua           # Bundled step data (output of AI pipeline)
├── media/                      # Textures and icons (.tga, .blp)
│   └── arrow.tga
└── tools/                      # Build-time scripts (not shipped with addon)
    ├── scrape_wowhead.py       # Fetch quest XML from Wowhead
    └── enrich_with_claude.py   # Call Anthropic API, output QuestData.lua
```

---

## Build-time AI enrichment script (sketch)

```python
# tools/enrich_with_claude.py
import anthropic, json, requests

client = anthropic.Anthropic()  # reads ANTHROPIC_API_KEY from env

def fetch_wowhead(quest_id):
    url = f"https://tbc.wowhead.com/quest={quest_id}&xml"
    return requests.get(url).text

def enrich_quest(quest_id, xml):
    message = client.messages.create(
        model="claude-opus-4-6",
        max_tokens=1024,
        messages=[{
            "role": "user",
            "content": f"""You are a WoW TBC quest expert. Given this Wowhead quest XML, 
output a JSON object with:
- id (int)
- name (string)  
- steps: array of {{ stepNum, description, action (kill/collect/talk/travel/interact), 
  mapID, mapX, mapY (0-1 floats or null), hint (optional tip) }}

Quest XML:
{xml}

Output only valid JSON, no markdown."""
        }]
    )
    return json.loads(message.content[0].text)

# Usage: python enrich_with_claude.py 10000 10001 10002 ...
```

---

## Questie integration

Questie is treated as an optional companion addon — not a hard dependency.
Recommended to be installed alongside Breadcrumb for group quest awareness.

Division of responsibility:
- Breadcrumb owns: step-by-step guide, directional arrow, AI-enriched hints
- Questie owns: map objective markers, available quest markers, group/party quest sync

Integration points:
- Use `IsAddOnLoaded("Questie")` to detect presence at runtime
- If Questie is loaded, skip rendering Breadcrumb's world map pins to avoid duplication
- If Questie is loaded, optionally read from `QuestieDB` tables as a coordinate
  source instead of (or to validate) the bundled Wowhead/AI data

---

## Reference Addons

| Addon | Location | What to reference |
|---|---|---|
| **FishingKit** | `d:\Games\World of Warcraft\_anniversary_\Interface\AddOns\FishingKit` | Module pattern, event bus, C_Container shim, UI conventions, state machine design |
| **FishingBuddy** | `d:\Games\World of Warcraft\_anniversary_\Interface\AddOns\FishingBuddy` | Correct TBC Classic API usage (read-only reference, do not modify) |
| **TomTom** | (if installed) | Waypoint arrow math reference |

---

## Next steps / open questions

- [ ] Decide which quest zone to implement first (Hellfire Peninsula is a good starting point — linear progression, well-documented on Wowhead).
- [ ] Determine whether to scrape Wowhead at build time or ship a pre-built `QuestData.lua` in the repo.
- [ ] Investigate `C_Map` availability on TBC Anniversary client — some newer API calls may not exist; `GetCurrentMapAreaID` + `GetPlayerMapPosition` legacy APIs may be needed.
- [ ] Test minimap arrow math using TomTom as a reference baseline.
- [ ] Consider whether to hide `QuestWatchFrame` globally or only when the addon has data for the tracked quest.
