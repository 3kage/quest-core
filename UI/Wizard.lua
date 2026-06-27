-- QuestCore: first-run startup wizard (faction, zone, play style → guide).

local addonName, QuestCore = ...
local QC = QuestCore

local Wizard = {}
QC.Wizard = Wizard

local L = QC.L
local WHITE = "Interface\\Buttons\\WHITE8X8"
local Widgets = QC.UIWidgets

local FRAME_W, FRAME_H = 440, 480

local COLOR = {
	bg = { 0.06, 0.07, 0.09, 0.98 },
	border = { 0.10, 0.55, 0.85, 1.00 },
	title = { 0.10, 0.13, 0.18, 1.00 },
	label = { 0.85, 0.88, 0.92, 1.00 },
}

----------------------------------------------------------------------
-- Guide picking
----------------------------------------------------------------------

local function ClientFlavor()
	local c = QC.Compat and QC.Compat.Client
	if not c then return "retail" end
	if c.isClassicEra then return "classic_era" end
	if c.isMists then return "mists" end
	if c.isTBC then return "tbc" end
	if c.isCata then return "cata" end
	if c.isWrath then return "wrath" end
	return "retail"
end

local STARTER_GUIDES = {
	classic_era = {
		Alliance = {
			auto = "Leveling Guides\\Human Starter (1-15)",
			speedrun = "Leveling Guides\\Human Starter (1-15)",
			dungeon = "Leveling Guides\\Human Starter (1-15)",
			casual = "Leveling Guides\\Human Starter (1-15)",
		},
		Horde = {
			auto = "Leveling Guides\\Orc Starter (1-15)",
			speedrun = "Leveling Guides\\Orc Starter (1-15)",
			dungeon = "Leveling Guides\\Orc Starter (1-15)",
			casual = "Leveling Guides\\Orc Starter (1-15)",
		},
	},
	tbc = {
		Alliance = {
			auto = "Leveling Guides\\Starter Guides (1-11)\\Human Starter (1-11)",
			speedrun = "Leveling Guides\\Starter Guides (1-11)\\Human Starter (1-11)",
			dungeon = "Leveling Guides\\Classic (11-60)\\Darkshore (11-14)",
			casual = "Leveling Guides\\Starter Guides (1-11)\\Human Starter (1-11)",
		},
		Horde = {
			auto = "Leveling Guides\\Starter Guides (1-12)\\Orc & Troll Starter (1-6)",
			speedrun = "Leveling Guides\\Starter Guides (1-12)\\Orc & Troll Starter (1-6)",
			dungeon = "Leveling Guides\\Classic (12-60)\\The Barrens & Stonetalon Mountain (13-21)",
			casual = "Leveling Guides\\Starter Guides (1-12)\\Orc & Troll Starter (1-6)",
		},
	},
	mists = {
		Alliance = {
			auto = "Leveling Guides\\Starter Guides\\Human Starter (1-5)",
			speedrun = "Leveling Guides\\Starter Guides\\Human Starter (1-5)",
			dungeon = "Leveling Guides\\Eastern Kingdoms (1-60)\\Elwynn Forest (5-10)",
			casual = "Leveling Guides\\Starter Guides\\Human Starter (1-5)",
		},
		Horde = {
			auto = "Leveling Guides\\Starter Guides\\Orc Starter (1-5)",
			speedrun = "Leveling Guides\\Starter Guides\\Orc Starter (1-5)",
			dungeon = "Leveling Guides\\Kalimdor (1-60)\\Durotar (5-11)",
			casual = "Leveling Guides\\Starter Guides\\Orc Starter (1-5)",
		},
	},
	retail = {
		Alliance = {
			auto = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
			speedrun = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
			dungeon = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
			casual = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
		},
		Horde = {
			auto = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
			speedrun = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
			dungeon = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
			casual = "Leveling Guides\\The War Within (70-80)\\Intro & Isle of Dorn (70-71)",
		},
	},
}

local function FindGuideByTitle(title)
	if not title or not QC.GetGuide then return nil end
	local g = QC:GetGuide(title)
	if g then return g end
	local want = title:lower()
	for _, guide in ipairs(QC.registeredguides or {}) do
		if guide.title and guide.title:lower() == want then return guide end
	end
	for _, guide in ipairs(QC.registeredguides or {}) do
		if guide.title and guide.title:lower():find(want, 1, true) then return guide end
	end
	return nil
end

function Wizard:ResolveGuideTitle(style, zonePref)
	local faction = UnitFactionGroup and UnitFactionGroup("player") or "Alliance"
	local _, race = UnitRace and UnitRace("player")
	local flavor = ClientFlavor()
	style = style or "auto"

	if flavor == "classic_era" then
		if faction == "Horde" then
			if race == "Scourge" or race == "Undead" then
				return "Leveling Guides\\Undead Starter (1-14)"
			elseif race == "Tauren" then
				return "Leveling Guides\\Tauren Starter (1-12)"
			end
			return "Leveling Guides\\Orc & Troll Starter (1-12)"
		end
		if race == "NightElf" then
			return "Leveling Guides\\Starter Guides (1-11)\\Night Elf Starter (1-11)"
		elseif race == "Dwarf" or race == "Gnome" then
			return "Leveling Guides\\Dwarf & Gnome Starter (1-13)"
		end
		return "Leveling Guides\\Human Starter (1-15)"
	end

	if flavor == "mists" then
		if faction == "Horde" then
			if race == "Scourge" or race == "Undead" then
				return "Leveling Guides\\Starter Guides\\Undead Starter (1-5)"
			elseif race == "Tauren" then
				return "Leveling Guides\\Starter Guides\\Tauren Starter (1-5)"
			elseif race == "BloodElf" then
				return "Leveling Guides\\Starter Guides\\Blood Elf Starter (1-5)"
			elseif race == "Goblin" then
				return "Leveling Guides\\Starter Guides\\Goblin Starter (1-12)"
			elseif race == "Troll" then
				return "Leveling Guides\\Starter Guides\\Troll Starter (1-5)"
			end
			return "Leveling Guides\\Starter Guides\\Orc Starter (1-5)"
		end
		if race == "NightElf" then
			return "Leveling Guides\\Kalimdor (1-60)\\Night Elf (1-5)"
		elseif race == "Draenei" then
			return "Leveling Guides\\Starter Guides\\Draenei Starter (1-5)"
		elseif race == "Dwarf" then
			return "Leveling Guides\\Starter Guides\\Dwarf Starter (1-5)"
		elseif race == "Gnome" then
			return "Leveling Guides\\Starter Guides\\Gnome Starter (1-5)"
		elseif race == "Worgen" then
			return "Leveling Guides\\Starter Guides\\Worgen (1-13)"
		end
		return "Leveling Guides\\Starter Guides\\Human Starter (1-5)"
	end

	if flavor == "tbc" then
		if faction == "Horde" then
			if race == "Scourge" or race == "Undead" then
				return "Leveling Guides\\Starter Guides (1-12)\\Undead Starter (1-6)"
			elseif race == "Tauren" then
				return "Leveling Guides\\Starter Guides (1-12)\\Tauren Starter (1-10)"
			elseif race == "BloodElf" then
				return "Leveling Guides\\Starter Guides (1-12)\\Blood Elf Starter (1-5)"
			end
			return "Leveling Guides\\Starter Guides (1-12)\\Orc & Troll Starter (1-6)"
		end
		if race == "NightElf" then
			return "Leveling Guides\\Starter Guides (1-11)\\Night Elf Starter (1-11)"
		elseif race == "Draenei" then
			return "Leveling Guides\\Starter Guides (1-11)\\Draenei Starter (1-11)"
		elseif race == "Dwarf" or race == "Gnome" then
			return "Leveling Guides\\Starter Guides (1-11)\\Dwarf & Gnome Starter (1-11)"
		end
		return "Leveling Guides\\Starter Guides (1-11)\\Human Starter (1-11)"
	end

	local bucket = STARTER_GUIDES[flavor] or STARTER_GUIDES.retail
	local side = bucket[faction] or bucket.Alliance
	local title = side[style] or side.auto

	if zonePref and zonePref ~= "" and zonePref ~= "auto" then
		local needle = zonePref:lower()
		for _, guide in ipairs(QC.registeredguides or {}) do
			if guide.title and guide.title:lower():find(needle, 1, true) then
				if style == "dungeon" and guide.title:find("Dungeon", 1, true) then
					return guide.title
				elseif style ~= "dungeon" and not guide.title:find("Dungeon", 1, true) then
					return guide.title
				end
			end
		end
	end

	return title
end

function Wizard:ActivateGuide(style, zonePref)
	local title = self:ResolveGuideTitle(style, zonePref)
	local guide = FindGuideByTitle(title)
	if not guide then
		QC:Print("|cffff5555QuestCore:|r Could not find guide: " .. tostring(title))
		if QC.GuideMenu then QC.GuideMenu:Show() end
		return false
	end
	QC:SetGuide(guide.title, 1)
	return true
end

----------------------------------------------------------------------
-- UI
----------------------------------------------------------------------

local function SetFont(fs, size)
	if QC.Font and QC.Font.Apply then QC.Font.Apply(fs, size or 14)
	elseif fs and fs.SetFontObject then fs:SetFontObject(GameFontNormal) end
end

function Wizard:Create()
	if self.frame then return self.frame end

	local f = CreateFrame("Frame", "QuestCoreWizard", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
	f:SetSize(FRAME_W, FRAME_H)
	f:SetPoint("CENTER")
	f:SetFrameStrata("FULLSCREEN_DIALOG")
	f:SetMovable(true)
	f:EnableMouse(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", f.StartMoving)
	f:SetScript("OnDragStop", f.StopMovingOrSizing)
	f:Hide()

	if f.SetBackdrop then
		f:SetBackdrop({
			bgFile = WHITE, edgeFile = WHITE, edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		})
		f:SetBackdropColor(unpack(COLOR.bg))
		f:SetBackdropBorderColor(unpack(COLOR.border))
	end

	local titleBar = CreateFrame("Frame", nil, f)
	titleBar:SetPoint("TOPLEFT", 1, -1)
	titleBar:SetPoint("TOPRIGHT", -1, -1)
	titleBar:SetHeight(32)
	local tb = titleBar:CreateTexture(nil, "BACKGROUND")
	tb:SetTexture(WHITE)
	tb:SetAllPoints()
	tb:SetVertexColor(unpack(COLOR.title))

	local titleFs = titleBar:CreateFontString(nil, "OVERLAY")
	SetFont(titleFs, 16)
	titleFs:SetPoint("LEFT", 14, 0)
	titleFs:SetText("|cff33d6ffQuestCore|r " .. (L["Startup Wizard"] or "Startup Wizard"))

	local y = -48
	local function AddLabel(text)
		local fs = f:CreateFontString(nil, "OVERLAY")
		SetFont(fs, 14)
		fs:SetPoint("TOPLEFT", 16, y)
		fs:SetJustifyH("LEFT")
		fs:SetText(text)
		fs:SetTextColor(unpack(COLOR.label))
		y = y - 22
		return fs
	end

	AddLabel(L["Faction"] or "Faction")
	local factionFs = f:CreateFontString(nil, "OVERLAY")
	SetFont(factionFs, 14)
	factionFs:SetPoint("TOPLEFT", 16, y)
	factionFs:SetTextColor(1, 1, 1)
	self.factionText = factionFs
	y = y - 28

	AddLabel(L["Zone preference"] or "Zone preference")
	local zoneDrop = CreateFrame("Frame", "QuestCoreWizardZone", f, "UIDropDownMenuTemplate")
	zoneDrop:SetPoint("TOPLEFT", 8, y + 4)
	UIDropDownMenu_SetWidth(zoneDrop, 280)
	self.zoneDrop = zoneDrop
	y = y - 36

	AddLabel(L["Play style"] or "Play style")
	self.styleButtons = {}
	local styles = {
		{ id = "speedrun", label = L["Speedrun"] or "Speedrun" },
		{ id = "dungeon", label = L["Dungeon"] or "Dungeon" },
		{ id = "casual", label = L["Casual"] or "Casual" },
	}
	local bx = 16
	for _, st in ipairs(styles) do
		local btn = Widgets and Widgets.CreateFlatButton(f, st.label, {
			height = 24, minWidth = 90, maxWidth = 130,
			bgColor = { 0.14, 0.16, 0.22, 1 },
			hiColor = { 0.2, 0.45, 0.7 },
			onClick = function()
				self.selectedStyle = st.id
				Wizard:RefreshStyleButtons()
			end,
		}) or CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
		if not Widgets then
			btn:SetSize(100, 24)
			btn:SetText(st.label)
		end
		btn:SetPoint("TOPLEFT", bx, y)
		bx = bx + (btn:GetWidth() or 100) + 8
		self.styleButtons[st.id] = btn
	end
	self.selectedStyle = "casual"
	y = y - 40

	AddLabel(L["Talent build"] or "Спеціалізація талантів")
	local buildDrop = CreateFrame("Frame", "QuestCoreWizardBuild", f, "UIDropDownMenuTemplate")
	buildDrop:SetPoint("TOPLEFT", 8, y + 4)
	UIDropDownMenu_SetWidth(buildDrop, 280)
	self.buildDrop = buildDrop
	self.buildFallback = f:CreateFontString(nil, "OVERLAY")
	SetFont(self.buildFallback, 12)
	self.buildFallback:SetPoint("TOPLEFT", 16, y + 2)
	self.buildFallback:SetPoint("TOPRIGHT", -16, y + 2)
	self.buildFallback:SetJustifyH("LEFT")
	self.buildFallback:SetWordWrap(true)
	self.buildFallback:SetTextColor(0.65, 0.7, 0.75)
	self.buildFallback:Hide()
	y = y - 36

	local hint = f:CreateFontString(nil, "OVERLAY")
	SetFont(hint, 12)
	hint:SetPoint("TOPLEFT", 16, y)
	hint:SetPoint("TOPRIGHT", -16, y)
	hint:SetJustifyH("LEFT")
	hint:SetWordWrap(true)
	hint:SetTextColor(0.7, 0.75, 0.8)
	hint:SetText(L["Wizard hint"] or "We'll pick a leveling guide that matches your choices.")
	self.hintText = hint
	y = y - 50

	local startBtn = Widgets and Widgets.CreatePanelButton(f, L["Start guide"] or "Start guide", {
		height = 30, minWidth = 140, maxWidth = 200,
		onClick = function() Wizard:Finish() end,
	}) or CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	startBtn:SetPoint("BOTTOM", 0, 16)
	if not Widgets then startBtn:SetSize(140, 30); startBtn:SetText(L["Start guide"] or "Start guide") end
	self.startBtn = startBtn

	self.frame = f
	return f
end

function Wizard:RefreshStyleButtons()
	for id, btn in pairs(self.styleButtons or {}) do
		if btn.bg then
			if id == self.selectedStyle then
				btn.bg:SetVertexColor(0.18, 0.42, 0.62, 1)
			else
				btn.bg:SetVertexColor(0.14, 0.16, 0.22, 1)
			end
		end
	end
end

function Wizard:PopulateZones()
	local flavor = ClientFlavor()
	local zones = { { id = "auto", name = L["Auto (recommended)"] or "Auto (recommended)" } }
	local seen = {}
	for _, guide in ipairs(QC.registeredguides or {}) do
		if guide.title and guide.title:find("Leveling", 1, true) then
			local zone = guide.title:match("[^\\]+$")
			if zone and not seen[zone] then
				seen[zone] = true
				zones[#zones + 1] = { id = zone, name = zone }
			end
		end
		if #zones > 12 then break end
	end

	self._zones = zones
	self.selectedZone = "auto"

	UIDropDownMenu_Initialize(self.zoneDrop, function(_, level)
		for _, z in ipairs(zones) do
			local info = UIDropDownMenu_CreateInfo()
			info.text = z.name
			info.func = function()
				self.selectedZone = z.id
				UIDropDownMenu_SetText(self.zoneDrop, z.name)
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end)
	UIDropDownMenu_SetText(self.zoneDrop, zones[1].name)
end

function Wizard:PopulateBuilds()
	local TA = QC.TalentAdvisor
	local builds = (TA and TA.GetBuildsForPlayer) and TA:GetBuildsForPlayer() or {}
	self._builds = builds
	self.selectedBuild = nil

	local hasBuilds = builds and #builds > 0
	if self.buildDrop then
		if hasBuilds then
			self.buildDrop:Show()
			if self.buildFallback then self.buildFallback:Hide() end
			self.selectedBuild = builds[1].key
			UIDropDownMenu_Initialize(self.buildDrop, function(_, level)
				for _, b in ipairs(builds) do
					local info = UIDropDownMenu_CreateInfo()
					info.text = b.name
					info.func = function()
						self.selectedBuild = b.key
						UIDropDownMenu_SetText(self.buildDrop, b.name)
					end
					UIDropDownMenu_AddButton(info, level)
				end
			end)
			UIDropDownMenu_SetText(self.buildDrop, builds[1].name)
		else
			self.buildDrop:Hide()
			if self.buildFallback then
				self.buildFallback:SetText(L["No talent builds"] or "Немає доступних білдів для цієї версії гри.")
				self.buildFallback:Show()
			end
		end
	end
end

function Wizard:Show()
	self:Create()
	local faction = UnitFactionGroup and UnitFactionGroup("player") or "?"
	if self.factionText then
		self.factionText:SetText("|cffffffff" .. tostring(faction) .. "|r")
	end
	self:PopulateZones()
	self:PopulateBuilds()
	self:RefreshStyleButtons()
	self.frame:Show()
end

function Wizard:Hide()
	if self.frame then self.frame:Hide() end
end

function Wizard:Finish()
	local style = self.selectedStyle or "casual"
	local zone = self.selectedZone or "auto"
	if QC.db and QC.db.profile then
		QC.db.profile.wizard = QC.db.profile.wizard or {}
		QC.db.profile.wizard.style = style
		QC.db.profile.wizard.zonePref = zone
	end
	if QC.db and QC.db.char then
		QC.db.char.wizardComplete = true
		if self.selectedBuild and self.selectedBuild ~= "" and QC.TalentAdvisor and QC.TalentAdvisor.SelectBuild then
			QC.TalentAdvisor:SelectBuild(self.selectedBuild)
		end
	end
	if QC.db and QC.db.global then
		QC.db.global.seenWelcome = true
	end
	if QC.TalentAdvisor and QC.TalentAdvisor.MarkSetupDone then
		-- Optional skip if user has not opened talents yet.
	end
	if QC.GoldScanner and QC.GoldScanner.SkipScan then
		QC.GoldScanner:SkipScan()
	end
	if QC.Inventory and QC.Inventory.MarkBankKnown then
		-- Bank scan optional on wizard complete.
	end
	self:Hide()
	self:ActivateGuide(style, zone)
	QC:Print("|cff33d6ffQuestCore|r — " .. (L["Guide activated. Good luck!"] or "Guide activated. Good luck!"))
	if QC.UI and QC.UI.Show then QC.UI:Show() end
end

function Wizard:ShouldShow()
	if not (QC.db and QC.db.char) then return false end
	if QC.db.char.wizardComplete then return false end
	if QC.db.char.guidename and QC.db.char.guidename ~= "" then return false end
	return true
end

function Wizard:TryShow()
	if not self:ShouldShow() then return false end
	self:ScheduleShow()
	return true
end

function Wizard:ScheduleShow()
	self:Create()
	if C_Timer and C_Timer.After then
		C_Timer.After(1.5, function()
			if Wizard:ShouldShow() then Wizard:Show() end
		end)
	else
		QC:ScheduleTimer(function()
			if Wizard:ShouldShow() then Wizard:Show() end
		end, 1.5)
	end
end

function Wizard:Enable()
	if self._enabled then return end
	self._enabled = true
end
