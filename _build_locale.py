#!/usr/bin/env python3
"""Generate QuestCore/Core/Locale.lua with full translations."""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).parent
LOCALE_PATH = ROOT / "Core" / "Locale.lua"
VALUES_PATH = ROOT / "_locale_values.json"

SECTION_COMMENTS = {
    "ukUA": "Українська (ukUA)",
    "ruRU": "Русский (ruRU)",
    "deDE": "Deutsch (deDE)",
    "frFR": "Français (frFR)",
    "esES": "Español (esES)",
    "ptBR": "Português (ptBR)",
    "itIT": "Italiano (itIT)",
    "koKR": "한국어 (koKR)",
    "zhCN": "简体中文 (zhCN)",
    "zhTW": "繁體中文 (zhTW)",
    "plPL": "Polski (plPL)",
    "trTR": "Türkçe (trTR)",
    "nlNL": "Nederlands (nlNL)",
    "huHU": "Magyar (huHU)",
    "svSE": "Svenska (svSE)",
}

_WBU = "\u2022"  # WoW bullet in drag hint key
_WEM = "\u2014"  # WoW em dash in guide-complete key

KEYS_ORDER = [
    "Guide Window", "Waypoint Arrow", "Map & Minimap", "Colors",
    "Guide goals", "Completed goal", "Active goal", "Passive goal",
    "Progress bars", "XP bar", "Guide progress bar", "Map pins",
    "Active waypoint pin", "Route waypoint pin", "Treasures & rares",
    "Treasure pin", "Rare mob pin", "Window", "Window border",
    "Reset goal colors", "Reset bar colors", "Reset pin colors",
    "Reset POI colors", "Reset window colors", "Reset color", "Reset", "Pick color",
    "General", "Profiles", "Language", "Startup Wizard",
    "Faction", "Zone preference", "Play style", "Speedrun", "Dungeon", "Casual",
    "Auto (recommended)", "Wizard hint", "Start guide", "Guide activated. Good luck!",
    "Talent point available — /qc talents", "Talent build", "No talent builds",
    "Talent hint classic", "Talent hint retail", "Talent hint generic",
    "AH autoscript scan", "AH autoscript buy",
    "Auto Quest Acceptance & Turn-In", "Auto Quest tooltip",
    "Lock window (no drag or resize)", "Show main log window", "Show step tracker",
    "Step tracker shown", "Step tracker hidden", "Continue",
    "Main log shown", "Main log hidden",
    "Hide window border", "Show step counter in title", "Hide completed objectives",
    "Show XP progress bar", "Max level", "Steps shown at once", "Font size",
    "Window scale", "Background opacity", "Opacity in combat",
    "Enable direction arrow", "Show distance and time text", "Arrow scale",
    "Arrival distance (yards)", "Lock arrow position", "Arrow skin",
    "Distance font size", "Distance text outline", "Distance units",
    "yards / miles", "kilometers / meters",
    "Right-direction color", "Wrong-direction color",
    "Show waypoint pins", "Show quest objectives on map", "Quest objective pins",
    "Quest pin size", "Quest pin shape", "Square", "Circle", "Diamond",
    "Quest pin outline", "Quest pin outline size", "Quest pin outline color",
    "Quest accept pin color", "Quest turn-in pin color", "Quest objective pin color",
    "Quest talk pin color", "Show route trail and lines", "Route display style",
    "Dots and lines", "Dots only", "Lines only",
    "Waypoint pin size", "Route waypoint pins", "Waypoint pin shape",
    "Waypoint pin outline", "Waypoint pin outline size",
    "Route line thickness", "Route line color", "Route dot color",
    "Route lines", "Route dots", "Dot animation speed",
    "Reset route colors", "Reset arrow colors",
    "Show minimap button", "Minimap button position",
    "Minimap left main window", "Minimap alt tracker", "Minimap right guide menu",
    "Minimap shift settings",
    "Auto-advance to next step", "Suggest a guide on login", "Play sound on step change",
    "Auto-scroll to active step", "Show on-screen notifications",
    "Hide Blizzard objective tracker", "Auto-load guide for your zone",
    "Auto-accept guide quests", "Auto-turn-in guide quests", "Auto-quest modifier key",
    "Show currency tracker bar", "Point arrow to corpse on death",
    "Show treasures & rares on map", "Skip cinematics automatically",
    "Gear upgrade advisor", "Smart-skip completed steps on load",
    "Auto-select gossip options", "Auto train at class trainer", "Skip step",
    "One-click step action button", "Auto-take flight paths on route",
    "Jump to a quest's step when accepted", "Speak steps aloud (TTS)",
    "jump / map", "waypoint", "toggle window", "guide menu", "settings",
    "Opts", "Edit", "Log",
    "Your corpse", "Click to set waypoint", "Left-click: navigate here",
    "Nearest flight point highlighted", "Recording guide...", "Upgrade: ",
    "another area", "arrived", "far away",
    "Fly from", "Travel via", "Take portal", "Hearthstone to", "Use teleport", "Walk to",
    "Destination", "Go to goal", "Computing route",
    "Browse and search all guides", "Window, arrow, profiles, language",
    "Guide Editor", "Create or edit custom guides",
    "Completed guides, time and XP",
    f"Drag to move {_WBU} right-click to lock", "Drag to move", "right-click to lock",
    "Welcome! Pick a guide to begin.", "Reset all settings",
    "Settings Profiles", "Active profile", "New profile for this character",
    "Copy settings from", "Delete a profile", "Auto-switch profile per specialization",
    "Export profile string", "Import profile string", "Select...",
    "QuestCore Settings", "Export Profile", "Import Profile",
    "Press Ctrl+C to copy.", "Paste a QuestCore profile string, then Import.", "Import",
    "Select Guide", "Guides", "Search", "Only my level",
    "Continue:", "Suggested:", "Recent:", "Click to load this guide", "Steps:",
    "No guide loaded.\nPick one to begin.", "< Prev", "Next >", "No guide",
    "Guide unavailable in this game version",
    "Level %d!", "Guide complete!", f"Guide complete {_WEM} loading next",
    "Guide History", "Clear history", "No completed guides yet.",
    "Completed:", "Time:", "Levels:",
    "Language changed. Type /reload to apply.",
]

NEW_UK = {
    "One-click step action button": "Кнопка дії кроку в один клік",
    "Auto-take flight paths on route": "Авто-політ по маршруту",
    "Jump to a quest's step when accepted": "Перехід до кроку квесту при прийнятті",
    "Computing route": "Обчислення маршруту",
    "Step tracker hidden": "Покроковий трекер приховано",
    "Left-click: navigate here": "ЛКМ: перейти сюди",
    "Take portal": "Портал",
    "Opts": "Opts",
    "Edit": "Редаг.",
    "Log": "Лог",
}

RURU = {
    "Guide Window": "Окно гайда",
    "Waypoint Arrow": "Стрелка-указатель",
    "Map & Minimap": "Карта и миникарта",
    "Colors": "Цвета",
    "Guide goals": "Цели гайда",
    "Completed goal": "Выполненная цель",
    "Active goal": "Активная цель",
    "Passive goal": "Пассивная цель",
    "Progress bars": "Полосы прогресса",
    "XP bar": "Полоса опыта",
    "Guide progress bar": "Полоса прогресса гайда",
    "Map pins": "Пины на карте",
    "Active waypoint pin": "Активный пин",
    "Route waypoint pin": "Пин маршрута",
    "Treasures & rares": "Сокровища и редкие",
    "Treasure pin": "Пин сокровища",
    "Rare mob pin": "Пин редкого",
    "Window": "Окно",
    "Window border": "Рамка окна",
    "Reset goal colors": "Сбросить цвета целей",
    "Reset bar colors": "Сбросить цвета полос",
    "Reset pin colors": "Сбросить цвета пинов",
    "Reset POI colors": "Сбросить цвета POI",
    "Reset window colors": "Сбросить цвета окна",
    "Reset color": "Сбросить цвет",
    "Reset": "Сбросить",
    "Pick color": "Выбрать цвет",
    "General": "Общее",
    "Profiles": "Профили",
    "Language": "Язык",
    "Startup Wizard": "Мастер запуска",
    "Faction": "Фракция",
    "Zone preference": "Зона",
    "Play style": "Стиль игры",
    "Speedrun": "Спидран",
    "Dungeon": "Подземелье",
    "Casual": "Казуал",
    "Auto (recommended)": "Авто (рекомендуется)",
    "Wizard hint": "Мы подберём гайд в соответствии с вашими настройками.",
    "Start guide": "Начать гайд",
    "Guide activated. Good luck!": "Гайд активирован. Удачи!",
    "Talent point available — /qc talents": "Есть очки талантов — /qc talents",
    "Talent build": "Специализация талантов",
    "No talent builds": "Нет доступных билдов для этой версии игры.",
    "Talent hint classic": "|cffffcc00Советник талантов:|r Изучите |cff66ccff%s|r (вкладка %d, ранг %d/%d) — билд: %s",
    "Talent hint retail": "|cffffcc00Советник талантов:|r %d очков — откройте таланты, билд: |cff66ccff%s|r",
    "Talent hint generic": "|cffffcc00Советник талантов:|r %d нераспределённых очков — откройте окно талантов.",
    "AH autoscript scan": "Автовзаимодействие с аукционом: сканирование",
    "AH autoscript buy": "Автовзаимодействие с аукционом: Поиск [%s]",
    "Auto Quest Acceptance & Turn-In": "Авто-квесты",
    "Auto Quest tooltip": "Автоматически принимает и сдаёт квесты текущего шага гайда. Удерживайте Shift, чтобы просмотреть диалог вручную.",
    "Lock window (no drag or resize)": "Заблокировать окно (без перемещения/размера)",
    "Show main log window": "Показывать главное окно (Лог)",
    "Show step tracker": "Показывать пошаговый трекер",
    "Step tracker shown": "Пошаговый трекер показан",
    "Step tracker hidden": "Пошаговый трекер скрыт",
    "Continue": "Продолжить",
    "Main log shown": "Главное окно (Лог) показано",
    "Main log hidden": "Главное окно (Лог) скрыто",
    "Hide window border": "Скрыть рамку окна",
    "Show step counter in title": "Счётчик шагов в заголовке",
    "Hide completed objectives": "Скрывать выполненные цели",
    "Show XP progress bar": "Показывать полосу опыта",
    "Max level": "Макс. уровень",
    "Steps shown at once": "Показывать шагов одновременно",
    "Font size": "Размер шрифта",
    "Window scale": "Масштаб окна",
    "Background opacity": "Прозрачность фона",
    "Opacity in combat": "Прозрачность в бою",
    "Enable direction arrow": "Включить стрелку направления",
    "Show distance and time text": "Показывать расстояние и время",
    "Arrow scale": "Масштаб стрелки",
    "Arrival distance (yards)": "Дистанция прибытия (ярды)",
    "Lock arrow position": "Зафиксировать стрелку",
    "Arrow skin": "Скин стрелки",
    "Distance font size": "Размер шрифта расстояния",
    "Distance text outline": "Обводка текста расстояния",
    "Distance units": "Единицы расстояния",
    "yards / miles": "ярды / мили",
    "kilometers / meters": "километры / метры",
    "Right-direction color": "Цвет верного направления",
    "Wrong-direction color": "Цвет неверного направления",
    "Show waypoint pins": "Показывать точки",
    "Show quest objectives on map": "Цели квестов на карте",
    "Quest objective pins": "Метки целей квестов",
    "Quest pin size": "Размер меток",
    "Quest pin shape": "Форма меток",
    "Square": "Квадрат",
    "Circle": "Круг",
    "Diamond": "Ромб",
    "Quest pin outline": "Контур меток",
    "Quest pin outline size": "Толщина контура",
    "Quest pin outline color": "Цвет контура",
    "Quest accept pin color": "Цвет: принять квест",
    "Quest turn-in pin color": "Цвет: сдать квест",
    "Quest objective pin color": "Цвет: цель квеста",
    "Quest talk pin color": "Цвет: поговорить",
    "Show route trail and lines": "Показывать маршрут и линии",
    "Route display style": "Стиль маршрута",
    "Dots and lines": "Точки и линии",
    "Dots only": "Только точки",
    "Lines only": "Только линии",
    "Waypoint pin size": "Размер точек",
    "Route waypoint pins": "Метки маршрута",
    "Waypoint pin shape": "Форма меток маршрута",
    "Waypoint pin outline": "Контур меток маршрута",
    "Waypoint pin outline size": "Толщина контура маршрута",
    "Route line thickness": "Толщина линий маршрута",
    "Route line color": "Цвет линий маршрута",
    "Route dot color": "Цвет точек маршрута",
    "Route lines": "Линии маршрута",
    "Route dots": "Точки маршрута",
    "Dot animation speed": "Скорость движения точек",
    "Reset route colors": "Сбросить цвета маршрута",
    "Reset arrow colors": "Сбросить цвета стрелки",
    "Show minimap button": "Кнопка на миникарте",
    "Minimap button position": "Позиция кнопки на миникарте",
    "Minimap left main window": "ЛКМ: главное окно (Лог, Opts)",
    "Minimap alt tracker": "Alt+ЛКМ: пошаговый трекер",
    "Minimap right guide menu": "ПКМ: выбор гайда",
    "Minimap shift settings": "Shift+ЛКМ: настройки",
    "Auto-advance to next step": "Авто-переход к следующему шагу",
    "Suggest a guide on login": "Предлагать гайд при входе",
    "Play sound on step change": "Звук при смене шага",
    "Auto-scroll to active step": "Авто-прокрутка к активному шагу",
    "Show on-screen notifications": "Экранные уведомления",
    "Hide Blizzard objective tracker": "Скрывать трекер заданий Blizzard",
    "Auto-load guide for your zone": "Авто-гайд для текущей зоны",
    "Auto-accept guide quests": "Авто-принятие квестов гайда",
    "Auto-turn-in guide quests": "Авто-сдача квестов гайда",
    "Auto-quest modifier key": "Клавиша-модификатор авто-квестов",
    "Show currency tracker bar": "Полоса трекера валют",
    "Point arrow to corpse on death": "Стрелка к телу после смерти",
    "Show treasures & rares on map": "Сокровища и редкие на карте",
    "Skip cinematics automatically": "Авто-пропуск роликов",
    "Gear upgrade advisor": "Советник по улучшению экипировки",
    "Smart-skip completed steps on load": "Умный пропуск выполненных шагов",
    "Auto-select gossip options": "Авто-выбор реплик в диалогах",
    "Auto train at class trainer": "Авто-обучение у тренера класса",
    "Skip step": "Пропустить шаг",
    "One-click step action button": "Кнопка действия шага в один клик",
    "Auto-take flight paths on route": "Авто-полёт по маршруту",
    "Jump to a quest's step when accepted": "Переход к шагу квеста при принятии",
    "Speak steps aloud (TTS)": "Озвучивать шаги (TTS)",
    "jump / map": "переход / карта",
    "waypoint": "метка",
    "toggle window": "окно",
    "guide menu": "меню гайдов",
    "settings": "настройки",
    "Opts": "Opts",
    "Edit": "Ред.",
    "Log": "Лог",
    "Your corpse": "Ваше тело",
    "Click to set waypoint": "Нажмите, чтобы поставить метку",
    "Left-click: navigate here": "ЛКМ: перейти сюда",
    "Nearest flight point highlighted": "Подсвечена ближайшая точка полёта",
    "Recording guide...": "Запись гайда...",
    "Upgrade: ": "Улучшение: ",
    "another area": "другая зона",
    "arrived": "на месте",
    "far away": "далеко",
    "Fly from": "Лететь из",
    "Travel via": "Через",
    "Take portal": "Портал",
    "Hearthstone to": "Камень в",
    "Use teleport": "Телепорт",
    "Walk to": "Идти к",
    "Destination": "Цель",
    "Go to goal": "Идите к цели",
    "Computing route": "Вычисление маршрута",
    "Browse and search all guides": "Обзор и поиск всех гайдов",
    "Window, arrow, profiles, language": "Окно, стрелка, профили, язык",
    "Guide Editor": "Редактор гайдов",
    "Create or edit custom guides": "Создание/редактирование своих гайдов",
    "Completed guides, time and XP": "Завершённые гайды, время и опыт",
    "Drag to move \u2022 right-click to lock": "Тяните, чтобы перемещать | ПКМ — зафиксировать",
    "Drag to move": "Тяните, чтобы перемещать",
    "right-click to lock": "ПКМ — зафиксировать",
    "Welcome! Pick a guide to begin.": "Добро пожаловать! Выберите гайд, чтобы начать.",
    "Reset all settings": "Сбросить все настройки",
    "Settings Profiles": "Профили настроек",
    "Active profile": "Активный профиль",
    "New profile for this character": "Новый профиль для этого персонажа",
    "Copy settings from": "Копировать настройки из",
    "Delete a profile": "Удалить профиль",
    "Auto-switch profile per specialization": "Авто-профиль по специализации",
    "Export profile string": "Экспорт профиля (строка)",
    "Import profile string": "Импорт профиля (строка)",
    "Select...": "Выбрать...",
    "QuestCore Settings": "Настройки QuestCore",
    "Export Profile": "Экспорт профиля",
    "Import Profile": "Импорт профиля",
    "Press Ctrl+C to copy.": "Нажмите Ctrl+C, чтобы скопировать.",
    "Paste a QuestCore profile string, then Import.": "Вставьте строку профиля QuestCore и нажмите Импорт.",
    "Import": "Импорт",
    "Select Guide": "Выбор гайда",
    "Guides": "Гайды",
    "Search": "Поиск",
    "Only my level": "Только мой уровень",
    "Continue:": "Продолжить:",
    "Suggested:": "Рекомендовано:",
    "Recent:": "Недавние:",
    "Click to load this guide": "Нажмите, чтобы загрузить гайд",
    "Steps:": "Шагов:",
    "No guide loaded.\nPick one to begin.": "Гайд не загружен.\nВыберите, чтобы начать.",
    "< Prev": "< Назад",
    "Next >": "Далее >",
    "No guide": "Нет гайда",
    "Guide unavailable in this game version": "QuestCore: Гайд [%s] недоступен в этой версии игры.",
    "Level %d!": "Уровень %d!",
    "Guide complete!": "Гайд завершён!",
    "Guide complete \u2014 loading next": "Гайд завершён \u2014 следующий",
    "Guide History": "История гайдов",
    "Clear history": "Очистить историю",
    "No completed guides yet.": "Пока нет завершённых гайдов.",
    "Completed:": "Завершено:",
    "Time:": "Время:",
    "Levels:": "Уровней:",
    "Language changed. Type /reload to apply.": "Язык изменён. Введите /reload для применения.",
}


def read_header_footer():
    text = LOCALE_PATH.read_text(encoding="utf-8")
    lines = text.splitlines(keepends=True)
    header = "".join(lines[:33])
    idx = text.index("----------------------------------------------------------------------\n-- Activation")
    footer = text[idx:]
    return header, footer


def decode_lua_string(s):
    out = []
    i = 0
    while i < len(s):
        if s[i] == "\\" and i + 1 < len(s):
            if s[i + 1] == "n":
                out.append("\n")
                i += 2
            elif s[i + 1] == "t":
                out.append("\t")
                i += 2
            elif s[i + 1] == "\\":
                out.append("\\")
                i += 2
            elif s[i + 1] == '"':
                out.append('"')
                i += 2
            elif s[i + 1].isdigit():
                byte_vals = []
                while i < len(s) and s[i] == "\\" and i + 1 < len(s) and s[i + 1].isdigit():
                    j = i + 1
                    while j < len(s) and j < i + 4 and s[j].isdigit():
                        j += 1
                    byte_vals.append(int(s[i + 1 : j], 10))
                    i = j
                try:
                    out.append(bytes(byte_vals).decode("utf-8"))
                except UnicodeDecodeError:
                    out.extend(chr(b) for b in byte_vals)
                continue
            else:
                out.append(s[i])
                i += 1
        else:
            out.append(s[i])
            i += 1
    return "".join(out)


def parse_lua_table(block):
    pairs = re.findall(r'\["((?:[^"\\]|\\.)*)"\]\s*=\s*"((?:[^"\\]|\\.)*)"', block)
    return {decode_lua_string(k): decode_lua_string(v) for k, v in pairs}


def load_existing_uk():
    text = LOCALE_PATH.read_text(encoding="utf-8")
    m = re.search(r"translations\.ukUA = \{(.*?)\n\}", text, re.S)
    if not m:
        raise RuntimeError("Could not parse translations.ukUA from Locale.lua")
    uk = parse_lua_table(m.group(1))
    uk.update(NEW_UK)
    uk[f"Guide complete {_WEM} loading next"] = f"Гайд завершено {_WEM} наступний"
    return uk


def lua_escape_string(s):
    out = []
    for c in s:
        if c == '"':
            out.append('\\"')
        elif c == "\\":
            out.append("\\\\")
        elif c == "\n":
            out.append("\\n")
        elif c == "\t":
            out.append("\\t")
        else:
            out.append(c)
    return "".join(out)


def lua_escape_key(key):
    out = []
    for c in key:
        if c == "\u2014":  # em dash — preserve WoW \226\128\148 in keys
            out.append("\\226\\128\\148")
        elif c == "\u2022":  # bullet • preserve WoW \226\128\162 in keys
            out.append("\\226\\128\\162")
        elif c == '"':
            out.append('\\"')
        elif c == "\\":
            out.append("\\\\")
        elif c == "\n":
            out.append("\\n")
        elif c == "\t":
            out.append("\\t")
        else:
            out.append(c)
    return "".join(out)


def lua_escape_value(val):
    return lua_escape_string(val)


def format_table(locale, table):
    lines = [
        "----------------------------------------------------------------------",
        f"-- {SECTION_COMMENTS[locale]}",
        "----------------------------------------------------------------------",
        f"translations.{locale} = {{",
    ]
    for key in KEYS_ORDER:
        val = table[key]
        lines.append(f'\t["{lua_escape_key(key)}"] = "{lua_escape_value(val)}",')
    lines.append("}")
    return "\n".join(lines)


_WOW_ESC3 = re.compile("".join(r"\\(\d{1,3})" for _ in range(3)))


def fix_wow_literal_escapes(s):
    def repl(match):
        nums = [int(match.group(i)) for i in range(1, 4)]
        try:
            return bytes(nums).decode("utf-8")
        except UnicodeDecodeError:
            return match.group(0)

    prev = None
    while prev != s:
        prev = s
        s = _WOW_ESC3.sub(repl, s)
    return s


def load_lang_values():
    if not VALUES_PATH.exists():
        raise RuntimeError(
            f"Missing {VALUES_PATH.name}. Restore it from version control or regenerate translations."
        )
    data = json.loads(VALUES_PATH.read_text(encoding="utf-8"))
    tables = {}
    for locale, values in data.items():
        if len(values) != len(KEYS_ORDER):
            raise RuntimeError(f"{locale}: expected {len(KEYS_ORDER)} values, got {len(values)}")
        fixed = [fix_wow_literal_escapes(v) for v in values]
        tables[locale] = dict(zip(KEYS_ORDER, fixed))
    return tables


def build_all_tables():
    uk = load_existing_uk()
    tables = {
        "ukUA": {k: uk[k] for k in KEYS_ORDER},
        "ruRU": {k: RURU[k] for k in KEYS_ORDER},
    }
    tables.update(load_lang_values())
    return tables


def verify_tables(tables):
    ok = True
    for locale, table in tables.items():
        count = len(table)
        if count != len(KEYS_ORDER):
            print(f"FAIL {locale}: {count} keys (expected {len(KEYS_ORDER)})", file=sys.stderr)
            ok = False
        else:
            print(f"OK   {locale}: {count} keys")
    return ok


def main():
    header, footer = read_header_footer()
    tables = build_all_tables()
    print("Key counts:")
    if not verify_tables(tables):
        sys.exit(1)

    parts = [header.rstrip("\n"), ""]
    order = [
        "ukUA", "ruRU", "deDE", "frFR", "esES", "ptBR", "itIT", "koKR",
        "zhCN", "zhTW", "plPL", "trTR", "nlNL", "huHU", "svSE",
    ]
    for locale in order:
        parts.append(format_table(locale, tables[locale]))
        parts.append("")
        if locale == "esES":
            parts.append("-- esMX shares the Spanish table.")
            parts.append("translations.esMX = translations.esES")
            parts.append("")

    parts.append(footer.lstrip("\n"))
    output = "\n".join(parts)
    LOCALE_PATH.write_text(output, encoding="utf-8", newline="\n")
    line_count = output.count("\n") + (1 if output and not output.endswith("\n") else 0)
    print(f"\nWrote {LOCALE_PATH} ({line_count} lines)")


if __name__ == "__main__":
    main()
