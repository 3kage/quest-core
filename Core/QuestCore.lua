-- QuestCore: lightweight quest leveling guide engine.
-- Core namespace, lifecycle and the step-advancement state machine.

local addonName, QuestCore = ...

LibStub("AceAddon-3.0"):NewAddon(QuestCore, addonName, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

local QC = QuestCore
_G["QuestCore"] = QuestCore
_G["QC"] = QC

-- Lazy localization lookup (QC.L is populated by Core/Locale.lua).
local function L(k) return (QC.L and QC.L[k]) or k end

QC.version = "3.0.1"

-- Community data pack (guides, quest DB) on GitHub. Engine updates via CurseForge.
QC.DATA_PACK_REPO = "https://github.com/3kage/quest-core"
QC.DATA_PACK_URL = "https://github.com/3kage/quest-core/releases"
QC.DATA_PACK_UPDATER_URL = "https://github.com/3kage/quest-core/releases/latest/download/QuestCore-Updater.zip"
QC.DATA_PACK_INSTALL_PATH = "Interface\\AddOns\\QuestCore_Data"
QC.DATA_PACK_MIN_GUIDES = 1
QC.CURSEFORGE_HINT = "CurseForge"

-- Key binding display names (used by the Key Bindings UI).
_G.BINDING_HEADER_QUESTCORE = "QuestCore"
_G.BINDING_NAME_QUESTCORE_TOGGLE = "Toggle guide window"
_G.BINDING_NAME_QUESTCORE_MENU = "Open guide menu"
_G.BINDING_NAME_QUESTCORE_NEXT = "Next step"
_G.BINDING_NAME_QUESTCORE_PREV = "Previous step"
_G.BINDING_NAME_QUESTCORE_OPTIONS = "Open settings"

-- Map libraries.
QC.HBD = LibStub("HereBeDragons-2.0")
QC.HBDPins = LibStub("HereBeDragons-Pins-2.0")

-- Guide registry and runtime state.
QC.registeredguides = {}            -- array of Guide objects
QC.RegisteredGuidesByTitle = {}     -- [title] = Guide
QC.CurrentGuide = nil
QC.CurrentStep = nil
QC.CurrentStepNum = nil
QC._guideFinished = nil  -- title of guide that has fired end-of-guide handling

-- Completion loop pacing.
QC.completioninterval = 0.1
QC._lastcompletion = 0

-- Sanitize a guide title to a single canonical form.
function QC:SanitizeGuideTitle(title)
	return (tostring(title):gsub("/", "\\"))
end

-- Register a guide. Stored unparsed; parsed lazily on load.
function QC:RegisterGuide(title, header, data)
	if self.Guide and self.Guide.Register then
		return self.Guide:Register(title, header, data)
	end
	title = self:SanitizeGuideTitle(title)
	if type(header) == "string" then
		data = header
		header = {}
	end
	local guide = self.GuideProto:New(title, header or {}, data)
	self.registeredguides[#self.registeredguides + 1] = guide
	self.RegisteredGuidesByTitle[title] = guide
	return guide
end

-- Find a registered guide by (sanitized) title.
function QC:GetGuide(title)
	if not title then return nil end
	return self.RegisteredGuidesByTitle[self:SanitizeGuideTitle(title)]
end

function QC:HasGuide(title)
	return self:GetGuide(title) ~= nil
end

function QC:DebugLog(msg, ctx)
	if not msg then return end
	ctx = ctx or {}
	local guideName = ctx.guide
		or (self.CurrentGuide and (self.CurrentGuide.title_short or self.CurrentGuide.title))
	local stepNum = ctx.step or self.CurrentStepNum
	local prefix = "QuestCore"
	if guideName then prefix = prefix .. " [" .. tostring(guideName) .. "]" end
	if stepNum then prefix = prefix .. " step " .. tostring(stepNum) end
	local full = prefix .. ": " .. tostring(msg)
	if self.Print then self:Print("|cffffaa55" .. full .. "|r") end
end

function QC:GuideUnavailableMessage(title)
	title = title or "?"
	if self.db and self.db.profile and self.db.profile.locale == "ukUA" then
		return ("QuestCore: Гайд [%s] недоступний у цій версії гри."):format(title)
	end
	if GetLocale and GetLocale():sub(1, 2) == "uk" then
		return ("QuestCore: Гайд [%s] недоступний у цій версії гри."):format(title)
	end
	local tpl = (self.L and self.L["Guide unavailable in this game version"])
		or "QuestCore: Guide [%s] is not available in this game version."
	return tpl:format(title)
end

-- Load a linked guide from a goal; skip safely when the guide is missing on this client.
function QC:TryLoadGuide(title, goal)
	if not title or title == "" then return false end
	if self:HasGuide(title) then
		return self:SetGuide(title, 1)
	end
	self:Print(self:GuideUnavailableMessage(title))
	if goal then
		goal.confirmed = true
		goal._loadguideUnavailable = true
	end
	self:RefreshQuestUI()
	return false
end

function QC:RefreshQuestUI()
	if self.TryToCompleteStep then self:TryToCompleteStep() end
	self:UpdateUI()
	self:UpdateWaypoints()
end

-- Manual trainer unless autoTrainer is enabled in settings.
function QC:IsManualTrainer()
	local g = self.db and self.db.profile and self.db.profile.general
	if not g then return true end
	if g.autoTrainer == true then return false end
	if g.manualTrainer == false then return false end
	return true
end

function QC:IsAutoTrainer()
	return not self:IsManualTrainer()
end

function QC:ApplyStepProgress(guide)
	if not guide or not guide.steps then return end
	local gid = guide.title
	for i, step in ipairs(guide.steps) do
		if self.State and self.State.IsStepSkipped and self.State:IsStepSkipped(gid, i) then
			step.manualdone = true
		end
	end
end

function QC:MarkStepComplete(stepNum, advance)
	local guide = self.CurrentGuide
	if not guide or not guide.steps then return false end
	stepNum = tonumber(stepNum) or self.CurrentStepNum
	if not stepNum or stepNum < 1 or stepNum > #guide.steps then return false end
	local step = guide.steps[stepNum]
	if not step then return false end
	step.manualdone = true
	if self.State and self.State.MarkStepSkipped then
		self.State:MarkStepSkipped(guide.title, stepNum)
	end
	if advance and stepNum == self.CurrentStepNum then
		if self:IsGuideAtEnd() then
			self:OnGuideFinished(guide)
		else
			self:SkipStep()
		end
	elseif not advance then
		self:TryToCompleteStep()
		self:UpdateUI()
	end
	return true
end

-- Return guides grouped by category (first path segment of the title).
function QC:GetGuidesByCategory()
	local cats = {}
	for _, guide in ipairs(self.registeredguides) do
		local cat = guide.category or "Guides"
		if not cats[cat] then cats[cat] = {} end
		cats[cat][#cats[cat] + 1] = guide
	end
	return cats
end

-- Build a multi-level tree from backslash-separated guide titles.
-- Node = { name, path, children = {nodes}, guides = {Guide}, isLeaf }
function QC:GetGuideTree()
	local root = { name = "", path = "", children = {}, childidx = {}, guides = {} }

	for _, guide in ipairs(self.registeredguides) do
		local segments = {}
		for seg in guide.title:gmatch("[^\\]+") do
			segments[#segments + 1] = seg
		end

		local node = root
		local acc = ""
		for i = 1, #segments - 1 do
			local seg = segments[i]
			acc = (acc == "") and seg or (acc .. "\\" .. seg)
			local child = node.childidx[seg]
			if not child then
				child = { name = seg, path = acc, children = {}, childidx = {}, guides = {} }
				node.childidx[seg] = child
				node.children[#node.children + 1] = child
			end
			node = child
		end
		node.guides[#node.guides + 1] = guide
	end

	return root
end

-- A guide's level range from its (unparsed) header.
function QC:GetGuideLevels(guide)
	local h = guide.headerdata or {}
	return tonumber(h.startlevel), tonumber(h.endlevel)
end

-- Heuristic: is this guide appropriate for the player's level?
function QC:IsGuideForMyLevel(guide)
	local lvl = UnitLevel("player")
	local s, e = self:GetGuideLevels(guide)
	if not s and not e then return true end
	if s and lvl < s - 2 then return false end
	if e and lvl > e + 5 then return false end
	return true
end

-- Is the guide finished for this character (condition_end header)?
function QC:IsGuideEnded(guide)
	local fn = guide.headerdata and guide.headerdata.condition_end
	if type(fn) ~= "function" then return false end
	return self:EvalHeaderCondition(fn) and true or false
end

-- Run a guide's condition_suggested header (if any) safely.
function QC:IsGuideSuggested(guide)
	local fn = guide.headerdata and guide.headerdata.condition_suggested
	if type(fn) ~= "function" then return nil end
	return self:EvalHeaderCondition(fn)
end

-- Is the guide marked invalid for this character (condition_valid == false)?
function QC:IsGuideValid(guide)
	local fn = guide.headerdata and guide.headerdata.condition_valid
	if type(fn) ~= "function" then return true end
	local res = self:EvalHeaderCondition(fn)
	if res == nil then return true end
	return res
end

----------------------------------------------------------------------
-- Recent / continue history
----------------------------------------------------------------------

function QC:PushRecentGuide(title)
	local recent = self.db.char.recent
	if not recent then recent = {}; self.db.char.recent = recent end
	for i = #recent, 1, -1 do
		if recent[i] == title then table.remove(recent, i) end
	end
	table.insert(recent, 1, title)
	while #recent > 8 do table.remove(recent) end
end

function QC:GetRecentGuides()
	local out = {}
	for _, title in ipairs(self.db.char.recent or {}) do
		local g = self:GetGuide(title)
		if g then out[#out + 1] = g end
	end
	return out
end

-- Best level-appropriate guide whose title references the given zone name.
function QC:GetGuideForZone(zoneName, level)
	if not zoneName or zoneName == "" then return nil end
	local needle = zoneName:lower()
	local best, bestScore
	for _, guide in ipairs(self.registeredguides) do
		if guide.title:lower():find(needle, 1, true) then
			local score = 0
			if self:IsGuideForMyLevel(guide) then score = score + 20 end
			if guide.category and guide.category:find("Leveling") then score = score + 5 end
			local s = select(1, self:GetGuideLevels(guide))
			if s and level then score = score - math.abs(level - s) * 0.1 end
			if not bestScore or score > bestScore then
				bestScore, best = score, guide
			end
		end
	end
	return best
end

-- On zone change, load a matching guide if the option is enabled.
function QC:AutoZoneGuide()
	if not self.db.profile.general.autoZoneGuide then return end

	local zone
	if C_Map and C_Map.GetBestMapForUnit then
		local m = C_Map.GetBestMapForUnit("player")
		local info = m and C_Map.GetMapInfo(m)
		zone = info and info.name
	end
	zone = zone or (GetZoneText and GetZoneText())
	if not zone or zone == "" or zone == self._lastAutoZone then return end
	self._lastAutoZone = zone

	-- Skip if the current guide already covers this zone.
	if self.CurrentGuide and self.CurrentGuide.title:lower():find(zone:lower(), 1, true) then
		return
	end

	local g = self:GetGuideForZone(zone, UnitLevel("player"))
	if g and g ~= self.CurrentGuide then
		self:SetGuide(g, 1)
		self:Notify(g.title_short or g.title, { 0.4, 0.85, 1.0 })
	end
end

function QC:ZONE_CHANGED_NEW_AREA()
	self:AutoZoneGuide()
end

-- Best-matching guide for the player right now (suggested > level range).
function QC:GetSuggestedGuide()
	local best, bestScore
	for _, guide in ipairs(self.registeredguides) do
		if self.IsGuideEnded and self:IsGuideEnded(guide) then
		elseif self.IsGuideValid and not self:IsGuideValid(guide) then
		else
			local score = 0
			local sug = self:IsGuideSuggested(guide)
			if sug == true then score = score + 100 end
			if sug == false then score = score - 100 end
			if self:IsGuideForMyLevel(guide) then score = score + 10 end
			-- Prefer Leveling guides for the suggestion.
			if guide.category and guide.category:find("Leveling") then score = score + 5 end
			local s = select(1, self:GetGuideLevels(guide))
			if s then score = score - math.abs(UnitLevel("player") - s) * 0.1 end
			if not bestScore or score > bestScore then
				bestScore, best = score, guide
			end
		end
	end
	return best
end

-- Does the current step reference this quest with the given action?
function QC:StepReferencesQuest(questid, kind)
	local step = self.CurrentStep
	if not step or not step.goals or not questid then return false end
	questid = tonumber(questid)
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() then
			local gid = tonumber(goal.questid or goal.questID)
			if not gid and self.QuestDB and self.QuestDB.ResolveGoalQuestID then
				gid = self.QuestDB:ResolveGoalQuestID(goal)
			end
			if gid == questid then
				if not kind or goal.action == kind then return true end
			end
		end
	end
	return false
end

-- True when a visible goal blocks auto-accept/turn-in for this quest.
function QC:StepBlocksAutoQuest(questid, kind)
	local step = self.CurrentStep
	if not step or not step.goals or not questid then return false end
	for _, goal in ipairs(step.goals) do
		if goal.questid == questid and goal:IsVisible() and goal.noautoaccept then
			if not kind or goal.action == kind then return true end
		end
	end
	return false
end

-- Incomplete sticky goals from steps before the current one.
function QC:GetActiveStickyGoals()
	local out = {}
	local guide = self.CurrentGuide
	local cur = self.CurrentStepNum or 1
	if not guide or not guide.steps then return out end

	for _, step in ipairs(guide.steps) do
		if step.num < cur and step.goals then
			for _, goal in ipairs(step.goals) do
				if goal.sticky and goal:IsVisible() and goal:IsCompleteable() and not goal:IsComplete() then
					out[#out + 1] = goal
				end
			end
		end
	end
	return out
end

----------------------------------------------------------------------
-- Lifecycle
----------------------------------------------------------------------

local function CopyColor4(t)
	return { t[1], t[2], t[3], t[4] }
end

local function CopyColor3(t)
	return { t[1], t[2], t[3] }
end

-- Factory color palette (used for reset and fallbacks).
QC.COLOR_DEFAULTS = {
	routes = {
		lineColor = { 0, 0.8, 1, 0.7 },
		dotColor = { 0.35, 0.80, 1.00, 0.75 },
	},
	arrow = {
		colorGood = { 0.30, 0.95, 0.35 },
		colorBad = { 1.00, 0.45, 0.25 },
	},
	goals = {
		complete = { 0.30, 0.80, 0.30, 1.00 },
		active = { 0.95, 0.78, 0.20, 1.00 },
		passive = { 0.45, 0.47, 0.52, 1.00 },
	},
	bars = {
		xp = { 0.55, 0.20, 0.78, 0.95 },
		xpRested = { 0.25, 0.35, 0.78, 0.70 },
		progress = { 0.20, 0.55, 0.85, 0.90 },
	},
	pins = {
		active = { 0.10, 0.70, 1.00, 1.00 },
		route = { 0.40, 0.75, 0.95, 1.00 },
	},
	questPins = {
		accept = { 1.00, 0.82, 0.10, 1.00 },
		turnin = { 0.30, 0.85, 0.30, 1.00 },
		objective = { 1.00, 0.20, 0.20, 1.00 },
		talk = { 0.20, 0.50, 1.00, 1.00 },
		outline = { 0.00, 0.00, 0.00, 1.00 },
	},
	poi = {
		treasure = { 1.00, 0.82, 0.20, 1.00 },
		rare = { 0.80, 0.40, 0.95, 1.00 },
	},
	window = {
		border = { 0.10, 0.55, 0.85, 1.00 },
		accent = { 0.10, 0.55, 0.85, 1.00 },
	},
}

local function CloneUIColorDefaults()
	local D = QC.COLOR_DEFAULTS
	return {
		goals = {
			complete = CopyColor4(D.goals.complete),
			active = CopyColor4(D.goals.active),
			passive = CopyColor4(D.goals.passive),
		},
		bars = {
			xp = CopyColor4(D.bars.xp),
			xpRested = CopyColor4(D.bars.xpRested),
			progress = CopyColor4(D.bars.progress),
		},
		pins = {
			active = CopyColor4(D.pins.active),
			route = CopyColor4(D.pins.route),
		},
		questPins = {
			accept = CopyColor4(D.questPins.accept),
			turnin = CopyColor4(D.questPins.turnin),
			objective = CopyColor4(D.questPins.objective),
			talk = CopyColor4(D.questPins.talk),
			outline = CopyColor4(D.questPins.outline),
		},
		poi = {
			treasure = CopyColor4(D.poi.treasure),
			rare = CopyColor4(D.poi.rare),
		},
		window = {
			border = CopyColor4(D.window.border),
			accent = CopyColor4(D.window.accent),
		},
	}
end

-- Return a saved color table or the factory default.
function QC:GetColor(category, key)
	local D = self.COLOR_DEFAULTS
	if category == "routes" then
		local r = self.db and self.db.profile and self.db.profile.routes
		local def = D.routes and D.routes[key]
		local c = r and r[key]
		if c then return c end
		return def
	end
	if category == "arrow" then
		local a = self.db and self.db.profile and self.db.profile.arrow
		local def = D.arrow and D.arrow[key]
		local c = a and a[key]
		if c then return c end
		return def
	end
	local colors = self.db and self.db.profile and self.db.profile.colors
	local def = D[category] and D[category][key]
	local c = colors and colors[category] and colors[category][key]
	if c then return c end
	return def
end

-- section: routes | arrow | goals | bars | pins | poi | window | all
function QC:ResetColors(section)
	if not (self.db and self.db.profile) then return end
	local D = self.COLOR_DEFAULTS
	local profile = self.db.profile

	local function ensureColors()
		profile.colors = profile.colors or CloneUIColorDefaults()
		return profile.colors
	end

	if section == "routes" or section == "all" then
		profile.routes = profile.routes or {}
		profile.routes.lineColor = CopyColor4(D.routes.lineColor)
		profile.routes.dotColor = CopyColor4(D.routes.dotColor)
	end
	if section == "arrow" or section == "all" then
		profile.arrow = profile.arrow or {}
		profile.arrow.colorGood = CopyColor3(D.arrow.colorGood)
		profile.arrow.colorBad = CopyColor3(D.arrow.colorBad)
	end
	if section == "goals" or section == "all" then
		local c = ensureColors()
		c.goals = {
			complete = CopyColor4(D.goals.complete),
			active = CopyColor4(D.goals.active),
			passive = CopyColor4(D.goals.passive),
		}
	end
	if section == "bars" or section == "all" then
		local c = ensureColors()
		c.bars = {
			xp = CopyColor4(D.bars.xp),
			xpRested = CopyColor4(D.bars.xpRested),
			progress = CopyColor4(D.bars.progress),
		}
	end
	if section == "pins" or section == "all" then
		local c = ensureColors()
		c.pins = {
			active = CopyColor4(D.pins.active),
			route = CopyColor4(D.pins.route),
		}
	end
	if section == "questPins" or section == "all" then
		local c = ensureColors()
		c.questPins = {
			accept = CopyColor4(D.questPins.accept),
			turnin = CopyColor4(D.questPins.turnin),
			objective = CopyColor4(D.questPins.objective),
			talk = CopyColor4(D.questPins.talk),
			outline = CopyColor4(D.questPins.outline),
		}
		if section == "questPins" then
			profile.questPins = profile.questPins or {}
			profile.questPins.size = 10
			profile.questPins.shape = "circle"
			profile.questPins.outline = true
			profile.questPins.outlineSize = 2
		end
	end
	if section == "poi" or section == "all" then
		local c = ensureColors()
		c.poi = {
			treasure = CopyColor4(D.poi.treasure),
			rare = CopyColor4(D.poi.rare),
		}
	end
	if section == "window" or section == "all" then
		local c = ensureColors()
		c.window = {
			border = CopyColor4(D.window.border),
			accent = CopyColor4(D.window.accent),
		}
	end

	if self.Options and self.Options.ApplyAll then self.Options:ApplyAll() end
	self:UpdateUI()
	self:UpdateWaypoints()
	if self.POI and self.POI.Refresh then self.POI:Refresh() end
	if self.QuestMapPins and self.QuestMapPins.Refresh then self.QuestMapPins:Refresh() end
end

-- Reset one color to factory default (category + key, e.g. routes/lineColor, goals/complete).
function QC:ResetColor(category, key)
	if not (self.db and self.db.profile) then return end
	local D = self.COLOR_DEFAULTS
	local profile = self.db.profile

	if category == "routes" then
		profile.routes = profile.routes or {}
		local def = D.routes and D.routes[key]
		if def then profile.routes[key] = CopyColor4(def) end
	elseif category == "arrow" then
		profile.arrow = profile.arrow or {}
		local def = D.arrow and D.arrow[key]
		if def then profile.arrow[key] = CopyColor3(def) end
	else
		profile.colors = profile.colors or CloneUIColorDefaults()
		local def = D[category] and D[category][key]
		if def then
			profile.colors[category] = profile.colors[category] or {}
			profile.colors[category][key] = CopyColor4(def)
		end
	end

	if self.Options and self.Options.ApplyAll then self.Options:ApplyAll() end
	self:UpdateUI()
	self:UpdateWaypoints()
	if self.POI and self.POI.Refresh then self.POI:Refresh() end
	if self.QuestMapPins and self.QuestMapPins.Refresh then self.QuestMapPins:Refresh() end
end

local DB_DEFAULTS = {
	profile = {
		enabled = true,
		debug = false,
		window = {
			point = "CENTER", relpoint = "CENTER", x = 0, y = 0,
			width = 280, height = 320,
			shown = true,
			showMainLog = false,
			opacity = 0.92,
			combatOpacity = 0.92,
			scale = 1.0,
			locked = false,
			showProgress = true,
			stepsShown = 1,
			fontSize = 14,
			hideCompleted = false,
			hideBorder = false,
			showXP = true,
		},
		framePosition = {
			point = "CENTER", relpoint = "CENTER", x = 0, y = 0,
			width = 300, height = 380,
		},
		arrow = {
			point = "TOP", x = 0, y = -120,
			shown = true,
			scale = 1.0,
			showDistance = true,
			arrival = 8,
			locked = false,
			skin = "classic",
			fontSize = 12,
			outline = false,
			units = "yards",
			colorGood = { 0.30, 0.95, 0.35 },
			colorBad  = { 1.00, 0.45, 0.25 },
		},
		questPins = {
			size = 10,
			shape = "circle",   -- square | circle | diamond
			outline = true,
			outlineSize = 2,
		},
		routes = {
			showLines = true,
			showPins = true,
			routeStyle = "both",  -- both | dots | lines
			pinSize = 12,
			pinShape = "circle",   -- square | circle | diamond
			pinOutline = false,
			pinOutlineSize = 2,
			lineThickness = 2,
			lineColor = { 0, 0.8, 1, 0.7 },
			dotColor = { 0.35, 0.80, 1.00, 0.75 },
			dotSpeed = 0.4,
			pathfinding = true,
			autoRoute = true,
			recalcRoute = true,
			recalcYards = 45,
			recalcCooldown = 4.0,
		},
		minimap = {
			hidden = false,
			angle = 220,
		},
		general = {
			autoAdvance = true,
			suggestOnLogin = false,
			sound = true,
			autoScroll = true,
			notifications = true,
			hideBlizzTracker = false,
			autoZoneGuide = false,
			autoAccept = false,
			autoTurnIn = false,
			autoQuestModifier = "none",  -- none | shift | ctrl | alt
			currencyBar = false,
			deathArrow = true,
			poiOverlay = false,
			questMapPins = true,
			skipCinematics = false,
			gearAdvisor = false,
			smartSkip = true,
			autoGossip = false,
			manualTrainer = true, -- default: train manually; step completes on TRAINER_CLOSED
			autoTrainer = false,  -- when true: auto trainer gossip + BuyTrainerService
			autoQuestRewards = true,
			talentAdvisor = false,
			tts = false,
			actionButton = true,    -- one-click cast/use/macro button for the step
			autoTakeTaxi = false,   -- auto-board flight master node on a travel route
			questStepJump = true,   -- jump guide to a quest's step when it updates
		},
		colors = CloneUIColorDefaults(),
		automation = {
			autoQuest = false,
		},
		talentAdvisor = {
			selectedBuild = nil,
		},
		auction_enable = false,
		wizard = {
			style = "casual",
			zonePref = "auto",
		},
	},
	char = {
		guidename = nil,
		activeGuideID = nil,
		step = 1,
		currentStep = 1,
		skippedSteps = {},
		recent = {},
		history = {},
		stickySaved = {},
		completedQuests = {},
		wizardComplete = false,
		talentSetupDone = false,
		bankScanned = false,
		lastGoldScan = 0,
		flightDataSeeded = false,
		selectedBuild = nil,
	},
	global = {
		customGuides = {},
		menuExpanded = {},    -- [nodepath] = true (collapsed by default)
		menuLevelFilter = false,
		autoProfileBySpec = false,
		locale = "auto",
		seenWelcome = false,
		dataPackURL = "",
		suppressDataPackPrompt = false,
	},
}

-- Exposed so the profile import/export can snapshot the full effective profile.
QC.DB_DEFAULTS = DB_DEFAULTS

function QC:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("QuestCoreDB", DB_DEFAULTS, true)
	if self.State and self.State.Init then
		self.State:Init(self.db)
	end
	local profile = self.db.profile
	if profile and not profile._fontSizeBumped then
		profile.window = profile.window or {}
		profile.arrow = profile.arrow or {}
		if (profile.window.fontSize or 12) < 14 then profile.window.fontSize = 14 end
		if (profile.arrow.fontSize or 10) < 12 then profile.arrow.fontSize = 12 end
		profile._fontSizeBumped = true
	end
	if profile and not profile._manualTrainerDefaulted then
		profile.general = profile.general or {}
		profile.general.manualTrainer = true
		profile.general.autoTrainer = false
		profile._manualTrainerDefaulted = true
	end
	if profile and not profile._mainLogSplit then
		profile.window = profile.window or {}
		if profile.window.shown ~= false then
			profile.window.showMainLog = true
		end
		profile._mainLogSplit = true
	end
	if profile and profile.general and profile.general.questMapPins == nil then
		profile.general.questMapPins = true
	end
	if profile and not profile.questPins then
		profile.questPins = {
			size = 10,
			shape = "circle",
			outline = true,
			outlineSize = 2,
		}
	end
	if profile and profile.routes then
		if profile.routes.pinShape == nil then profile.routes.pinShape = "circle" end
		if profile.routes.pinOutline == nil then profile.routes.pinOutline = false end
		if profile.routes.pinOutlineSize == nil then profile.routes.pinOutlineSize = 2 end
	end
	if profile and profile.colors and not profile.colors.questPins then
		profile.colors.questPins = CloneUIColorDefaults().questPins
	end

	-- Apply the saved interface language (before any UI is built in OnEnable).
	if QC.ApplyLocale then QC.ApplyLocale(self.db.global.locale) end
	if QC.Font and QC.Font.Init then QC.Font.Init() end
	if QC.DataPack and QC.DataPack.Init then QC.DataPack.Init() end

	self.CurrentGuideName = self.db.char.guidename
	if self.State and self.State.GetActiveGuide then
		local aid = self.State:GetActiveGuide()
		if aid then self.CurrentGuideName = aid end
	end
	self.CurrentStepNum = (self.State and self.State.GetCurrentStep and self.State:GetCurrentStep()) or self.db.char.step or 1

	self:RegisterChatCommand("qc", "OnSlashCommand")
	self:RegisterChatCommand("questcore", "OnSlashCommand")

	-- Re-apply settings whenever the active profile changes.
	self.db.RegisterCallback(self, "OnProfileChanged", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileCopied", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileReset", "RefreshConfig")
end

-- Push the current profile's settings onto all live UI.
function QC:RefreshConfig()
	if self.MinimapButton and self.MinimapButton.button then
		if self.db.profile.minimap.hidden then
			self.MinimapButton:Hide()
		else
			self.MinimapButton:Show()
			self.MinimapButton:SetAngle(self.db.profile.minimap.angle or 220)
		end
	end
	if self.Options then
		self.Options:ApplyAll()
		if self.Options.RefreshAll then self.Options:RefreshAll() end
	end
	self:ApplyMainLogVisibility()
	self:ApplyTrackerVisibility()
	self:UpdateUI()
	self:UpdateWaypoints()
	self:UpdateBlizzTracker()
end

-- Combat fade: re-apply window opacity when entering/leaving combat.
function QC:PLAYER_REGEN_DISABLED()
	if self.Options then self.Options:ApplyWindow() end
end

function QC:PLAYER_REGEN_ENABLED()
	if self.Options then self.Options:ApplyWindow() end
	if self.UI and self.UI._itemBtnDirty and self.UI.UpdateItemButton then
		self.UI:UpdateItemButton()
	end
	if self.GuideFrame and self.GuideFrame._itemBtnDirty and self.GuideFrame.UpdateItemButton then
		self.GuideFrame:UpdateItemButton()
	end
end

-- Running tally of XP gained this session (handles level-ups).
function QC:AccumulateXP()
	local cur, max = UnitXP("player") or 0, UnitXPMax("player") or 0
	if self._prevXP == nil then
		self._prevXP, self._prevMax = cur, max
		self._accXP = self._accXP or 0
		return
	end
	local delta
	if max == self._prevMax and cur >= self._prevXP then
		delta = cur - self._prevXP
	else
		delta = (self._prevMax - self._prevXP) + cur   -- leveled up
	end
	if delta and delta > 0 then self._accXP = (self._accXP or 0) + delta end
	self._prevXP, self._prevMax = cur, max
end

function QC:RefreshXP()
	self:AccumulateXP()
	if self.UI and self.UI.UpdateXP then self.UI:UpdateXP() end
end

-- Server delivered item data we were waiting on: refresh item-dependent UI.
function QC:ITEM_INFO_READY()
	if self._itemInfoThrottle then return end
	self._itemInfoThrottle = true
	self:ScheduleTimer(function()
		self._itemInfoThrottle = false
		if self.UI and self.UI.UpdateItemButton then self.UI:UpdateItemButton() end
		if self.GearAdvisor and self.db.profile.general.gearAdvisor then
			self.GearAdvisor:ScanBags(false)
		end
	end, 0.5)
end

----------------------------------------------------------------------
-- Guide history / statistics
----------------------------------------------------------------------

function QC:StartSession(guide)
	if not guide then return end
	self._session = {
		title = guide.title,
		startTime = GetTime(),
		startLevel = UnitLevel("player"),
		startAccXP = self._accXP or 0,
	}
end

function QC:FinalizeSession(completed)
	local s = self._session
	self._session = nil
	if not s or not completed then return end

	local rec = {
		title = s.title,
		duration = math.max(0, math.floor(GetTime() - s.startTime)),
		xp = math.max(0, (self._accXP or 0) - (s.startAccXP or 0)),
		levels = math.max(0, UnitLevel("player") - (s.startLevel or 0)),
		when = time(),
	}
	local h = self.db.char.history
	table.insert(h, 1, rec)
	while #h > 50 do table.remove(h) end
end

-- End-of-guide handling: print/notify once, optionally chain to header next= guide.
function QC:ResolveChainedGuide(nextTitle)
	if not nextTitle or nextTitle == "" then return nil end
	local exact = self:GetGuide(nextTitle)
	if exact then return exact end
	local leaf = nextTitle:match("([^\\]+)$")
	if not leaf then return nil end
	local leafLow = leaf:lower()
	for _, cand in ipairs(self.registeredguides) do
		local candLeaf = cand.title:match("([^\\]+)$")
		if candLeaf and candLeaf:lower() == leafLow then return cand end
	end
	local zone = leaf:match("^(.-)%s*%(") or leaf
	zone = zone:gsub("^%s+", ""):gsub("%s+$", "")
	if zone == "" then return nil end
	local zoneLow = zone:lower()
	local best, bestScore
	for _, cand in ipairs(self.registeredguides) do
		local titleLow = cand.title:lower()
		if titleLow:find(zoneLow, 1, true) then
			local score = titleLow:find("leveling", 1, true) and 2 or 0
			if cand.category and cand.category:find("Leveling") then score = score + 1 end
			if not bestScore or score > bestScore then
				bestScore, best = score, cand
			end
		end
	end
	return best
end

function QC:OnGuideFinished(guide)
	if not guide then return false end
	if self._guideFinished == guide.title then return false end
	self._guideFinished = guide.title
	guide.runtimeCompleted = true

	self:FinalizeSession(true)

	local nextTitle = guide.headerdata and guide.headerdata.next
	local nextGuide = nextTitle and self:ResolveChainedGuide(nextTitle)
	if nextGuide then
		self:Notify(L("Guide complete \226\128\148 loading next"), { 0.4, 0.85, 1.0 })
		self:SetGuide(nextGuide, 1)
		return true
	end

	self:Print("Guide complete: " .. tostring(guide.title))
	self:Notify(L("Guide complete!"), { 0.4, 1.0, 0.5 })
	if self.db.profile.general.sound and PlaySound then
		PlaySound(SOUNDKIT and SOUNDKIT.UI_QUEST_ROLLING_FORWARD_01 or 6199)
	end
	if nextTitle and not nextGuide then
		self:Print("Next guide not found: " .. tostring(nextTitle))
	end
	return true
end

function QC:IsGuideAtEnd()
	return self._guideFinished
		and self.CurrentGuideName
		and self._guideFinished == self.CurrentGuideName
end

function QC:GetHistory()
	return self.db.char.history or {}
end

-- Has this guide title been completed (present in history)?
function QC:IsGuideCompleted(title)
	for _, rec in ipairs(self.db.char.history or {}) do
		if rec.title == title then return true end
	end
	return false
end

function QC:ClearHistory()
	wipe(self.db.char.history)
end

-- Fading on-screen notification banner.
function QC:Notify(text, color)
	if self.UI and self.UI.Notify then self.UI:Notify(text, color) end
end

-- Text-to-speech announcement of the current step's first goal (opt-in).
function QC:SpeakStep()
	if not self.db.profile.general.tts then return end
	if not (C_VoiceChat and C_VoiceChat.SpeakText) then return end

	local now = GetTime()
	if now - (self._lastTTS or 0) < 1.0 then return end
	self._lastTTS = now

	local step = self.CurrentStep
	if not step or not step.goals then return end
	local text
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() then text = goal:GetText(); break end
	end
	if not text or text == "" then return end
	text = text:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("|n", " ")

	local voice = 0
	if C_VoiceChat.GetTtsVoices then
		local voices = C_VoiceChat.GetTtsVoices()
		if voices and voices[1] then voice = voices[1].voiceID end
	end
	local dest = (Enum and Enum.VoiceTtsDestination and Enum.VoiceTtsDestination.LocalPlayback) or 1
	pcall(C_VoiceChat.SpeakText, voice, text, dest, 0, 100)
end

-- Talent helper: show the current guide's recommended loadout string (if any)
-- in a copyable dialog, otherwise open Blizzard's talent UI.
function QC:ShowTalents()
	if self.TalentAdvisor then
		self.TalentAdvisor:Show()
		return
	end
	local talents = self.CurrentGuide and self.CurrentGuide.headerdata
		and self.CurrentGuide.headerdata.talents
	if type(talents) == "string" and talents ~= "" and self.Options and self.Options.ShowStringDialog then
		self.Options:ShowStringDialog("Talent Build", talents, nil)
		self:Print("Copy the build string and import it in the talent frame.")
		return
	end
	-- No build in the guide: open the talents UI for the player.
	if PlayerSpellsUtil and PlayerSpellsUtil.OpenToClassTalentsTab then
		pcall(PlayerSpellsUtil.OpenToClassTalentsTab)
	elseif ToggleTalentFrame then
		pcall(ToggleTalentFrame)
	else
		self:Print("No recommended talents for this guide.")
	end
end

function QC:PLAYER_LEVEL_UP(_, level)
	self:RefreshXP()
	if self.TalentAdvisor then self.TalentAdvisor:OnLevelUp(level) end
	if level then
		self:Notify((L("Level %d!")):format(level), { 0.4, 1.0, 0.5 })
		if self.db.profile.general.sound and PlaySound then
			PlaySound(SOUNDKIT and SOUNDKIT.UI_70_ARTIFACT_FORGE_TRAIT_RANKUP or 73279)
		end
	end
end

-- Hide/show Blizzard's objective tracker based on whether a guide is active.
function QC:UpdateBlizzTracker()
	local tracker = _G.ObjectiveTrackerFrame
	if not tracker then return end
	local wantHide = self.db.profile.general.hideBlizzTracker and self.CurrentGuide ~= nil
	if wantHide then
		if not self._trackerHidden then
			self._trackerHidden = true
			pcall(function() tracker:Hide() end)
		end
	elseif self._trackerHidden then
		self._trackerHidden = false
		pcall(function() tracker:Show() end)
	end
end

function QC:PLAYER_SPECIALIZATION_CHANGED(_, unit)
	if unit and unit ~= "player" then return end
	self:ApplySpecProfile()
end

-- /way [clear] | <x> <y> [description]  -- TomTom-compatible manual waypoint.
function QC:HandleWayCommand(input)
	input = (input or ""):gsub("^%s+", ""):gsub("%s+$", "")

	if input == "" then
		self:Print("|cff33d6ff/way|r |cffffff00<x> <y> [text]|r — set a waypoint. |cffffff00/way clear|r — remove it.")
		return
	end

	if input:match("^clear") or input:match("^reset") or input:match("^remove") then
		if TomTom and TomTom.RemoveWaypoint and self._tomtomLast then
			TomTom:RemoveWaypoint(self._tomtomLast)
			self._tomtomLast = nil
		end
		if self.Waypoint then self.Waypoint:ClearManual() end
		self:Print("Waypoint cleared.")
		return
	end

	local x, y, desc = input:match("^(%d+%.?%d*)%s+(%d+%.?%d*)%s*(.*)$")
	x, y = tonumber(x), tonumber(y)
	if not x or not y then
		self:Print("Usage: /way <x> <y> [description]")
		return
	end
	if desc == "" then desc = nil end

	local map = C_Map and C_Map.GetBestMapForUnit("player")
	if not map then
		self:Print("Cannot determine your current map.")
		return
	end

	-- Hand off to TomTom when present, otherwise use the built-in arrow.
	if TomTom and TomTom.AddWaypoint then
		self._tomtomLast = TomTom:AddWaypoint(map, x / 100, y / 100, {
			title = desc or "QuestCore Waypoint",
			from = "QuestCore",
			persistent = false,
			minimap = true,
			world = true,
		})
		self:Print(("Waypoint set via TomTom: %.1f, %.1f"):format(x, y))
	else
		if self.Waypoint then self.Waypoint:SetManual(map, x / 100, y / 100, desc or "Waypoint") end
		self:Print(("Waypoint set: %.1f, %.1f"):format(x, y))
	end
end

function QC:OnEnable()
	-- Quest cache + event tracking is wired up in QuestDB.lua.
	if self.QuestDB and self.QuestDB.Enable then
		self.QuestDB:Enable()
	end

	-- Build the main window.
	if self.GuideFrame and self.GuideFrame.Create then
		self.GuideFrame:Create()
	end

	if self.UI and self.UI.Create then
		self.UI:Create()
	end

	if self.MinimapButton and self.MinimapButton.Create then
		self.MinimapButton:Create()
	end

	if self.Waypoint and self.Waypoint.Create then
		self.Waypoint:Create()
	end
	if self.Waypoint and self.Waypoint.HookMap then
		self.Waypoint:HookMap()
	end

	self:ApplyMainLogVisibility()
	self:ApplyTrackerVisibility()

	if QC.EnsureAllRoverMaps then QC.EnsureAllRoverMaps() end
	if QC.ClearMapTokenCache then QC.ClearMapTokenCache() end
	if QC.BuildClassicEraMapIndex then QC.BuildClassicEraMapIndex() end

	if self.GuideStore and self.GuideStore.LoadAll then
		self.GuideStore:LoadAll()
	end

	-- Optional feature modules.
	if self.Automation and self.Automation.Enable then
		self.Automation:Enable()
	end
	if self.QuestAutomation and self.QuestAutomation.Enable then
		self.QuestAutomation:Enable()
	end
	if self.State and self.State.Enable then self.State:Enable() end
	if self.Travel then self.Travel:Enable() end
	if self.TravelGraph then self.TravelGraph:Enable() end
	if self.TravelSeed then
		-- Defer so HereBeDragons map data is fully gathered before we resolve
		-- zone names in the bundled database.
		self:ScheduleTimer(function()
			local n = self.TravelSeed:Load()
			if n and n > 0 then
				local tc = self.TravelSeed.imported or 0
				local ic = self.TravelSeed.itemsImported or 0
				self:Print(("|cff33d6ffQuestCore|r imported |cffffffff%d|r travel links and |cffffffff%d|r item teleports."):format(tc, ic))
			end
		end, 4.0)
	end
	if self.Death then self.Death:Enable() end
	if self.POI then self.POI:Enable() end
	if self.QuestMapPins and self.QuestMapPins.Enable then self.QuestMapPins:Enable() end
	if self.QuestDataDB then
		if self.QuestDataDB.Enable then self.QuestDataDB:Enable() end
		if self.QuestDataDB.Init then
			if C_Timer and C_Timer.After then
				C_Timer.After(0, function()
					self.QuestDataDB:Init()
				end)
			else
				self.QuestDataDB:Init()
			end
		end
	end
	if self.GoalEvents then self.GoalEvents:Enable() end
	if self.Cinematic then self.Cinematic:Enable() end
	if self.Recorder then self.Recorder:Enable() end
	if self.GearAdvisor then self.GearAdvisor:Enable() end
	if self.ScriptRunner then self.ScriptRunner:Enable() end
	if self.TalentAdvisor then self.TalentAdvisor:Enable() end
	if self.GoldScanner and self.GoldScanner.Enable then self.GoldScanner:Enable() end
	if self.Wizard and self.Wizard.Enable then self.Wizard:Enable() end
	if self.WorldQuests then self.WorldQuests:Enable() end
	if self.WhoWhere then self.WhoWhere:Enable() end
	if self.Phase then self.Phase:InstallGuideAPI() end
	if self.Broker then self.Broker:Enable() end
	if self.Share then self.Share:Enable() end
	QC.InstallFocusGuard()

	-- Apply ElvUI styling once everything is built (if ElvUI is present).
	if self.Skin then
		self:ScheduleTimer(function() self.Skin:ApplyAll() end, 0.3)
	end

	-- Combat fade events.
	self:RegisterEvent("PLAYER_REGEN_DISABLED")
	self:RegisterEvent("PLAYER_REGEN_ENABLED")

	-- XP tracker refresh + session XP baseline.
	self._accXP = 0
	self:AccumulateXP()
	self:RegisterEvent("PLAYER_XP_UPDATE", "RefreshXP")
	self:RegisterEvent("PLAYER_LEVEL_UP")
	self:RegisterEvent("UPDATE_EXHAUSTION", "RefreshXP")
	self:RegisterEvent("CURRENCY_DISPLAY_UPDATE", "RefreshXP")

	-- Zone-based guide auto-loading.
	self:RegisterEvent("ZONE_CHANGED_NEW_AREA")

	-- Item cache: refresh item-dependent UI once data arrives from the server.
	self:RegisterEvent("GET_ITEM_INFO_RECEIVED", "ITEM_INFO_READY")

	-- Per-specialization profile switching.
	self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
	self:ScheduleTimer(function() self:ApplySpecProfile() end, 1.0)

	if C_Covenants and QC.Parser and QC.Parser.UpdateCovenant then
		self:RegisterEvent("COVENANT_CHOSEN", function()
			QC.Parser:UpdateCovenant()
		end)
		QC.Parser:UpdateCovenant()
	end

	-- Waypoint slash commands (yield /way to TomTom if it owns it).
	self:RegisterChatCommand("qcway", "HandleWayCommand")
	if not (SlashCmdList and SlashCmdList["TOMTOM_WAY"]) then
		self:RegisterChatCommand("way", "HandleWayCommand")
	end

	-- Completion poll loop.
	self.completiontimer = self:ScheduleRepeatingTimer("TryToCompleteStep", self.completioninterval)

	-- Defer count until bundled guide files finish loading.
	self:ScheduleTimer(function()
		if self.CurrentGuideName and self:GetGuide(self.CurrentGuideName) then
			self:SetGuide(self.CurrentGuideName, self.CurrentStepNum)
		elseif self.db.profile.general.suggestOnLogin then
			local g = self:GetSuggestedGuide()
			if g then self:SetGuide(g, 1) else self:UpdateUI() end
			self:Print("|cff33d6ffQuestCore|r ready — " .. #self.registeredguides .. " guides. |cffffff00/qc menu|r")
		else
			self:UpdateUI()
			self:Print("|cff33d6ffQuestCore|r ready — " .. #self.registeredguides .. " guides. |cffffff00/qc menu|r")
		end
		if self.DataPack and self.DataPack:CheckAndNotify() then
			-- Data pack popup shown; skip empty guide menu welcome.
		else
			self:FirstRunWelcome()
		end
	end, 2.0)
end

-- One-time friendly onboarding: open the guide menu and explain the basics.
function QC:FirstRunWelcome()
	if self.DataPack and not self.DataPack:HasGuideData() then
		return
	end
	if self.Wizard and self.Wizard.TryShow and self.Wizard:TryShow() then
		return
	end
	if self.db.global.seenWelcome then return end
	self.db.global.seenWelcome = true

	self:Print("|cff33d6ffQuestCore|r — " .. L("Welcome! Pick a guide to begin."))
	self:Print("  |cffffff00/qc|r — " .. L("toggle window") .. ",  |cffffff00/qc menu|r — " .. L("guide menu")
		.. ",  |cffffff00/qc options|r — " .. L("settings"))
	self:Notify("|cff33d6ffQuestCore|r", { 0.4, 0.85, 1.0 })

	-- If nothing is loaded, open the guide list so new players see content.
	if not self.CurrentGuide and self.GuideMenu then
		self.GuideMenu:Show()
	end
end

----------------------------------------------------------------------
-- Guide loading
----------------------------------------------------------------------

-- Load a guide by name (or Guide object) and focus a step.
function QC:SetGuide(name, step)
	local guide = type(name) == "table" and name or self:GetGuide(name)
	if not guide then
		self:Print("Guide not found: " .. tostring(name))
		return false
	end

	if self.Guide and self.Guide.EnsureParsed then
		self.Guide:EnsureParsed(guide)
	else
		guide:Parse()
	end
	if not guide.steps or #guide.steps == 0 then
		self:Print("Guide has no steps: " .. tostring(guide.title))
		return false
	end

	self:ApplyStepProgress(guide)

	self.CurrentGuide = guide
	self.CurrentGuideName = guide.title
	self._guideFinished = nil
	guide.runtimeCompleted = nil
	if self.State and self.State.SetActiveGuide then
		self.State:SetActiveGuide(guide.title)
	else
		self.db.char.guidename = guide.title
	end
	self:PushRecentGuide(guide.title)
	self:StartSession(guide)
	self:UpdateBlizzTracker()

	step = tonumber(step) or 1
	if step <= 1 and self.db.profile.general.smartSkip then
		step = self:FindFirstIncompleteStep(guide)
	end
	if step < 1 then step = 1 end
	if step > #guide.steps then step = #guide.steps end

	self:FocusStep(step, true)
	return true
end

-- First step that isn't already complete. Returns last step if all are done.
function QC:FindFirstIncompleteStep(guide)
	if not guide or not guide.steps then return 1 end
	local n = #guide.steps
	for i = 1, n do
		local step = guide.steps[i]
		if step and not step:IsComplete() then return i end
	end
	return n > 0 and n or 1
end

-- Make a step the active one.
function QC:FocusStep(num, force)
	local guide = self.CurrentGuide
	if not guide or not guide.steps then return end
	num = tonumber(num) or 1
	if num < 1 then num = 1 end
	if num > #guide.steps then num = #guide.steps end

	local oldstep = self.CurrentStep
	if oldstep and oldstep.OnLeave then oldstep:OnLeave() end

	self.CurrentStepNum = num
	self.CurrentStep = guide.steps[num]
	if self.State and self.State.IsStepSkipped and self.State:IsStepSkipped(guide.title, num) then
		self.CurrentStep.manualdone = true
	end
	if self.State and self.State.SetCurrentStep then
		self.State:SetCurrentStep(num)
	else
		self.db.char.step = num
	end
	if self.Waypoint then self.Waypoint:ClearFocusGoal() end
	if self.SetConditionContext then self:SetConditionContext(guide, self.CurrentStep, nil) end

	if self.CurrentStep and self.CurrentStep.OnEnter then
		self.CurrentStep:OnEnter()
	end

	-- Optional audible cue when advancing to a new step.
	if not force and oldstep and oldstep ~= self.CurrentStep
		and self.db.profile.general.sound and PlaySound then
		PlaySound(SOUNDKIT and SOUNDKIT.IG_QUEST_LIST_COMPLETE or 879)
	end

	self:SendMessage("QC_STEP_CHANGED", num)
	self:UpdateUI()
	if self.TravelGraph and self.TravelGraph.OnStepChanged then
		self.TravelGraph:OnStepChanged()
	end
	if self.ScriptRunner then self.ScriptRunner:OnStepFocused(self.CurrentStep) end
	self:UpdateWaypoints()
	self:SpeakStep()
	if self.Broker and self.Broker.Update then self.Broker:Update() end

	-- If the freshly focused step is already complete, fast-forward (unless guide ended).
	if not force and self.CurrentStep and self.CurrentStep:IsComplete() then
		if self:IsGuideAtEnd() then return end
		self:SkipStep()
	end
end

-- Advance to the next valid step (or chain to guide.next at the end).
function QC:SkipStep()
	local guide = self.CurrentGuide
	if not guide or not self.CurrentStep then return end

	local nextnum = self.CurrentStep:GetNextStepNum()

	-- Cross-guide |next "Other\\Guide" jump.
	if type(nextnum) == "string" and nextnum:sub(1, 6) == "guide:" then
		local title = nextnum:sub(7)
		self:TryLoadGuide(title)
		return
	end

	if not nextnum or (type(nextnum) == "number" and nextnum > #guide.steps) then
		self:OnGuideFinished(guide)
		return
	end

	self:FocusStep(nextnum)
end

function QC:NextStep()
	if self.CurrentStep and self.CurrentStepNum then
		self:MarkStepComplete(self.CurrentStepNum, true)
	end
end

function QC:PrevStep()
	if self.CurrentStepNum and self.CurrentStepNum > 1 then
		self:FocusStep(self.CurrentStepNum - 1, true)
	end
end

-- Find the best step for a quest: the earliest incomplete step referencing it,
-- otherwise the first step that mentions it at all.
function QC:FindStepForQuest(questid)
	local guide = self.CurrentGuide
	questid = tonumber(questid)
	if not (guide and guide.steps and questid) then return nil end
	local firstRef
	for _, step in ipairs(guide.steps) do
		if step.goals then
			for _, goal in ipairs(step.goals) do
				if goal.questid == questid then
					firstRef = firstRef or step.num
					if not step:IsComplete() then return step.num end
				end
			end
		end
	end
	return firstRef
end

-- Resolve a quest reference (id or partial name) to a quest id used by the guide.
function QC:ResolveGuideQuest(token)
	if not token or token == "" then return nil end
	local id = tonumber(token)
	if id then return id end
	local guide = self.CurrentGuide
	if not (guide and guide.steps) then return nil end
	local low = token:lower()
	for _, step in ipairs(guide.steps) do
		if step.goals then
			for _, goal in ipairs(step.goals) do
				if goal.questid and goal.questname and goal.questname:lower():find(low, 1, true) then
					return goal.questid
				end
			end
		end
	end
	return nil
end

function QC:JumpToQuestStep(questid, silent)
	local num = self:FindStepForQuest(questid)
	if not num then
		if not silent then self:Print("No step found for that quest in the current guide.") end
		return false
	end
	if num ~= self.CurrentStepNum then
		self:FocusStep(num, true)
		if not silent then self:Print(("Jumped to step %d."):format(num)) end
	end
	return true
end

----------------------------------------------------------------------
-- Completion loop
----------------------------------------------------------------------

function QC:GetStickySaveKey(goal)
	local guide = self.CurrentGuide
	local title = guide and (guide.title or guide.name) or "?"
	local key = goal.zone or goal.text or goal.action or ""
	if goal.x and goal.y then
		key = key .. ":" .. math.floor(goal.x * 100) .. "," .. math.floor(goal.y * 100)
	end
	return title .. "|" .. key
end

function QC:IsStickySaved(goal)
	if not (goal and goal.sticky_saved) then return false end
	local saved = self.db.char.stickySaved
	return saved and saved[self:GetStickySaveKey(goal)] and true or false
end

function QC:MarkStickySaved(goal)
	if not (goal and goal.sticky_saved) then return end
	self.db.char.stickySaved = self.db.char.stickySaved or {}
	self.db.char.stickySaved[self:GetStickySaveKey(goal)] = true
end

function QC:TryToCompleteStep()
	if self:IsGuideAtEnd() then return end

	local step = self.CurrentStep
	if not step then return end

	if step.CheckVisitedGotos then step:CheckVisitedGotos() end

	if step.goals then
		for _, goal in ipairs(step.goals) do
			if goal.sticky_saved and goal:IsVisible() and goal:IsComplete() then
				self:MarkStickySaved(goal)
			end
		end
	end

	local complete = step:IsComplete()
	if complete and self.db.profile.general.autoAdvance ~= false then
		self:SkipStep()
	else
		local now = GetTime()
		if now - (self._lastPollUI or 0) >= 0.5 then
			self._lastPollUI = now
			self:UpdateUI()
			self:UpdateWaypoints()
		end
	end
end

----------------------------------------------------------------------
-- UI / waypoint convenience wrappers (safe if modules absent)
----------------------------------------------------------------------

function QC:UpdateUI()
	if self.GuideFrame and self.GuideFrame.Refresh then self.GuideFrame:Refresh() end
	if self.UI and self.UI.Update then self.UI:Update() end
end

function QC:UpdateWaypoints()
	if self.Waypoint and self.Waypoint.Update then self.Waypoint:Update() end
	if self.QuestMapPins and self.QuestMapPins.Refresh then
		self.QuestMapPins:Refresh()
	end
end

-- Release edit-box focus so ESC / game menu does not hit tainted ClearTarget().
function QC.ClearKeyboardFocus()
	local f = GetCurrentKeyBoardFocus and GetCurrentKeyBoardFocus()
	if f and f.ClearFocus then
		pcall(f.ClearFocus, f)
	end
end

-- Run addon UI work on the next frame so ESC / ToggleGameMenu stay out of taint path.
function QC.Defer(fn)
	if not fn then return end
	if C_Timer and C_Timer.After then
		C_Timer.After(0, fn)
	else
		fn()
	end
end

-- Edit boxes: clear focus immediately on ESC; defer any hide/close work.
function QC.BindEscapeEditBox(editBox, onEscape)
	if not editBox then return end
	editBox:SetAutoFocus(false)
	editBox:SetScript("OnEscapePressed", function(self)
		self:ClearFocus()
		if onEscape then QC.Defer(onEscape) end
	end)
end

-- Clear QuestCore edit focus before Blizzard overlays that call ToggleGameMenu.
function QC.InstallFocusGuard()
	if QC._focusGuardInstalled then return end
	QC._focusGuardInstalled = true
	local function guard() QC.ClearKeyboardFocus() end
	if SettingsPanel then hooksecurefunc(SettingsPanel, "Show", guard) end
	if GameMenuFrame then hooksecurefunc(GameMenuFrame, "Show", guard) end
	if Settings and Settings.OpenToCategory then hooksecurefunc(Settings, "OpenToCategory", guard) end
end

-- Close addon panels with ESC without registering them in UISpecialFrames.
-- UISpecialFrames is processed by Blizzard's ToggleGameMenu path and can taint
-- the protected ClearTarget() call that happens when ESC is pressed.
function QC.EnableEscapeClose(frame, hideFunc)
	if not frame then return end
	frame:EnableKeyboard(true)
	if frame.SetPropagateKeyboardInput then frame:SetPropagateKeyboardInput(true) end
	frame:HookScript("OnKeyDown", function(self, key)
		if key == "ESCAPE" then
			if self.SetPropagateKeyboardInput then self:SetPropagateKeyboardInput(false) end
			QC.ClearKeyboardFocus()
			QC.Defer(function()
				if hideFunc then hideFunc()
				elseif self.Hide then self:Hide() end
			end)
		elseif self.SetPropagateKeyboardInput then
			self:SetPropagateKeyboardInput(true)
		end
	end)
	frame:HookScript("OnKeyUp", function(self)
		if self.SetPropagateKeyboardInput then self:SetPropagateKeyboardInput(true) end
	end)
	frame:HookScript("OnHide", function(self)
		if self.SetPropagateKeyboardInput then self:SetPropagateKeyboardInput(true) end
	end)
end

function QC:ToggleWindow()
	self:ToggleTracker()
end

function QC:ApplyMainLogVisibility()
	local cfg = self.db and self.db.profile and self.db.profile.window
	if not (cfg and self.UI and self.UI.frame) then return end
	if cfg.showMainLog then
		self.UI.frame:Show()
	else
		self.UI.frame:Hide()
	end
end

function QC:ApplyTrackerVisibility()
	local cfg = self.db and self.db.profile and self.db.profile.window
	if not (cfg and self.GuideFrame) then return end
	if cfg.shown ~= false then
		if self.GuideFrame.Show then self.GuideFrame:Show() end
	else
		if self.GuideFrame.Hide then self.GuideFrame:Hide() end
	end
end

-- Guide window: hide finished objectives when the option is enabled.
function QC:ShouldHideCompletedGoal(goal)
	if not goal then return false end
	local w = self.db and self.db.profile and self.db.profile.window
	if not (w and w.hideCompleted) then return false end
	if goal.IsComplete and goal:IsComplete() then return true end
	if goal.GetStatus and goal:GetStatus() == "complete" then return true end
	-- Per-objective quest progress (goal done in log but step not advanced yet).
	if goal.questid and goal.objnum and C_QuestLog and C_QuestLog.GetQuestObjectives then
		local objs = C_QuestLog.GetQuestObjectives(goal.questid)
		local o = objs and objs[goal.objnum]
		if o and o.finished then return true end
	end
	return false
end

function QC:ToggleTracker()
	if self.GuideFrame and self.GuideFrame.Toggle then
		self.GuideFrame:Toggle()
		local on = self.db.profile.window.shown ~= false
		self:Print(on and L("Step tracker shown") or L("Step tracker hidden"))
	elseif self.UI and self.UI.Toggle then
		self.UI:Toggle()
	end
end

function QC:ToggleMainLog()
	if not (self.UI and self.UI.Toggle) then return end
	self.UI:Toggle()
	local on = self.db.profile.window.showMainLog
	self:Print(on and L("Main log shown") or L("Main log hidden"))
end

function QC:ToggleArrow()
	self.db.profile.arrow.shown = not self.db.profile.arrow.shown
	self:UpdateWaypoints()
	self:Print("Arrow " .. (self.db.profile.arrow.shown and "shown" or "hidden"))
end

----------------------------------------------------------------------
-- Slash commands
----------------------------------------------------------------------

function QC:OnSlashCommand(input)
	input = (input or ""):gsub("^%s+", ""):gsub("%s+$", "")
	local cmd, rest = input:match("^(%S*)%s*(.-)$")
	cmd = (cmd or ""):lower()

	if cmd == "" or cmd == "toggle" or cmd == "tracker" then
		self:ToggleTracker()
	elseif cmd == "menu" then
		if self.GuideMenu then self.GuideMenu:Show() end
	elseif cmd == "options" or cmd == "opts" then
		if self.Options then self.Options:Toggle() end
	elseif cmd == "log" then
		self:ToggleMainLog()
	elseif cmd == "edit" or cmd == "editor" then
		if self.GuideEditor then self.GuideEditor:Show() end
	elseif cmd == "history" or cmd == "stats" then
		if self.History then self.History:Toggle() end
	elseif cmd == "fly" then
		if self.Travel then self.Travel:TakeSuggested() end
	elseif cmd == "route" then
		if self.TravelGraph then self.TravelGraph:RouteToCurrentGoal() end
	elseif cmd == "routestats" then
		if self.TravelGraph then
			local n, e = self.TravelGraph:Stats()
			self:Print(("Flight graph: %d points, %d connections."):format(n, e))
		end
	elseif cmd == "audit" then
		self:Print("|cff33d6ffQuestCore|r: run Tools\\Audit-GuideCompatibility.ps1 for static DSL scan.")
		self:Print("In-game checklist: Docs\\SMOKE_TESTS.md")
	elseif cmd == "test" then
		if rest == "travel" then
			if QC.Test and QC.Test.RunTravelStressTest then
				QC.Test:RunTravelStressTest()
			else
				self:Print("TravelTest module not loaded.")
			end
		else
			self:Print("Usage: /qc test travel")
		end
	elseif cmd == "debug" and rest == "trail" then
		if self.Waypoint and self.Waypoint.DebugTrail then
			self.Waypoint:DebugTrail()
		end
	elseif cmd == "diag" or cmd == "diagnostics" then
		if self.Waypoint and self.Waypoint.DebugTrail then
			self.Waypoint:DebugTrail()
		end
	elseif cmd == "trail" and (rest == "" or rest == "debug") then
		if self.Waypoint and self.Waypoint.DebugTrail then
			self.Waypoint:DebugTrail()
		end
	elseif cmd == "record" then
		if self.Recorder then
			if rest == "stop" then self.Recorder:Stop() else self.Recorder:Toggle() end
		end
	elseif cmd == "gear" then
		if self.GearAdvisor then self.GearAdvisor:ScanBags(true) end
	elseif cmd == "wizard" then
		if self.Wizard and self.Wizard.Show then self.Wizard:Show() end
	elseif cmd == "talents" then
		self:ShowTalents()
	elseif cmd == "wq" or cmd == "worldquests" then
		if self.WorldQuests then self.WorldQuests:List() end
	elseif cmd == "npc" or cmd == "who" then
		if self.WhoWhere then self.WhoWhere:Go(rest) end
	elseif cmd == "find" or cmd == "goto" then
		local qid = self:ResolveGuideQuest(rest)
		if qid then self:JumpToQuestStep(qid)
		else self:Print("Usage: /qc find <quest id or name>") end
	elseif cmd == "share" then
		if self.Share then self.Share:Run(rest) end
	elseif cmd == "load" and rest ~= "" then
		self:SetGuide(rest, 1)
		if self.GuideFrame and self.GuideFrame.Show then self.GuideFrame:Show() end
	elseif cmd == "next" then
		self:NextStep()
	elseif cmd == "skip" then
		self:MarkStepComplete(self.CurrentStepNum, true)
	elseif cmd == "prev" then
		self:PrevStep()
	elseif cmd == "arrow" then
		self:ToggleArrow()
	elseif cmd == "suggest" or cmd == "suggested" then
		local g = self:GetSuggestedGuide()
		if g then
			self:SetGuide(g, 1)
			if self.GuideFrame and self.GuideFrame.Show then self.GuideFrame:Show() end
			self:Print("Loaded suggested guide: " .. g.title)
		else
			self:Print("No suggested guide found.")
		end
	elseif cmd == "minimap" then
		if self.MinimapButton then self.MinimapButton:Toggle() end
	elseif cmd == "datapack" or cmd == "guides" or cmd == "data" then
		if self.DataPack then
			self.DataPack:PrintStatus()
			if not self.DataPack:HasGuideData() then
				self.DataPack:ShowMissingDialog(true)
			end
		end
	elseif cmd == "list" then
		self:Print("Registered guides:")
		for _, g in ipairs(self.registeredguides) do
			self:Print("  " .. g.title)
		end
	else
		self:Print("|cff33d6ffQuestCore|r commands:")
		self:Print("  /qc              - toggle step tracker (mini window)")
		self:Print("  /qc tracker      - same as /qc")
		self:Print("  /qc log          - toggle main log window")
		self:Print("  /qc menu         - guide list")
		self:Print("  /qc options      - settings")
		self:Print("  /qc edit         - guide editor")
		self:Print("  /qc history      - completed guide stats")
		self:Print("  /qc record       - record a guide from your actions")
		self:Print("  /qc gear         - scan bags for upgrades")
		self:Print("  /qc talents      - guide's recommended build")
		self:Print("  /qc share profile|guide <name> - share over addon channel")
		self:Print("  /qc route        - flight route to the current waypoint")
		self:Print("  /qc load <name>  - load guide")
		self:Print("  /qc datapack     - guide pack download link")
		self:Print("  /qc suggest      - load best guide for my level")
		self:Print("  /qc next / prev  - change step")
		self:Print("  /qc arrow        - toggle arrow")
		self:Print("  /qc list         - list guides")
	end
end
