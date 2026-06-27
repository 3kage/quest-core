# QuestCore in-game smoke tests

Manual checklist to verify QuestCore after engine/travel updates (v2.9+).
Run the offline static scans first:

```powershell
powershell -File Tools\Verify-NoZGV.ps1
powershell -File Tools\Audit-GuideCompatibility.ps1
```

In-game: `/qc audit` prints the same paths.

---

## A. Engine smoke tests

Use one Alliance and one Horde character on Retail.

### A1. `|or` fork — StartersAlliance

1. Load guide: **Leveling → Starters (Alliance)** (`StartersAlliance`).
2. Progress to Chromie Time / Outland fork steps with multiple `accept … |or` lines.
3. **Pass:** step completes after accepting **one** of the OR quests (no `/qc next` needed).
4. **Fail:** step stays incomplete until all OR quests are accepted.

### A2. Allied race / scenario intro

1. Load an allied-race intro guide with `scenariogoal` steps (e.g. Dark Iron Dwarf in StartersAlliance).
2. Run the scenario normally.
3. **Pass:** steps with `scenariogoal` auto-complete when the scenario objective is done.
4. **Fail:** steps never advance or show only passive text.

### A3. Profession guide — Legion

1. Load **Professions → Horde → Legion** (`ProfessionsHordeLEGION`) on a character with a Legion profession.
2. Open guide menu **Suggested** — profession sections should appear when `skill()` matches.
3. Pick a `skillmax` / `skill` step and craft or train.
4. **Pass:** header suggestion works; skill steps complete when skill level is met.
5. **Fail:** guide never suggested; skill steps stuck.

### A4. `loadguide` / `|next "Guide\Path"`

1. Find a step: `Load … Guide |confirm |next` or `loadguide` goal.
2. Click **Confirm** on the step.
3. **Pass:** guide switches to the named path.
4. **Fail:** text only, no guide change.

### A5. `|noautoaccept` and `|notravel`

1. On a step tagged `|noautoaccept`, stand at the quest giver.
2. **Pass:** QuestCore does **not** auto-accept.
3. On a step tagged `|notravel`, complete the objective.
4. **Pass:** arrow does **not** point at distant travel coords (or auto-route is suppressed).

---

## B. Travel smoke tests

Enable **Routes → Auto-route on step change** in QuestCore options (default on in v2.9).

### B1. Cross-continent route

1. On a character far from the current step goal (different continent), note QuestCore arrow hops.
2. Run `/qc route` and compare with QuestCore arrow on the same step.
3. **Pass:** chat shows multi-hop chain (fly → portal → …); arrow points at **first** hop; trail shows hops on map.
4. **Fail:** only straight line to goal or “No travel route yet” with seeded data loaded.

### B2. Hearth bind position

1. Set hearth at a known inn (e.g. Stormwind Trade District).
2. Trigger a route that uses hearth (or `/qc route` from remote zone).
3. **Pass:** hearth hop names the inn; arrow after hearth targets real inn area (not zone center).
4. **Fail:** hearth always lands at `(0.5, 0.5)` zone center.

### B3. Teleport item (optional)

1. On a character with Kirin Tor ring / similar item in `data_items.lua`.
2. `/qc route` to a distant goal.
3. **Pass:** route may include “Use teleport” hop if cheaper than FP chain.

### B4. Hop advance on arrival

1. Start a multi-hop route; fly or portal to the **first** hop destination.
2. **Pass:** arrow advances to the next hop without `/qc route` or step change.
3. **Fail:** arrow stays on completed hop.

### B5. Portal learning

1. Use a portal manually (continent change).
2. Change subzones (`ZONE_CHANGED`) and use another portal.
3. **Pass:** “learned a travel link” may appear in chat; `/qc routestats` connection count increases.

### B6. Phased portal (known limitation)

1. Old Darnassus / phased hub step with `QC.InPhase` in bundled transit data.
2. **Note:** QuestCore uses a permissive `QC.InPhase` stub — extra portals may appear vs QuestCore. Log as expected gap until phase DB exists.

---

## C. Quick slash commands

| Command | Expected |
|---------|----------|
| `/qc route` | Print hop chain + update arrow |
| `/qc routestats` | Points and edges > 0 after seed load |
| `/qc audit` | Points to static script + this file |
| `/qc next` / `/qc prev` | Step navigation still works |

---

## Reporting failures

Include: guide file, step number, faction, level, `/qc routestats` output, and whether QuestCore agrees on the same step.
