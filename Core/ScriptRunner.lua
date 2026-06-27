-- QuestCore: sandboxed execution of |script / |updatescript tags from bundled guides.

local addonName, QuestCore = ...
local QC = QuestCore

local ScriptRunner = {}
QC.ScriptRunner = ScriptRunner

-- Whitelisted global names scripts may call (legacy guide macros).
local SAFE_GLOBALS = {
	DoEmote = true,
	VehicleExit = true,
	CancelSpellByName = true,
	SpellStopCasting = true,
	CastSpellByName = true,
	UseItemByName = true,
	RunMacroText = true,
	C_PetJournal = true,
	C_MountJournal = true,
}

local function MakeEnv()
	local env = {}
	for k in pairs(SAFE_GLOBALS) do
		if _G[k] ~= nil then env[k] = _G[k] end
	end
	env.UnitClass = UnitClass
	env.UnitLevel = UnitLevel
	env.GetSpellInfo = GetSpellInfo
	return env
end

local env = MakeEnv()

function ScriptRunner:GoalContext(goal)
	if not goal then return nil end
	local step = goal.parentStep
	local guide = step and step.parentGuide
	return {
		guide = guide and (guide.title_short or guide.title),
		step = step and step.num,
	}
end

local function Compile(code)
	if not code or code == "" then return nil end
	code = code:gsub("^%s+", ""):gsub("%s+$", "")
	if code == "" then return nil end
	local fn, err = loadstring("return function() " .. code .. " end")
	if not fn then
		fn, err = loadstring(code)
	end
	if not fn then return nil, err end
	setfenv(fn, env)
	return fn
end

function ScriptRunner:Run(code, label, goal)
	local ctx = self:GoalContext(goal)
	local fn, err = Compile(code)
	if not fn then
		if QC.DebugLog then
			QC:DebugLog("Script compile (" .. (label or "?") .. "): " .. tostring(err), ctx)
		end
		return false
	end
	local ok, ret = pcall(fn)
	-- The "return function() ... end" wrapper yields an inner function; run it.
	if ok and type(ret) == "function" then
		ok, ret = pcall(ret)
	end
	if not ok then
		if QC.DebugLog then
			QC:DebugLog("Script runtime (" .. (label or "?") .. "): " .. tostring(ret), ctx)
		end
		return false
	end
	return true
end

function ScriptRunner:OnStepFocused(step)
	if not step or not step.goals then return end
	for _, goal in ipairs(step.goals) do
		if goal.script and goal:IsVisible() and not goal:IsComplete() then
			self:Run(goal.script, "script", goal)
		end
	end
end

function ScriptRunner:OnTick(step)
	if not step or not step.goals then return end
	for _, goal in ipairs(step.goals) do
		if goal.updatescript and goal:IsVisible() and not goal:IsComplete() then
			self:Run(goal.updatescript, "updatescript", goal)
		end
	end
end

function ScriptRunner:Enable()
	if self._enabled then return end
	self._enabled = true
	self._acc = 0
	local f = CreateFrame("Frame")
	f:SetScript("OnUpdate", function(_, elapsed)
		self._acc = (self._acc or 0) + elapsed
		if self._acc < 2.0 then return end
		self._acc = 0
		if QC.CurrentStep then self:OnTick(QC.CurrentStep) end
	end)
	self.frame = f
end
