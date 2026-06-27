-- QuestCore: unified Talent Advisor (build registry + player hints).

local addonName, QuestCore = ...
local QC = QuestCore

local TalentAdvisor = { builds = {}, byClass = {} }
QC.TalentAdvisor = TalentAdvisor

----------------------------------------------------------------------
-- Build registry (TalentAdvisor-Builds.lua format)
----------------------------------------------------------------------

function TalentAdvisor:RegisterBuild(class, name, third, fourth, ...)
	if not class or not name then return end
	class = class:upper()

	-- Classic tab/rank data: RegisterBuild(CLASS, "Name", tabIndex, "1] 2\n...")
	if type(third) == "number" and type(fourth) == "string" then
		local tab = third
		local data = fourth
		local ranks = {}
		for line in data:gmatch("[^\r\n]+") do
			local idx, rank = line:match("(%d+)%](%d+)")
			if idx and rank then ranks[tonumber(idx)] = tonumber(rank) end
		end
		local key = class .. ":" .. name
		local build = { key = key, class = class, name = name, tab = tab, ranks = ranks }
		self.builds[key] = build
		self.byClass[class] = self.byClass[class] or {}
		self.byClass[class][#self.byClass[class] + 1] = build
		return build
	end

	-- Retail / MoP talent loadout metadata (glyphs etc.).
	local key = class .. ":" .. name
	local build = {
		key = key,
		class = class,
		name = name,
		retail = true,
		meta = { third, fourth, ... },
	}
	self.builds[key] = build
	self.byClass[class] = self.byClass[class] or {}
	self.byClass[class][#self.byClass[class] + 1] = build
	return build
end

function TalentAdvisor:GetBuildsForPlayer()
	local _, class = UnitClass("player")
	if not class then return {} end
	return self.byClass[class:upper()] or {}
end

function TalentAdvisor:GetSelectedBuild()
	local key
	if QC.db and QC.db.char and QC.db.char.selectedBuild then
		key = QC.db.char.selectedBuild
	end
	if not key and QC.db and QC.db.profile.talentAdvisor then
		key = QC.db.profile.talentAdvisor.selectedBuild
	end
	if key and self.builds[key] then return self.builds[key] end
	local builds = self:GetBuildsForPlayer()
	return builds[1]
end

----------------------------------------------------------------------
-- Talent API helpers (Classic + Retail)
----------------------------------------------------------------------

local function ClientFlavor()
	local c = QC.Compat and QC.Compat.Client
	return c
end

local function UsesClassicTalentTrees()
	local c = ClientFlavor()
	if c then
		return c.isClassicEra or c.isTBC or c.isWrath or c.isCata or c.isMists
	end
	return GetTalentTabInfo ~= nil and not (C_ClassTalents and C_ClassTalents.GetActiveConfigID)
end

local function RetailUnspentTalentPoints()
	local total = 0
	if not (C_ClassTalents and C_Traits and C_ClassTalents.GetActiveConfigID) then
		return 0
	end
	local ok, configID = pcall(C_ClassTalents.GetActiveConfigID)
	if not ok or not configID or configID == 0 then return 0 end
	if not C_Traits.GetConfigInfo then return 0 end
	local ok2, configInfo = pcall(C_Traits.GetConfigInfo, configID)
	if not ok2 or not configInfo or not configInfo.treeIDs then return 0 end
	for _, treeID in ipairs(configInfo.treeIDs) do
		if C_Traits.GetTreeCurrencyInfo then
			local ok3, ci = pcall(C_Traits.GetTreeCurrencyInfo, configID, treeID)
			if ok3 and ci then
				local n = ci.unspent or ci.unspentAmount or 0
				if n > 0 then total = total + n end
			end
		end
	end
	return total
end

local function UnspentTalentPoints()
	if UsesClassicTalentTrees() then
		if GetNumUnspentTalents then
			local ok, n = pcall(GetNumUnspentTalents)
			if ok and n and n > 0 then return n end
		end
		if UnitCharacterPoints then
			local ok, n = pcall(UnitCharacterPoints, "player")
			if ok and n and n > 0 then return n end
		end
		return 0
	end
	return RetailUnspentTalentPoints()
end

local function TalentRank(tab, index)
	if not UsesClassicTalentTrees() then return 0 end
	tab, index = tonumber(tab), tonumber(index)
	if not tab or not index then return 0 end
	if GetTalentInfo then
		local ok, _, _, _, rank = pcall(GetTalentInfo, tab, index)
		if ok then return rank or 0 end
	end
	return 0
end

local function BuildMatches(build)
	if not build or not build.ranks then return true end
	for idx, want in pairs(build.ranks) do
		if TalentRank(build.tab, idx) < want then return false end
	end
	return true
end

function TalentAdvisor:GetNextTalentStep(build)
	build = build or self:GetSelectedBuild()
	if not build or build.retail or not build.ranks then return nil end
	for idx, want in pairs(build.ranks) do
		local have = TalentRank(build.tab, idx)
		if have < want then
			local name
			if UsesClassicTalentTrees() and GetTalentInfo then
				local ok, n = pcall(GetTalentInfo, build.tab, idx)
				if ok then name = n end
			end
			return {
				tab = build.tab,
				index = idx,
				name = name or ("Talent " .. idx),
				current = have,
				target = want,
				buildName = build.name,
			}
		end
	end
	return nil
end

function TalentAdvisor:IsBuildSelected()
	if QC.db and QC.db.char and QC.db.char.talentSetupDone then return true end
	if UnspentTalentPoints() <= 0 then return true end
	local build = self:GetSelectedBuild()
	if not build then return true end
	if build.retail then
		local key = QC.db and QC.db.char and QC.db.char.selectedBuild
		if not key and QC.db and QC.db.profile.talentAdvisor then
			key = QC.db.profile.talentAdvisor.selectedBuild
		end
		return key == build.key or QC.db.char.talentSetupDone == true
	end
	return BuildMatches(build)
end

function TalentAdvisor:SelectBuild(key)
	if not key then return end
	if QC.db and QC.db.char then
		QC.db.char.selectedBuild = key
		QC.db.char.talentSetupDone = false
	end
	if QC.db and QC.db.profile then
		QC.db.profile.talentAdvisor = QC.db.profile.talentAdvisor or {}
		QC.db.profile.talentAdvisor.selectedBuild = key
	end
	self:RefreshHint()
end

function TalentAdvisor:MarkSetupDone()
	if QC.db and QC.db.char then
		QC.db.char.talentSetupDone = true
	end
	self:RefreshHint()
end

function TalentAdvisor:GetHint()
	local unspent = UnspentTalentPoints()
	if unspent <= 0 then return nil end
	local build = self:GetSelectedBuild()
	local L = QC.L or {}
	local step = self:GetNextTalentStep(build)
	if not step then
		if build and build.retail then
			local fmt = L["Talent hint retail"] or "|cffffcc00Порадник талантів:|r %d очок — відкрийте таланти, білд: |cff66ccff%s|r"
			return fmt:format(unspent, build.name or "?")
		end
		local fmt = L["Talent hint generic"] or "|cffffcc00Порадник талантів:|r %d непризначених очок — відкрийте вікно талантів."
		return fmt:format(unspent)
	end
	local fmt = L["Talent hint classic"] or "|cffffcc00Порадник талантів:|r Вивчіть |cff66ccff%s|r (вкладка %d, ранг %d/%d) — білд: %s"
	return fmt:format(step.name, step.tab, step.current + 1, step.target, step.buildName or "?")
end

function TalentAdvisor:RefreshHint()
	self._hint = self:GetHint()
	if QC.UpdateUI then QC:UpdateUI() end
end

function TalentAdvisor:OpenTalents()
	if PlayerSpellsUtil and PlayerSpellsUtil.OpenToClassTalentsTab then
		pcall(PlayerSpellsUtil.OpenToClassTalentsTab)
	elseif ToggleTalentFrame then
		pcall(ToggleTalentFrame)
	elseif ShowUIPanel and PlayerTalentFrame then
		pcall(ShowUIPanel, PlayerTalentFrame)
	end
	local hint = self:GetHint()
	if hint then
		QC:Print(hint:gsub("|c%x%x%x%x%x%x", ""):gsub("|r", ""))
	end
	self:RefreshHint()
end

function TalentAdvisor:GetBuildString()
	local g = QC.CurrentGuide
	local t = g and g.headerdata and g.headerdata.talents
	if type(t) == "string" and t ~= "" then return t end
	local build = self:GetSelectedBuild()
	return build and build.name or nil
end

function TalentAdvisor:Show()
	self:OpenTalents()
end

function TalentAdvisor:OnLevelUp(level)
	if not (QC.db and QC.db.profile.general.talentAdvisor) then return end
	if level and UnspentTalentPoints() > 0 then
		QC:Notify(QC.L["Talent point available — /qc talents"] or "Talent point available — /qc talents", { 1, 0.85, 0.3 })
		self:RefreshHint()
	end
end

function TalentAdvisor:OnTalentChanged()
	self:RefreshHint()
	if QC.TryToCompleteStep then QC:TryToCompleteStep() end
end

function TalentAdvisor:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("PLAYER_TALENT_UPDATE", function() TalentAdvisor:OnTalentChanged() end)
	if C_SpecializationInfo then
		QC:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED", function() TalentAdvisor:OnTalentChanged() end)
	end
	self:RefreshHint()
end
