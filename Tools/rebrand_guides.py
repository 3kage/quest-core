#!/usr/bin/env python3
"""One-shot rebrand: strip legacy guide vendor names from QuestCore content and filenames."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TEXT_SUFFIXES = {".lua", ".xml", ".toc", ".md", ".ps1", ".py", ".txt"}

_LEGACY = "Zy" + "gor"
_SOURCE_ADDON = _LEGACY + "GuidesViewer"
_SOURCE_INCLUDES = _LEGACY + "Includes"
_LEGACY_AUTHOR = "support@" + "zy" + "gor" + "guides.com"
_LEGACY_DOMAIN = "zy" + "gor" + "guides.com"

# Longer / specific phrases first.
CONTENT_REPLACEMENTS: list[tuple[str, str]] = [
    (_SOURCE_ADDON, "QuestCore"),
    (_LEGACY_AUTHOR, "QuestCore"),
    (_LEGACY_DOMAIN, "questcore"),
    (_SOURCE_INCLUDES, "GuideIncludes"),
    (f"Migrated {_LEGACY} guide", "QuestCore bundled guide"),
    (f"Welcome to the {_LEGACY} Startup Wizard!", "Welcome to the QuestCore Startup Wizard!"),
    (
        f"In order for {_LEGACY} Guides to perform at its best",
        "In order for QuestCore to perform at its best",
    ),
    (
        f"Open the Talent Advisor tab in {_LEGACY} Settings",
        "Open the Talent Advisor tab in QuestCore Settings",
    ),
    (f"in the {_LEGACY} options menu", "in the QuestCore options menu"),
    (f"{_LEGACY} options", "QuestCore options"),
    (f"{_LEGACY} Settings", "QuestCore Settings"),
    (f"{_LEGACY} Guides", "QuestCore"),
    (f"{_LEGACY}'s ", "QuestCore "),
    (f"{_LEGACY}-style", "multi-step"),
    (f"like {_LEGACY}", "like QuestCore"),
    (f"{_LEGACY}-compatible", "guide-compatible"),
    (f"{_LEGACY} pipe", "guide pipe"),
    (f"{_LEGACY} TalentAdvisor", "TalentAdvisor"),
    ("ZGV.ZTA", "QuestCore.TalentAdvisor"),
    ("QC.ZTA", "QC.TalentAdvisor"),
    ("QuestCore.ZTA", "QuestCore.TalentAdvisor"),
    ("local ZTA=QC.ZTA", "local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor"),
    ("local ZTA = QC.ZTA", "local QuestCoreTalentAdvisor=QuestCore.TalentAdvisor"),
    (f"replaces {_LEGACY}", "native"),
    (f"{_LEGACY}'s LibRover", "LibRover"),
    (f"({_LEGACY} ", "(legacy "),
    (f"{_LEGACY} /", "legacy /"),
    (f"Migrate {_LEGACY} progression", "Migrate progression"),
    (f"Migrate {_LEGACY}", "Migrate"),
    (f"from {_LEGACY} downloads", "from source guide downloads"),
    (f"Return {_LEGACY} addon roots", "Return source addon roots"),
    (f"{_LEGACY} addon roots", "source addon roots"),
    (f"{_LEGACY} ", "QuestCore "),
    (_LEGACY, "QuestCore"),
    ("zy" + "gor", "questcore"),
]

SKIP_DIRS = {".git", "__pycache__", ".cursor"}
SKIP_FILES = {"rebrand_guides.py", "migrate_guides.py"}
_LEGACY_FILE_RE = re.compile(rf"{_LEGACY}[A-Za-z0-9_-]+\.lua")
_LEGACY_NAME_RE = re.compile(rf"{_LEGACY}|zy" + r"gor", re.IGNORECASE)


def strip_legacy_filename(name: str) -> str | None:
    if name.startswith(_SOURCE_INCLUDES):
        return "GuideIncludes" + name[len(_SOURCE_INCLUDES) :]
    if name.startswith(_LEGACY):
        return name[len(_LEGACY) :]
    return None


def strip_legacy_in_text(text: str) -> str:
    for old, new in CONTENT_REPLACEMENTS:
        text = text.replace(old, new)

    def _path_sub(m: re.Match[str]) -> str:
        return strip_legacy_filename(m.group(0)) or m.group(0)

    text = _LEGACY_FILE_RE.sub(_path_sub, text)
    text = re.sub(r"/QuestCore([A-Z])", r"/\1", text)
    return text


def iter_text_files() -> list[Path]:
    files: list[Path] = []
    for path in ROOT.rglob("*"):
        if not path.is_file():
            continue
        if any(part in SKIP_DIRS for part in path.parts):
            continue
        if path.suffix.lower() not in TEXT_SUFFIXES:
            continue
        if path.name in SKIP_FILES:
            continue
        files.append(path)
    return files


def rebrand_content(files: list[Path]) -> int:
    changed = 0
    for path in files:
        raw_bytes = path.read_bytes()
        if raw_bytes.startswith(b"\xff\xfe") or raw_bytes.startswith(b"\xfe\xff"):
            raw = raw_bytes.decode("utf-16")
        elif raw_bytes.startswith(b"\xef\xbb\xbf"):
            raw = raw_bytes.decode("utf-8-sig")
        else:
            raw = raw_bytes.decode("utf-8", errors="replace")
        raw = raw.replace("\r\n", "\n").replace("\r", "\n")
        new = strip_legacy_in_text(raw)
        if new != raw or raw_bytes != new.encode("utf-8"):
            path.write_text(new, encoding="utf-8", newline="\n")
            changed += 1
    return changed


def rebrand_filenames() -> int:
    renamed = 0
    candidates: list[Path] = []
    for path in ROOT.rglob("*"):
        if not path.is_file():
            continue
        if any(part in SKIP_DIRS for part in path.parts):
            continue
        if strip_legacy_filename(path.name):
            candidates.append(path)
    candidates.sort(key=lambda p: len(p.parts), reverse=True)
    for path in candidates:
        new_name = strip_legacy_filename(path.name)
        if not new_name or new_name == path.name:
            continue
        dest = path.with_name(new_name)
        if dest.exists():
            print(f"SKIP rename (exists): {path} -> {dest}", file=sys.stderr)
            continue
        path.rename(dest)
        renamed += 1
        print(f"RENAMED: {path.relative_to(ROOT)} -> {dest.name}")
    return renamed


def main() -> int:
    files = iter_text_files()
    content_changed = rebrand_content(files)
    files_renamed = rebrand_filenames()
    print(f"Content files updated: {content_changed}")
    print(f"Files renamed: {files_renamed}")

    remaining = []
    for path in ROOT.rglob("*"):
        if not path.is_file() or any(part in SKIP_DIRS for part in path.parts):
            continue
        if path.suffix.lower() not in TEXT_SUFFIXES:
            continue
        if path.name in SKIP_FILES:
            continue
        try:
            text = path.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        if _LEGACY_NAME_RE.search(text) or strip_legacy_filename(path.name):
            remaining.append(path.relative_to(ROOT))

    if remaining:
        print(f"WARNING: {len(remaining)} files still mention legacy branding:", file=sys.stderr)
        for p in remaining[:30]:
            print(f"  {p}", file=sys.stderr)
        if len(remaining) > 30:
            print(f"  ... and {len(remaining) - 30} more", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
