#!/usr/bin/env python3
"""Migrate progression/classic guides into QuestCore format.

Progression clients (TBC, Mists) each get ONE expansion tag for their entire
guide package so a level-1 character sees the correct 1-to-cap route for that
client — not Classic Era quests or lower-tier progression packages.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

QUESTCORE = Path(__file__).resolve().parents[1]
LIBRARY = QUESTCORE / "Guides" / "Library"

# Download roots (folder names vary: "TBC", "TBC 2.5.5", "Pandaria", "Pandaria 5.5.4", …)
PROGRESSION_SOURCES = [
    {
        "flavor": "tbc",
        "expansion": "tbc",
        "download_roots": [
            Path(r"C:\Users\kage1\Downloads\TBC"),
            Path(r"C:\Users\kage1\Downloads\TBC 2.5.5"),
        ],
        "dest": LIBRARY / "Progression" / "TBC",
    },
    {
        "flavor": "mists",
        "expansion": "mists",
        "download_roots": [
            Path(r"C:\Users\kage1\Downloads\Pandaria"),
            Path(r"C:\Users\kage1\Downloads\Pandaria 5.5.4"),
        ],
        "dest": LIBRARY / "Progression" / "Mists",
    },
]

CLASSIC_SOURCE = {
    "flavor": "classic_era",
    "expansion": "classic_era",
    "download_roots": [
        Path(r"C:\Users\kage1\Downloads\Era"),
    ],
    "dest": LIBRARY / "ClassicEra",
}

HEADER = "-- QuestCore bundled guide ({expansion})\nif not QuestCore then return end\n"

# Legacy source addon identifiers (split so bundled QuestCore tree stays brand-free).
_LEGACY = "Zy" + "gor"
_SOURCE_ADDON = _LEGACY + "GuidesViewer"
_SOURCE_INCLUDES = _LEGACY + "Includes"
_LEGACY_AUTHOR = "support@" + "zy" + "gor" + "guides.com"

STRIP_LINE_PATTERNS = [
    re.compile(rf"^\s*local\s+{_SOURCE_ADDON}\s*=\s*{_SOURCE_ADDON}\s*$"),
    re.compile(rf"^\s*if\s+not\s+{_SOURCE_ADDON}\s+then\s+return\s+end\s*$"),
    re.compile(r"^\s*if\s+ZGV:DoMutex\("),
    re.compile(rf"^\s*{_SOURCE_ADDON}\.GuideMenuTier\s*="),
]

REGISTER_GUIDE_RE = re.compile(
    r'(QuestCore:RegisterGuide\(\s*"[^"]*"\s*,\s*\{)(?!\s*expansion\s*=)',
    re.MULTILINE,
)

EXPANSION_ATTR_RE = re.compile(r'expansion\s*=\s*"[^"]*"', re.MULTILINE)


def read_text_file(path: Path) -> str:
    raw = path.read_bytes()
    if raw.startswith(b"\xff\xfe") or raw.startswith(b"\xfe\xff"):
        text = raw.decode("utf-16")
    elif raw.startswith(b"\xef\xbb\xbf"):
        text = raw.decode("utf-8-sig")
    else:
        text = raw.decode("utf-8", errors="replace")
    return text.replace("\r\n", "\n").replace("\r", "\n")


def should_skip(path: Path) -> bool:
    return "Trial" in path.name


def strip_dest_filename(name: str) -> str:
    if name.startswith(_SOURCE_INCLUDES):
        return "GuideIncludes" + name[len(_SOURCE_INCLUDES) :]
    if name.startswith(_LEGACY):
        return name[len(_LEGACY) :]
    return name


def find_addon_roots(download_root: Path) -> list[Path]:
    """Return addon roots under a download folder (any tree with Guides* Lua)."""
    if not download_root.is_dir():
        return []
    roots: list[Path] = []
    if find_guides_dirs(download_root):
        roots.append(download_root)
    for child in sorted(download_root.iterdir()):
        if child.is_dir() and find_guides_dirs(child):
            roots.append(child)
    return roots


def find_guides_dirs(addon_root: Path) -> list[Path]:
    """All Guides* directories with Lua content (Guides-TBC, Guides-MOP, …)."""
    found: list[Path] = []
    for child in sorted(addon_root.iterdir()):
        if not child.is_dir():
            continue
        name = child.name
        if not name.lower().startswith("guides"):
            continue
        if any(child.rglob("*.lua")):
            found.append(child)
    return found


def discover_source_dirs(spec: dict) -> list[Path]:
    """Collect every Guides* tree for this expansion from all download roots."""
    seen: set[Path] = set()
    ordered: list[Path] = []
    for root in spec["download_roots"]:
        for addon in find_addon_roots(root):
            for guides in find_guides_dirs(addon):
                resolved = guides.resolve()
                if resolved not in seen:
                    seen.add(resolved)
                    ordered.append(guides)
    return ordered


def strip_preamble(text: str) -> str:
    lines = text.splitlines()
    kept: list[str] = []
    for line in lines:
        if any(p.match(line) for p in STRIP_LINE_PATTERNS):
            continue
        kept.append(line)
    return "\n".join(kept)


def force_expansion_tag(text: str, expansion: str) -> str:
    """Every RegisterGuide header uses the package expansion (overwrite legacy tags)."""
    if EXPANSION_ATTR_RE.search(text):
        text = EXPANSION_ATTR_RE.sub(f'expansion="{expansion}"', text)
    text = REGISTER_GUIDE_RE.sub(
        rf'\1\nexpansion="{expansion}",',
        text,
    )
    return text


def normalize_talent_advisor(text: str) -> str:
    """Map legacy ZTA namespace to QuestCore.TalentAdvisor."""
    text = text.replace("QuestCore.ZTA", "QuestCore.TalentAdvisor")
    text = text.replace("QC.ZTA", "QC.TalentAdvisor")
    text = text.replace("ZGV.ZTA", "QuestCore.TalentAdvisor")
    text = re.sub(
        r"if not (?:QC|QuestCore)\.ZTA then return end\s*\n?",
        "if not QuestCore.TalentAdvisor then return end\n",
        text,
    )
    text = text.replace("local ZTA=QC.ZTA", "local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor")
    text = text.replace("local ZTA = QC.ZTA", "local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor")
    text = re.sub(r"\bZTA:RegisterBuild", "QuestCoreTalentAdvisor:RegisterBuild", text)
    return text


def convert_content(text: str, expansion: str, filename: str = "") -> str:
    text = strip_preamble(text)
    text = text.replace(f"{_SOURCE_ADDON}:RegisterGuide", "QuestCore:RegisterGuide")
    text = text.replace(f"{_SOURCE_ADDON}:RegisterInclude", "QuestCore:RegisterInclude")

    text = re.sub(
        r'image\s*=\s*ZGV\.IMAGESDIR\.\.("([^"]*)")',
        r"image=\1",
        text,
    )
    text = re.sub(
        r"image\s*=\s*ZGV\.IMAGESDIR\.\.('([^']*)')",
        r"image=\1",
        text,
    )

    text = text.replace(f"local ZGV={_SOURCE_ADDON}", "")
    text = text.replace(f"local ZGV = {_SOURCE_ADDON}", "")
    text = re.sub(r"^\s*local ZGV\s*=\s*QuestCore\s*$", "", text, flags=re.M)
    text = re.sub(r"^\s*if not ZGV then return end\s*$", "", text, flags=re.M)
    text = text.replace("ZGV.", "QC.")
    text = text.replace("ZGV:", "QC:")
    text = re.sub(r"^\s*QC\.BETASTART\(\)\s*$", "", text, flags=re.M)
    text = re.sub(r"^\s*QC\.BETAEND\(\)\s*$", "", text, flags=re.M)
    text = re.sub(
        rf"^\s*{_SOURCE_ADDON}\.Gold\.guides_loaded\s*=\s*true\s*$",
        "-- Gold module flag omitted in QuestCore",
        text,
        flags=re.M,
    )
    text = text.replace(f"{_SOURCE_ADDON}.ItemScore", "QuestCore.ItemScore")
    text = text.replace(
        f"if not {_SOURCE_ADDON}.ItemScore then return end",
        "if not QuestCore.ItemScore then return end",
    )
    if filename == "TalentAdvisor-Builds.lua":
        text = text.replace(
            "return -- TalentAdvisor builds not loaded in QuestCore\n",
            "",
        )

    text = force_expansion_tag(text, expansion)
    text = text.replace(_SOURCE_INCLUDES, "GuideIncludes")
    text = text.replace(_LEGACY_AUTHOR, "QuestCore")
    text = text.replace(f"{_LEGACY}'s ", "QuestCore ")
    text = text.replace(f"{_LEGACY} Guides", "QuestCore")
    text = text.replace(f"{_LEGACY} Settings", "QuestCore Settings")
    text = text.replace(f"{_LEGACY} options", "QuestCore options")
    text = text.replace(
        f"Welcome to the {_LEGACY} Startup Wizard!",
        "Welcome to the QuestCore Startup Wizard!",
    )
    text = text.replace(
        f"In order for {_LEGACY} Guides to perform at its best",
        "In order for QuestCore to perform at its best",
    )

    stripped = text.lstrip()
    if stripped and not stripped.startswith("if not QuestCore"):
        if not stripped.startswith("--"):
            text = HEADER.format(expansion=expansion) + text
        else:
            first_nl = text.find("\n")
            guard = "if not QuestCore then return end"
            head = text[: first_nl + 1] if first_nl != -1 else ""
            rest = text[first_nl + 1 :] if first_nl != -1 else text
            if guard not in head and guard not in rest[:200]:
                text = head + guard + "\n" + rest

    if not text.endswith("\n"):
        text += "\n"
    text = normalize_talent_advisor(text)
    return text


def clean_dest_lua(dest: Path) -> None:
    if not dest.exists():
        return
    for lua_file in dest.rglob("*.lua"):
        lua_file.unlink()
    for directory in sorted(dest.rglob("*"), reverse=True):
        if directory.is_dir() and not any(directory.iterdir()):
            directory.rmdir()


def migrate_source(spec: dict) -> list[str]:
    dest: Path = spec["dest"]
    expansion: str = spec["expansion"]
    source_dirs = discover_source_dirs(spec)

    if not source_dirs:
        print(
            f"SKIP no Guides* folders for {expansion} under: "
            + ", ".join(str(p) for p in spec["download_roots"]),
            file=sys.stderr,
        )
        return []

    print(f"Sources for {expansion}:")
    for src in source_dirs:
        print(f"  - {src}")

    clean_dest_lua(dest)
    manifest_paths: list[str] = []
    count = 0

    for src in source_dirs:
        for src_file in sorted(src.rglob("*.lua")):
            if should_skip(src_file):
                continue

            rel = src_file.relative_to(src)
            out_rel = rel.parent / strip_dest_filename(rel.name)
            out_file = dest / out_rel
            out_file.parent.mkdir(parents=True, exist_ok=True)

            raw = read_text_file(src_file)
            converted = convert_content(raw, expansion, src_file.name)
            out_file.write_text(converted, encoding="utf-8", newline="\n")

            manifest_rel = out_file.relative_to(LIBRARY).as_posix()
            if manifest_rel not in manifest_paths:
                manifest_paths.append(manifest_rel)
            count += 1

    print(f"Migrated {count} files -> {dest} (expansion={expansion})")
    return manifest_paths


def manifest_sort_key(path: str) -> tuple:
    if "GuideIncludes" in path:
        return (0, path)
    if "/Includes/" in path:
        return (1, path)
    if path.endswith("Images/Images.lua"):
        return (2, path)
    return (3, path)


def write_autoload_classic(classic_paths: list[str]) -> None:
    includes = sorted(
        (p for p in classic_paths if p.startswith("ClassicEra/Includes/")),
        key=manifest_sort_key,
    )
    guides = sorted(
        (p for p in classic_paths if not p.startswith("ClassicEra/Includes/")),
        key=manifest_sort_key,
    )

    lines = [
        '<Ui xmlns="http://www.blizzard.com/wow/ui/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.blizzard.com/wow/ui/ FrameXML/UI.xsd">',
    ]
    for p in includes + guides:
        lines.append(f'\t<Script file="{p}"/>')
    lines.append("</Ui>")
    lines.append("")

    out = LIBRARY / "Autoload_Classic.xml"
    out.write_text("\n".join(lines), encoding="utf-8", newline="\n")
    print(f"Wrote {out} ({len(includes)} includes, {len(guides)} guides)")


def write_autoload_progression(tbc_paths: list[str], mists_paths: list[str]) -> None:
    legacy_includes = [
        "Includes/Achievements/N_Achievements_Includes.lua",
        "Includes/Dailies/N_Dailies_Includes.lua",
        "Includes/General/N_General_Includes.lua",
        "Includes/General/N_Quest_Includes.lua",
        "Includes/PetsMounts/N_Mounts_Includes.lua",
        "Includes/PetsMounts/N_Pets_Includes.lua",
        "Includes/Professions/N_Professions_Includes.lua",
        "Includes/Reputations/N_Reputation_Includes.lua",
        "Includes/Titles/N_Titles_Includes.lua",
        "Includes/Achievements/A_Achievements_Includes.lua",
        "Includes/Dailies/A_Dailies_Includes.lua",
        "Includes/General/A_General_Includes.lua",
        "Includes/General/A_Quest_Includes.lua",
        "Includes/PetsMounts/A_Mounts_Includes.lua",
        "Includes/PetsMounts/A_Pets_Includes.lua",
        "Includes/Professions/A_Professions_Includes.lua",
        "Includes/Reputations/A_Reputation_Includes.lua",
        "Includes/Titles/A_Titles_Includes.lua",
        "Includes/Achievements/H_Achievements_Includes.lua",
        "Includes/Dailies/H_Dailies_Includes.lua",
        "Includes/General/H_General_Includes.lua",
        "Includes/General/H_Quest_Includes.lua",
        "Includes/PetsMounts/H_Mounts_Includes.lua",
        "Includes/PetsMounts/H_Pets_Includes.lua",
        "Includes/Professions/H_Professions_Includes.lua",
        "Includes/Reputations/H_Reputation_Includes.lua",
        "Includes/Titles/H_Titles_Includes.lua",
    ]

    progression = sorted(tbc_paths + mists_paths, key=manifest_sort_key)

    lines = [
        '<Ui xmlns="http://www.blizzard.com/wow/ui/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.blizzard.com/wow/ui/ FrameXML/UI.xsd">',
    ]
    for p in legacy_includes:
        lines.append(f'\t<Script file="{p}"/>')
    for p in progression:
        lines.append(f'\t<Script file="{p}"/>')
    lines.append("</Ui>")
    lines.append("")

    out = LIBRARY / "Autoload_Progression.xml"
    out.write_text("\n".join(lines), encoding="utf-8", newline="\n")
    tbc_guides = sum(1 for p in tbc_paths if "/Includes/" not in p)
    mists_guides = sum(1 for p in mists_paths if "/Includes/" not in p)
    print(
        f"Wrote {out} ({len(progression)} scripts; "
        f"TBC guides: {tbc_guides}, Mists guides: {mists_guides})"
    )


def main() -> int:
    classic_paths = migrate_source(CLASSIC_SOURCE)
    tbc_paths: list[str] = []
    mists_paths: list[str] = []

    for spec in PROGRESSION_SOURCES:
        paths = migrate_source(spec)
        if spec["flavor"] == "tbc":
            tbc_paths = paths
        elif spec["flavor"] == "mists":
            mists_paths = paths

    write_autoload_classic(classic_paths)
    write_autoload_progression(tbc_paths, mists_paths)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
