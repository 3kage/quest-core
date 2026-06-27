-- QuestCore: direction arrow visual skins.

local addonName, QuestCore = ...
local QC = QuestCore

QC.ArrowSkins = {
	classic = {
		name = "Classic",
		texture = "Interface\\Minimap\\MiniMap-QuestArrow",
		size = 40,
	},
	compass = {
		name = "Compass",
		texture = "Interface\\Minimap\\MinimapArrow",
		size = 44,
	},
	stealth = {
		name = "Stealth",
		texture = "Interface\\Minimap\\MiniMap-QuestArrow",
		size = 40,
		tint = { 0.45, 0.95, 0.55 },
	},
	gold = {
		name = "Gold",
		texture = "Interface\\Minimap\\MiniMap-QuestArrow",
		size = 42,
		tint = { 1.00, 0.85, 0.20 },
	},
}

QC.ArrowSkinOrder = { "classic", "compass", "stealth", "gold" }

function QC.GetArrowSkin(id)
	return QC.ArrowSkins[id] or QC.ArrowSkins.classic
end
