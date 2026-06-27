-- QuestCore: pick the best quest reward when multiple choices exist (iLvl heuristic).

local addonName, QuestCore = ...
local QC = QuestCore

local QuestRewards = {}
QC.QuestRewards = QuestRewards

local EQUIP_SLOTS = {
	INVTYPE_HEAD = 1, INVTYPE_NECK = 2, INVTYPE_SHOULDER = 3,
	INVTYPE_CHEST = 5, INVTYPE_ROBE = 5, INVTYPE_WAIST = 6,
	INVTYPE_LEGS = 7, INVTYPE_FEET = 8, INVTYPE_WRIST = 9,
	INVTYPE_HAND = 10, INVTYPE_FINGER = 11, INVTYPE_TRINKET = 13,
	INVTYPE_CLOAK = 15, INVTYPE_WEAPON = 16, INVTYPE_2HWEAPON = 16,
	INVTYPE_WEAPONMAINHAND = 16, INVTYPE_WEAPONOFFHAND = 17,
	INVTYPE_SHIELD = 17, INVTYPE_HOLDABLE = 17,
}

local function EquippedLevel(slot)
	local link = GetInventoryItemLink and GetInventoryItemLink("player", slot)
	if not link then return 0 end
	return select(4, QC.GetItemInfo(link)) or 0
end

local function ScoreReward(index)
	local link = GetQuestItemLink and GetQuestItemLink("choice", index)
	if not link then return -1, 0 end
	local _, _, _, iLvl, _, _, _, _, equipLoc, _, sellPrice, classID = QC.GetItemInfo(link)
	if not iLvl then return -1, 0 end
	-- Skip cosmetic / token-like rewards when detectable.
	if classID == 5 then return 0, sellPrice or 0 end
	local slot = equipLoc and EQUIP_SLOTS[equipLoc]
	if slot then
		local eq = EquippedLevel(slot)
		if iLvl > eq then return 1000 + (iLvl - eq), sellPrice or 0 end
	end
	return 1, sellPrice or 0
end

function QuestRewards:BestChoiceIndex()
	local n = GetNumQuestChoices and GetNumQuestChoices() or 0
	if n <= 0 then return nil end
	if n == 1 then return 1 end

	local bestIdx, bestScore, bestSell = nil, -1, 0
	for i = 1, n do
		local score, sell = ScoreReward(i)
		if score < 0 then return -1 end -- item info not ready
		if score > bestScore or (score == bestScore and sell > bestSell) then
			bestScore, bestSell, bestIdx = score, sell, i
		end
	end
	return bestIdx
end

function QuestRewards:AutoPick()
	if not (QC.db.profile.general.autoTurnIn and QC.db.profile.general.autoQuestRewards ~= false) then
		return false
	end
	local idx = self:BestChoiceIndex()
	if not idx or idx < 1 then return false end
	if GetQuestReward then pcall(GetQuestReward, idx) end
	return true
end
