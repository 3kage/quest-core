-- QuestCore: simple gear upgrade advisor.
-- Scans bags for equippable items whose item level beats what is equipped in
-- the matching slot, and notifies (once per item). Heuristic, iLvl-based.

local addonName, QuestCore = ...
local QC = QuestCore

local GearAdvisor = {}
QC.GearAdvisor = GearAdvisor

-- Equip location -> inventory slot id(s) to compare against.
local EQUIPLOC_SLOTS = {
	INVTYPE_HEAD = { 1 }, INVTYPE_NECK = { 2 }, INVTYPE_SHOULDER = { 3 },
	INVTYPE_CHEST = { 5 }, INVTYPE_ROBE = { 5 }, INVTYPE_WAIST = { 6 },
	INVTYPE_LEGS = { 7 }, INVTYPE_FEET = { 8 }, INVTYPE_WRIST = { 9 },
	INVTYPE_HAND = { 10 }, INVTYPE_FINGER = { 11, 12 }, INVTYPE_TRINKET = { 13, 14 },
	INVTYPE_CLOAK = { 15 }, INVTYPE_WEAPON = { 16, 17 },
	INVTYPE_2HWEAPON = { 16 }, INVTYPE_WEAPONMAINHAND = { 16 },
	INVTYPE_WEAPONOFFHAND = { 17 }, INVTYPE_HOLDABLE = { 17 },
	INVTYPE_SHIELD = { 17 }, INVTYPE_RANGED = { 16 }, INVTYPE_RANGEDRIGHT = { 16 },
}

local function EquippedMinLevel(slots)
	local minLvl
	for _, slot in ipairs(slots) do
		local link = GetInventoryItemLink and GetInventoryItemLink("player", slot)
		local lvl = link and select(4, QC.GetItemInfo(link)) or 0
		-- Empty slot counts as 0 (anything is an upgrade).
		if not minLvl or (lvl or 0) < minLvl then minLvl = lvl or 0 end
	end
	return minLvl or 0
end

function GearAdvisor:ScanBags(announce)
	if not QC.db.profile.general.gearAdvisor and not announce then return end
	self.notified = self.notified or {}
	local C = C_Container
	if not C then return end

	local found = 0
	for bag = 0, NUM_BAG_SLOTS or 4 do
		local numSlots = C.GetContainerNumSlots(bag)
		for slot = 1, (numSlots or 0) do
			local info = C.GetContainerItemInfo(bag, slot)
			local link = info and info.hyperlink
			if link then
				local _, _, _, iLvl, reqLvl, _, _, _, equipLoc = QC.GetItemInfo(link)
				local slots = equipLoc and EQUIPLOC_SLOTS[equipLoc]
				if slots and iLvl and (not reqLvl or reqLvl <= UnitLevel("player")) then
					if iLvl > EquippedMinLevel(slots) then
						local id = info.itemID
						if announce or not self.notified[id] then
							self.notified[id] = true
							found = found + 1
							QC:Notify((QC.L["Upgrade: "] or "Upgrade: ") .. (QC.GetItemInfo(link) or link),
								{ 0.4, 1.0, 0.5 })
						end
					end
				end
			end
		end
	end
	if announce and found == 0 then
		QC:Print("No gear upgrades found in bags.")
	end
end

function GearAdvisor:Enable()
	if self._enabled then return end
	self._enabled = true
	-- Private frame: BAG_UPDATE_DELAYED is owned by QuestDB via AceEvent.
	local f = CreateFrame("Frame")
	f:RegisterEvent("BAG_UPDATE_DELAYED")
	f:SetScript("OnEvent", function()
		if QC.db.profile.general.gearAdvisor then
			-- Throttle a touch to avoid scanning on every tiny bag change.
			if QC.ScheduleTimer then
				if self._pending then return end
				self._pending = true
				QC:ScheduleTimer(function() self._pending = false; GearAdvisor:ScanBags(false) end, 1.0)
			else
				GearAdvisor:ScanBags(false)
			end
		end
	end)
	self.frame = f
end
