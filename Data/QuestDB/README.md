# QuestCore QuestDB

Bundled quest objective spawn data used for map and minimap pins. Licensed under **GNU General Public License v3.0** (GPL-3.0) where applicable to third-party database content.

QuestCore loads this data at login. No external quest helper addon is required at runtime.

## Contents

| Path | Description |
|------|-------------|
| `Classic/` | Quest, NPC, object, and item tables (Classic Era) |
| `Zones/` | Zone ID mapping (`areaIdToUiMapId`, `subZoneToParentZone`) |

## Re-sync database files

From PowerShell (adjust WoW install paths if needed):

```powershell
.\scripts\Import-QuestDB.ps1
```

Optional: pass `-SourcePath` to a folder that contains `Database/Classic/` and `Database/Zones/data/`.

After updating, `/reload` in game. QuestCore prints `Quest objective database ready.` when parsing finishes.

## Attribution

When distributing QuestCore, retain this notice and any GPL license files shipped with the database content.
