# QuestCore

WoW quest leveling guide engine with community guide/quest **data pack** on GitHub.

## Install (players)

1. **Engine** — install **QuestCore** from [CurseForge](https://www.curseforge.com/) (UI, navigation, settings).
2. **Guide database** — pick one:
   - **Auto-updater (recommended):** download [`QuestCore-Updater.zip`](https://github.com/3kage/quest-core/releases/latest/download/QuestCore-Updater.zip), unzip, run `Run Updater.bat` or `Run Updater (Background).bat` for tray mode.
   - **Manual:** download `QuestCore_Data_*` zip from [Releases](https://github.com/3kage/quest-core/releases) into `World of Warcraft\_<flavor>\Interface\AddOns\`.
3. `/reload` in game — `/qc menu` to pick a guide.

In game: `/qc datapack` shows download links if the data pack is missing.

## Updates

| Component | Source |
|-----------|--------|
| Engine (code, UI) | CurseForge / addon client |
| Guides + QuestDB | GitHub Releases or QuestCore Updater |

## Release (maintainers)

```powershell
# Local build (creates dist/*.zip)
.\scripts\Publish-DataRelease.ps1 -Version 3.0.1

# GitHub Release (CI builds on tag push)
git tag v3.0.1
git push origin v3.0.1
```

CurseForge: ship **engine only** (`QuestCore_Engine*.toc`, no bundled `Guides/`).

## License

See [LICENSE](LICENSE).
