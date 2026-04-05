# Breadcrumb - Changelog

## v0.2.0

### Features

- **Scrollable tracker** — fixed top edge with resizable height
- **Proximity auto-advance** — travel and talk steps auto-complete when player reaches destination
- **Shift-click quest linking** — shift-click a quest to link it into chat (opens quest log when chat is closed)
- **ItemBar improvements** — updates on login, properly hides/shows with tracker minimize

### Quest Data

- **Netherstorm** (mapID 1953): expanded to 162 quests (was 8)
- **Blade's Edge Mountains** (mapID 1949): expanded to 155 quests (was 1)

### Fixes

- Resolved all 0,0 coordinate steps across quest data
- Removed 54 redundant pre-turnin steps and 13 accept-like first steps
- Fixed quest expand/collapse toggle and auto-expand on chain advance
- Fixed useItem data: removed 10 hallucinated values, corrected 2 item IDs, added 9 missing
- Fixed cross-zone mapIDs (Ishanah's Help, Torching Sunfury Hold)
- Travel steps no longer carry objective index (prevents false completion)
- Selected quest stays expanded on login and quest log updates

---

## v0.1.0

### Initial Prototype

- **Multi-quest tracker** — automatically tracks all quests in log with Breadcrumb data
- **Zone grouping** — quests grouped by zone with collapsible headers (click `-`/`+`)
- **Expand/collapse quests** — click a quest to see all steps, click again to collapse
- **Quest selection** — clicked quest drives the HUD arrow; selection persisted across reload/logout
- **Step resolution** — active step determined from live quest log (kill/collect progress, completion state)
- **HUD directional arrow** — TomTom-style spritesheet arrow pointing to active step, color-coded by direction accuracy, distance in yards
- **Cross-zone support** — per-step `mapID` override for objectives in different zones; "Travel to: Zone Name" hint when player is in wrong zone
- **Quest chain auto-advance** — turning in a chain quest auto-selects the next quest
- **Item bar** — standalone clickable quest item button (SecureActionButtonTemplate) for quests with usable items
- **Quest lookup popup** — click icon to copy quest URL for quick reference
- **Group quest indicator** — `[N]` shown after quest name
- **Minimap button** — left-click toggle tracker, right-click toggle arrow, draggable
- **Minimize** — collapse tracker to title bar, hides arrow
- **Syling Tracker-inspired UI** — dark backdrop, colored square indicators, gold quest names
- **Debug/status commands** — `/bc status` shows full tracking state, mapID, coords

### Quest Data

- **Netherstorm** (mapID 1953): Celestial Ridge chain (6 quests), Violet Tower chain (1 quest), Manaforge Coruu (1 quest)
- **Blade's Edge Mountains** (mapID 1949): Ogri'la/Mog'dorg chain (1 quest)

### Files

- `Core.lua` — addon framework, event bus, slash commands
- `Core/StepResolver.lua` — multi-quest tracking, chain advance
- `UI/TrackerFrame.lua` — quest list with zone grouping
- `UI/HudArrow.lua` — directional arrow with zone hint
- `UI/ItemBar.lua` — secure quest item button
- `UI/MinimapButton.lua` — minimap icon
- `Data/QuestData.lua` — quest registry
- `Data/Zones/Netherstorm.lua` — 8 quests
- `Data/Zones/BladesEdgeMountains.lua` — 1 quest
