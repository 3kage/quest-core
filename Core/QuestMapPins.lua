-- QuestCore: quest objective pins on minimap and world map.
-- Pins come from the active guide (mapmarkers, kill/collect coords, accept/turnin NPCs).

local addonName, QuestCore = ...
local QC = QuestCore

local QuestMapPins = {}
QC.QuestMapPins = QuestMapPins

local WHITE = "Interface\\Buttons\\WHITE8X8"
local MASK_CIRCLE = "Interface\\CharacterFrame\\TempPortraitAlphaMask"
local HBDPins = QC.HBDPins
local HBD = QC.HBD
local HBD_SHOW_PARENT = HBDPins and HBDPins.HBD_PINS_WORLDMAP_SHOW_PARENT
	or (HBDPins and rawget(HBDPins, "HBD_PINS_WORLDMAP_SHOW_PARENT"))
local MAP_PIN_FLAG = HBD_SHOW_PARENT or 1

local QuestDB = QC.QuestDB

local COLOR_ACCEPT   = { 1.00, 0.82, 0.10 }
local COLOR_TURNIN   = { 0.30, 0.85, 0.30 }
local COLOR_OBJECTIVE = { 1.00, 0.20, 0.20 }
local COLOR_TALK     = { 0.20, 0.50, 1.00 }

local SHAPE_ROTATION = {
	square = 0,
	circle = 0,
	diamond = math.pi / 4,
}

----------------------------------------------------------------------
-- Helpers
----------------------------------------------------------------------

local function GetPinSettings()
	local qp = (QC.db and QC.db.profile and QC.db.profile.questPins) or {}
	return {
		size = math.max(1, math.min(24, qp.size or 10)),
		shape = qp.shape or "circle",
		outline = qp.outline ~= false,
		outlineSize = math.max(0, math.min(6, qp.outlineSize or 2)),
	}
end

local function PinSize()
	return GetPinSettings().size
end

local function PinColor(kind)
	local key = kind
	if kind ~= "accept" and kind ~= "turnin" and kind ~= "talk" then
		key = "objective"
	end
	local c = QC.GetColor and QC:GetColor("questPins", key)
	if c then return c end
	if kind == "accept" then return COLOR_ACCEPT end
	if kind == "turnin" then return COLOR_TURNIN end
	if kind == "talk" then return COLOR_TALK end
	return COLOR_OBJECTIVE
end

local COORD_ACTIONS = {
	accept = true,
	turnin = true,
	kill = true,
	killboss = true,
	collect = true,
	get = true,
	grind = true,
	talk = true,
	talknpcs = true,
	mapmarker = true,
}

local RED_ACTIONS = {
	kill = true,
	killboss = true,
	collect = true,
	get = true,
	grind = true,
	mapmarker = true,
}

local function PinKind(action)
	if action == "accept" then return "accept" end
	if action == "turnin" then return "turnin" end
	if action == "talk" or action == "talknpcs" then return "talk" end
	if RED_ACTIONS[action] then return "objective" end
	return "objective"
end

local function DedupKey(map, x, y, kind)
	return string.format("%s:%.4f:%.4f:%s", tostring(map), x, y, kind)
end

local function LocationKey(map, x, y)
	return string.format("%s:%.4f:%.4f", tostring(map), x, y)
end

local function GetQuestTitle(qid)
	qid = tonumber(qid)
	if not qid then return nil end
	if C_QuestLog and C_QuestLog.GetTitleForQuestID then
		local ok, title = pcall(C_QuestLog.GetTitleForQuestID, qid)
		if ok and title and title ~= "" then return title end
	end
	if GetQuestLogTitle then
		local idx = QuestDB and QuestDB.GetLogIndex and QuestDB:GetLogIndex(qid)
		if idx then
			local title = GetQuestLogTitle(idx)
			if title then return title:gsub("^%s*(%[?%]?)", "") end
		end
	end
	return nil
end

local function StepQuestIDs(step)
	local ids = {}
	local seen = {}
	for _, goal in ipairs(step.goals or {}) do
		local qid = QuestDB and QuestDB.ResolveGoalQuestID and QuestDB:ResolveGoalQuestID(goal)
		if qid and not seen[qid] then
			seen[qid] = true
			ids[#ids + 1] = qid
		end
	end
	return ids
end

local function GoalQuestIDs(goal, step)
	local qid = QuestDB and QuestDB.ResolveGoalQuestID and QuestDB:ResolveGoalQuestID(goal)
	if qid then return { qid } end
	if goal.action == "mapmarker" and step then
		return StepQuestIDs(step)
	end
	return {}
end

local function QuestTurnedIn(qid)
	return QuestDB and QuestDB.IsQuestComplete and QuestDB:IsQuestComplete(qid)
end

local function QuestInLog(qid)
	return QuestDB and QuestDB.IsQuestAccepted and QuestDB:IsQuestAccepted(qid)
end

local function ShouldPinGoal(goal, step, qid)
	if QuestTurnedIn(qid) then return false end
	if goal:IsComplete() then return false end

	local action = goal.action
	if action == "accept" then
		return not QuestInLog(qid)
	end
	if action == "turnin" then
		return QuestInLog(qid)
	end
	if action == "mapmarker" then
		return QuestInLog(qid)
	end
	return QuestInLog(qid)
end

local function IsArrowDuplicate(map, x, y)
	local wp = QC.Waypoint
	local ag = wp and wp._arrowGoal
	if not ag or not ag.x or not ag.y then return false end
	local am = ag.GetMapId and ag:GetMapId() or ag.map
	if not am or am ~= map then return false end
	return math.abs(ag.x - x) < 0.001 and math.abs(ag.y - y) < 0.001
end

local function GoalLabel(goal, qid)
	local qname = (goal.questname and goal.questname ~= "") and goal.questname or GetQuestTitle(qid)
	local gtext = goal.GetText and goal:GetText() or goal.text or ""
	if qname and gtext ~= "" then
		return qname .. "\n" .. gtext
	end
	return qname or gtext or "Quest objective"
end

----------------------------------------------------------------------
-- Pin collection
----------------------------------------------------------------------

function QuestMapPins:CollectPins()
	local out = {}
	local seen = {}
	local seenLoc = {}
	local guide = QC.CurrentGuide
	if not guide or not guide.steps then
		-- still allow quest-log DB pins below
	else
	for _, step in ipairs(guide.steps) do
		for _, goal in ipairs(step.goals or {}) do
			local action = goal.action
			if not COORD_ACTIONS[action] then
			elseif not (goal.x and goal.y) then
			else
				local map = goal.GetMapId and goal:GetMapId() or goal.map
				if map then
					local questIDs = GoalQuestIDs(goal, step)
					for _, qid in ipairs(questIDs) do
						if ShouldPinGoal(goal, step, qid) then
							local kind = PinKind(action)
							local key = DedupKey(map, goal.x, goal.y, kind)
							local locKey = LocationKey(map, goal.x, goal.y)
							if not seen[key] and not seenLoc[locKey] and not IsArrowDuplicate(map, goal.x, goal.y) then
								seen[key] = true
								seenLoc[locKey] = true
								out[#out + 1] = {
									map = map,
									x = goal.x,
									y = goal.y,
									kind = kind,
									questid = qid,
									label = GoalLabel(goal, qid),
									goal = goal,
								}
							end
						end
					end
				end
			end
		end
	end
	end

	local QuestDataDB = QC.QuestDataDB
	if QuestDataDB and QuestDataDB.IsReady and QuestDataDB:IsReady() then
		for _, pin in ipairs(QuestDataDB:GetPinsForLog()) do
			if pin.map and pin.x and pin.y then
				local locKey = LocationKey(pin.map, pin.x, pin.y)
				if not seenLoc[locKey] and not IsArrowDuplicate(pin.map, pin.x, pin.y) then
					seenLoc[locKey] = true
					out[#out + 1] = {
						map = pin.map,
						x = pin.x,
						y = pin.y,
						kind = pin.kind or "objective",
						questid = pin.questid,
						label = pin.label,
						source = "questdb",
					}
				end
			end
		end
	end

	return out
end

----------------------------------------------------------------------
-- Pin frames
----------------------------------------------------------------------

local function DetachCircleMasks(pin)
	if pin._fillMaskAttached and pin._fillMaskTex then
		pin._fillMaskAttached:RemoveMaskTexture(pin._fillMaskTex)
	end
	if pin._borderMaskAttached and pin._borderMaskTex then
		pin._borderMaskAttached:RemoveMaskTexture(pin._borderMaskTex)
	end
	pin._fillMaskAttached = nil
	pin._borderMaskAttached = nil
	pin._fillMask = nil
	pin._borderMask = nil
end

local function SetPinRotation(frame, angle)
	angle = angle or 0
	for _, tex in ipairs({ frame.fill, frame.border }) do
		if tex and tex.SetRotation then
			tex:SetRotation(angle)
		end
	end
end

local function ApplyCircleMask(pin, tex, storeKey, attachKey)
	if not pin.CreateMaskTexture then return nil end
	local mask = pin[storeKey]
	if not mask then
		mask = pin:CreateMaskTexture(nil, "OVERLAY")
		mask:SetTexture(MASK_CIRCLE, "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
		pin[storeKey] = mask
	end
	if pin[attachKey] and pin[attachKey] ~= tex then
		pin[attachKey]:RemoveMaskTexture(mask)
		pin[attachKey] = nil
	end
	if pin[attachKey] ~= tex then
		tex:AddMaskTexture(mask)
		pin[attachKey] = tex
	end
	mask:ClearAllPoints()
	mask:SetAllPoints(tex)
	return mask
end

local function ApplyPinStyle(frame, col, settings)
	local shape = settings.shape or "circle"
	local outSize = settings.outline and settings.outlineSize or 0
	local outlineCol = (QC.GetColor and QC:GetColor("questPins", "outline")) or { 0, 0, 0, 1 }

	if shape == "circle" then
		SetPinRotation(frame, 0)
	else
		DetachCircleMasks(frame)
		SetPinRotation(frame, SHAPE_ROTATION[shape] or 0)
	end

	frame.fill:ClearAllPoints()
	frame.border:ClearAllPoints()
	frame.fill:SetTexture(WHITE)
	frame.border:SetTexture(WHITE)

	if outSize > 0 and settings.outline then
		frame.border:SetPoint("TOPLEFT", frame, "TOPLEFT", -outSize, outSize)
		frame.border:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", outSize, -outSize)
		frame.border:SetVertexColor(outlineCol[1], outlineCol[2], outlineCol[3], outlineCol[4] or 1)
		frame.border:Show()
		frame.fill:SetAllPoints(frame)
	else
		frame.border:Hide()
		frame.fill:SetAllPoints(frame)
	end

	frame.fill:SetVertexColor(col[1], col[2], col[3], col[4] or 1)

	if shape == "circle" then
		frame._fillMask = ApplyCircleMask(frame, frame.fill, "_fillMaskTex", "_fillMaskAttached")
		if frame.border:IsShown() then
			frame._borderMask = ApplyCircleMask(frame, frame.border, "_borderMaskTex", "_borderMaskAttached")
		end
	end
end

function QuestMapPins:AcquirePin(i, size)
	self.pins = self.pins or {}
	local entry = self.pins[i]
	if entry then
		entry.mini:SetSize(size, size)
		entry.world:SetSize(size, size)
		return entry
	end

	local function MakePin()
		local pin = CreateFrame("Button", nil, UIParent)
		pin:SetSize(size, size)
		pin.border = pin:CreateTexture(nil, "BACKGROUND")
		pin.fill = pin:CreateTexture(nil, "ARTWORK")
		pin.tex = pin.fill -- legacy ref
		return pin
	end

	entry = { mini = MakePin(), world = MakePin() }
	self.pins[i] = entry
	return entry
end

function QuestMapPins:ClearPins()
	if HBDPins then
		HBDPins:RemoveAllMinimapIcons(self)
		HBDPins:RemoveAllWorldMapIcons(self)
	end
	for _, entry in ipairs(self.pins or {}) do
		if entry.mini then entry.mini:Hide() end
		if entry.world then entry.world:Hide() end
	end
end

function QuestMapPins:Refresh()
	self:ClearPins()

	if not QC.db or QC.db.profile.general.questMapPins == false then return end
	if not (HBDPins and HBD) then return end

	local pins = self:CollectPins()
	local settings = GetPinSettings()
	local size = settings.size

	for i, pin in ipairs(pins) do
		local entry = self:AcquirePin(i, size)
		local col = PinColor(pin.kind)
		for _, frame in ipairs({ entry.mini, entry.world }) do
			ApplyPinStyle(frame, col, settings)
			frame.pinLabel = pin.label
			frame.pinMap = pin.map
			frame.pinX = pin.x
			frame.pinY = pin.y
			frame:SetScript("OnEnter", function(self)
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
				local lines = { strsplit("\n", self.pinLabel or "") }
				for j, line in ipairs(lines) do
					if j == 1 then
						GameTooltip:AddLine(line, 1, 0.82, 0)
					else
						GameTooltip:AddLine(line, 1, 1, 1)
					end
				end
				GameTooltip:AddLine("|cffffd100" .. (QC.L["Click to set waypoint"] or "Click to set waypoint") .. "|r", 0.6, 0.6, 0.6)
				GameTooltip:Show()
			end)
			frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
			frame:SetScript("OnClick", function(self)
				if QC.Waypoint and QC.Waypoint.SetManual then
					local label = self.pinLabel and self.pinLabel:match("^([^\n]+)") or self.pinLabel
					QC.Waypoint:SetManual(self.pinMap, self.pinX, self.pinY, label)
				end
			end)
			frame:Show()
		end
		HBDPins:AddMinimapIconMap(self, entry.mini, pin.map, pin.x, pin.y, true, true)
		HBDPins:AddWorldMapIconMap(self, entry.world, pin.map, pin.x, pin.y, MAP_PIN_FLAG)
	end
end

----------------------------------------------------------------------
-- Enable / events
----------------------------------------------------------------------

function QuestMapPins:Enable()
	if self._enabled then return end
	self._enabled = true

	if WorldMapFrame then
		WorldMapFrame:HookScript("OnShow", function() QuestMapPins:Refresh() end)
		if WorldMapFrame.OnMapChanged then
			hooksecurefunc(WorldMapFrame, "OnMapChanged", function() QuestMapPins:Refresh() end)
		end
	end

	local function OnQuestChange()
		QuestMapPins:Refresh()
	end

	QC:RegisterEvent("QUEST_LOG_UPDATE", OnQuestChange)
	QC:RegisterEvent("QUEST_ACCEPTED", OnQuestChange)
	QC:RegisterEvent("QUEST_TURNED_IN", OnQuestChange)
	QC:RegisterEvent("QUEST_REMOVED", OnQuestChange)
	QC:RegisterEvent("UNIT_QUEST_LOG_CHANGED", OnQuestChange)

	self:Refresh()
end
