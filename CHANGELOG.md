# Breadcrumb - Changelog

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
- **Wowhead popup** — click icon to copy quest URL for quick lookup
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
