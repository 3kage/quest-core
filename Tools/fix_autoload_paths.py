#!/usr/bin/env python3
"""Strip erroneous QuestCore prefix from guide paths in autoload XML manifests."""

from __future__ import annotations

import re
import sys
from pathlib import Path

LIBRARY = Path(__file__).resolve().parents[1] / "Guides" / "Library"
FIX_RE = re.compile(r"/QuestCore([A-Z])")


def fix_manifest(path: Path) -> int:
    text = path.read_text(encoding="utf-8")
    fixed = FIX_RE.sub(r"/\1", text)
    if fixed == text:
        return 0
    path.write_text(fixed, encoding="utf-8", newline="\n")
    return len(FIX_RE.findall(text))


def validate(path: Path) -> list[str]:
    text = path.read_text(encoding="utf-8")
    missing: list[str] = []
    for m in re.finditer(r'file="([^"]+\.lua)"', text):
        rel = m.group(1)
        if not (LIBRARY / rel).is_file():
            missing.append(rel)
    return missing


def main() -> int:
    total = 0
    for name in ("Autoload_Classic.xml", "Autoload_Progression.xml"):
        path = LIBRARY / name
        if not path.is_file():
            print(f"SKIP missing {path}", file=sys.stderr)
            continue
        n = fix_manifest(path)
        total += n
        missing = validate(path)
        print(f"{name}: fixed {n} paths, missing files: {len(missing)}")
        for p in missing[:15]:
            print(f"  MISSING: {p}")
        if len(missing) > 15:
            print(f"  ... and {len(missing) - 15} more")
    return 1 if total == 0 else 0


if __name__ == "__main__":
    raise SystemExit(main())
