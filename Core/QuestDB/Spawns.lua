-- QuestCore: resolve bundled quest DB spawns into map pins for quest objectives.

local addonName, QC = ...

local Spawns = {}
QC.QuestDBSpawns = Spawns

local Schema = QC.QuestDBSchema
local qk = Schema.questKeys
local ok = Schema.objectiveKeys
local sbk = Schema.startedByKeys
local fbk = Schema.finishedByKeys
local nk = Schema.npcKeys
local objk = Schema.objectKeys
local ik = Schema.itemKeys

local ZoneMaps

local function FirstId(entry)
	if type(entry) ~= "table" then return tonumber(entry) end
	return tonumber(entry[1])
end

local function EntryLabel(entry, fallback)
	if type(entry) == "table" and entry[2] and entry[2] ~= "" then
		return entry[2]
	end
	return fallback
end

function Spawns:SetData(data)
	self.quests = data.quests
	self.npcs = data.npcs
	self.objects = data.objects
	self.items = data.items
	ZoneMaps = QC.QuestDBZoneMaps
end

function Spawns:NpcName(npcId)
	local npc = self.npcs and self.npcs[npcId]
	return npc and npc[nk.name]
end

function Spawns:ObjectName(objectId)
	local obj = self.objects and self.objects[objectId]
	return obj and obj[objk.name]
end

function Spawns:ItemName(itemId)
	local item = self.items and self.items[itemId]
	return item and item[ik.name]
end

function Spawns:AddCoords(out, seen, spawns, label, kind, questId)
	if not spawns or not ZoneMaps then return end
	for areaId, coords in pairs(spawns) do
		local map = ZoneMaps:GetUiMapId(areaId)
		if map and map > 0 and coords then
			for _, coord in ipairs(coords) do
				local x = coord[1] and (coord[1] / 100)
				local y = coord[2] and (coord[2] / 100)
				if x and y then
					local key = string.format("%s:%.4f:%.4f", tostring(map), x, y)
					if not seen[key] then
						seen[key] = true
						out[#out + 1] = {
							map = map,
							x = x,
							y = y,
							kind = kind,
							questid = questId,
							label = label or "Quest objective",
							source = "questdb",
						}
					end
				end
			end
		end
	end
end

function Spawns:AddNpc(out, seen, npcId, label, kind, questId)
	npcId = tonumber(npcId)
	if not npcId then return end
	local npc = self.npcs and self.npcs[npcId]
	if not npc then return end
	label = label or self:NpcName(npcId) or ("NPC " .. npcId)
	self:AddCoords(out, seen, npc[nk.spawns], label, kind, questId)
end

function Spawns:AddObject(out, seen, objectId, label, kind, questId)
	objectId = tonumber(objectId)
	if not objectId then return end
	local obj = self.objects and self.objects[objectId]
	if not obj then return end
	label = label or self:ObjectName(objectId) or ("Object " .. objectId)
	self:AddCoords(out, seen, obj[objk.spawns], label, kind, questId)
end

function Spawns:AddItemSources(out, seen, itemId, label, kind, questId)
	itemId = tonumber(itemId)
	if not itemId then return end
	local item = self.items and self.items[itemId]
	if not item then return end
	label = label or self:ItemName(itemId) or ("Item " .. itemId)

	local npcDrops = item[ik.npcDrops]
	if npcDrops then
		for _, npcId in ipairs(npcDrops) do
			self:AddNpc(out, seen, npcId, label, kind, questId)
		end
	end

	local objectDrops = item[ik.objectDrops]
	if objectDrops then
		for _, objectId in ipairs(objectDrops) do
			self:AddObject(out, seen, objectId, label, kind, questId)
		end
	end
end

function Spawns:AddFinishedBy(out, seen, quest, kind, questId)
	local finishedBy = quest[qk.finishedBy]
	if not finishedBy then return end

	local creatures = finishedBy[fbk.creatureEnd]
	if creatures then
		for _, npcId in ipairs(creatures) do
			self:AddNpc(out, seen, npcId, self:NpcName(npcId), kind, questId)
		end
	end

	local objects = finishedBy[fbk.objectEnd]
	if objects then
		for _, objectId in ipairs(objects) do
			self:AddObject(out, seen, objectId, self:ObjectName(objectId), kind, questId)
		end
	end
end

function Spawns:GetObjectivePinsForQuest(questId)
	local out = {}
	local seen = {}
	questId = tonumber(questId)
	if not questId or not self.quests then return out end

	local quest = self.quests[questId]
	if not quest then return out end

	local QuestDB = QC.QuestDB
	if QuestDB and QuestDB.IsQuestReadyForTurnIn and QuestDB:IsQuestReadyForTurnIn(questId) then
		local qname = quest[qk.name] or ("Quest " .. questId)
		self:AddFinishedBy(out, seen, quest, "turnin", questId)
		for _, pin in ipairs(out) do
			pin.label = qname .. "\n" .. (pin.label or "Turn in")
		end
		return out
	end

	local qname = quest[qk.name] or ("Quest " .. questId)
	local before = #out

	local trigger = quest[qk.triggerEnd]
	if type(trigger) == "table" and type(trigger[2]) == "table" then
		local text = trigger[1] or qname
		self:AddCoords(out, seen, trigger[2], qname .. "\n" .. text, "objective", questId)
	end

	local objectives = quest[qk.objectives]
	if type(objectives) == "table" then
		local creatures = objectives[ok.creatureObjective]
		if creatures then
			for _, entry in ipairs(creatures) do
				local npcId = FirstId(entry)
				local label = qname .. "\n" .. EntryLabel(entry, self:NpcName(npcId))
				self:AddNpc(out, seen, npcId, label, "objective", questId)
			end
		end

		local objects = objectives[ok.objectObjective]
		if objects then
			for _, entry in ipairs(objects) do
				local objectId = FirstId(entry)
				local label = qname .. "\n" .. EntryLabel(entry, self:ObjectName(objectId))
				self:AddObject(out, seen, objectId, label, "objective", questId)
			end
		end

		local items = objectives[ok.itemObjective]
		if items then
			for _, entry in ipairs(items) do
				local itemId = FirstId(entry)
				local label = qname .. "\n" .. EntryLabel(entry, self:ItemName(itemId))
				self:AddItemSources(out, seen, itemId, label, "objective", questId)
			end
		end

		local killCredits = objectives[ok.killCreditObjective]
		if killCredits then
			for _, entry in ipairs(killCredits) do
				local idList = entry[1]
				local text = entry[3] or qname
				if type(idList) == "table" then
					for _, npcId in ipairs(idList) do
						local label = qname .. "\n" .. text
						self:AddNpc(out, seen, npcId, label, "objective", questId)
					end
				end
			end
		end

		local spells = objectives[ok.spellObjective]
		if spells then
			for _, entry in ipairs(spells) do
				local itemId = entry[3]
				if itemId then
					local label = qname .. "\n" .. EntryLabel(entry, self:ItemName(itemId))
					self:AddItemSources(out, seen, itemId, label, "objective", questId)
				end
			end
		end
	end

	if #out == before then
		self:AddFinishedBy(out, seen, quest, "talk", questId)
		for i = before + 1, #out do
			local pin = out[i]
			pin.label = qname .. "\n" .. (pin.label or "Quest NPC")
		end
	end

	return out
end
