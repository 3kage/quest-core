#!/usr/bin/env python3
"""Normalize guide/source text files to UTF-8 (no BOM) with LF line endings."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GUIDE_ROOT = ROOT / "Guides"
TEXT_SUFFIXES = {".lua", ".xml", ".txt", ".md"}
SKIP_DIRS = {"Libs", ".git", "node_modules"}


def read_normalized(path: Path) -> str:
    raw = path.read_bytes()
    if raw.startswith(b"\xff\xfe") or raw.startswith(b"\xfe\xff"):
        text = raw.decode("utf-16")
    elif raw.startswith(b"\xef\xbb\xbf"):
        text = raw.decode("utf-8-sig")
    else:
        text = raw.decode("utf-8", errors="strict")
    return text.replace("\r\n", "\n").replace("\r", "\n")


def write_normalized(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8", newline="\n")


def iter_files() -> list[Path]:
    out: list[Path] = []
    for path in GUIDE_ROOT.rglob("*"):
        if not path.is_file():
            continue
        if any(part in SKIP_DIRS for part in path.parts):
            continue
        if path.suffix.lower() not in TEXT_SUFFIXES:
            continue
        out.append(path)
    return out


def main() -> int:
    changed = 0
    errors = 0
    for path in iter_files():
        try:
            text = read_normalized(path)
            raw = path.read_bytes()
            needs_write = (
                raw.startswith(b"\xff\xfe")
                or raw.startswith(b"\xfe\xff")
                or raw.startswith(b"\xef\xbb\xbf")
                or b"\r" in raw
            )
            if needs_write:
                write_normalized(path, text)
                changed += 1
                print(f"normalized: {path.relative_to(ROOT)}")
        except Exception as exc:  # noqa: BLE001
            errors += 1
            print(f"ERROR {path}: {exc}", file=sys.stderr)
    print(f"Done. {changed} file(s) normalized, {errors} error(s).")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
