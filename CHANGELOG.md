# QuestCore — Changelog / Журнал змін

> **Version 3.0.1** — Parser `only` conditions / Умови `only` у парсері — **2026-06-16**  
> **Version 3.0** — Initial release / Початковий реліз

This document describes changes to QuestCore. Each entry is provided in **English**
and **Ukrainian (Українською)**.

Цей документ описує зміни в QuestCore. Кожен пункт наведено **англійською** та
**українською** мовами.

---

## Version 3.0.1 — 2026-06-16 / Версія 3.0.1

| # | Area / Модуль | Severity / Критичність | File(s) / Файли |
|---|---------------|------------------------|-----------------|
| 1 | Parser / `only` conditions | High / Висока | `Core/Parser.lua` |

### 1. Race/class `only if` filters no longer throw parse errors  
**EN:** Guide lines such as `|only if NightElf Warrior` or standalone `only NightElf Druid`
were compiled as raw Lua (`return NightElf Warrior`), which is invalid syntax. The parser
now tries a Lua expression first; if compilation fails, it falls back to race/class
filtering (`MakeOnlyFilter`). Standalone `only` lines at the end of a step correctly
apply visibility to the previous goal.

**UA:** Рядки гайдів на кшталт `|only if NightElf Warrior` або окремі `only NightElf Druid`
компілювалися як звичайний Lua (`return NightElf Warrior`), що є невалідним синтаксисом.
Парсер спочатку намагається інтерпретувати вираз як Lua; якщо компіляція не вдається —
використовується фільтр раси/класу (`MakeOnlyFilter`). Окремі рядки `only` в кінці кроку
коректно застосовують видимість до попередньої цілі.

---

## Version 3.0 — Initial / Версія 3.0

**EN:** Quest leveling guide engine with bundled step-based guide library (Retail,
Classic Era, TBC, Cata, Mists).

**UA:** Рушій квестових гайдів зі вбудованою покроковою бібліотекою гайдів (Retail,
Classic Era, TBC, Cata, Mists).
