-- QuestCore: contextual goal-row icons by goal.action (Blizzard textures only).

local addonName, QuestCore = ...
local QC = QuestCore

local GoalIcons = {}
QC.GoalIcons = GoalIcons

local DEFAULT = "Interface\\Common\\Indicator-Grey"
local CHECK_ON = "Interface\\Buttons\\UI-CheckBox-Check"

local ACTION_TEXTURES = {
	accept = "Interface\\GossipFrame\\AvailableQuestIcon",
	turnin = "Interface\\GossipFrame\\ActiveQuestIcon",
	talk = "Interface\\GossipFrame\\ChatBubbleGossipIcon",
	clicknpc = "Interface\\GossipFrame\\ChatBubbleGossipIcon",
	kill = "Interface\\Icons\\Ability_DualWield",
	collect = "Interface\\Icons\\INV_Misc_Bag_08",
	q = "Interface\\Icons\\INV_Misc_Note_06",
	trainer = "Interface\\Minimap\\Tracking\\Profession",
	vendor = "Interface\\Minimap\\Tracking\\Auctioneer",
	run = "Interface\\Icons\\Ability_Rogue_Sprint",
	goto = "Interface\\Icons\\Ability_Rogue_Sprint",
	home = "Interface\\Icons\\INV_Misc_Rune_01",
	fpath = "Interface\\Minimap\\Tracking\\FlightMaster",
	use = "Interface\\Icons\\INV_Misc_Bag_10",
	useitem = "Interface\\Icons\\INV_Misc_Bag_10",
	confirm = "Interface\\GossipFrame\\AvailableQuestIcon",
	mapmarker = "Interface\\Icons\\INV_Misc_Map_01",
	buy = "Interface\\Minimap\\Tracking\\Auctioneer",
	get = "Interface\\Icons\\INV_Misc_Bag_08",
	earn = "Interface\\Icons\\INV_Misc_Coin_01",
	learn = "Interface\\Minimap\\Tracking\\Profession",
	craft = "Interface\\Minimap\\Tracking\\Profession",
}

local function ResolveAction(goal)
	if not goal then return nil end
	local action = goal.action
	if action == "text" and goal.x and goal.y then return "goto" end
	if action == "text" and goal.tip then return "run" end
	return action
end

function GoalIcons.GetTexture(goal)
	if not goal then return DEFAULT end
	local action = ResolveAction(goal)
	if (action == "use" or action == "useitem") and goal.useitem then
		local icon = QC.GetItemIcon and QC:GetItemIcon(goal.useitem)
			or (GetItemIcon and GetItemIcon(goal.useitem))
		if icon then return icon end
	end
	return ACTION_TEXTURES[action] or DEFAULT
end

-- Apply texture + visual state to a goal-row icon (and optional completion mark).
function GoalIcons.ApplyToLine(line, goal, opts)
	opts = opts or {}
	local icon = line and line.icon
	if not icon then return end

	local status = opts.status or "incomplete"
	local dim = opts.dim
	local active = opts.active

	local tex = GoalIcons.GetTexture(goal)
	icon:SetTexture(tex)
	icon:SetTexCoord(0, 1, 0, 1)
	icon:Show()

	local mark = line.checkMark
	if mark then mark:Hide() end

	if dim then
		icon:SetAlpha(0.45)
		icon:SetDesaturated(true)
		icon:SetVertexColor(0.75, 0.78, 0.82)
	elseif status == "complete" then
		icon:SetAlpha(0.85)
		icon:SetDesaturated(true)
		icon:SetVertexColor(0.45, 0.95, 0.45)
		if mark then
			mark:SetTexture(CHECK_ON)
			mark:SetVertexColor(0.35, 0.90, 0.35)
			mark:SetDesaturated(false)
			mark:Show()
		end
	elseif active then
		icon:SetAlpha(1)
		icon:SetDesaturated(false)
		icon:SetVertexColor(1.00, 0.92, 0.35)
	elseif status == "incomplete" then
		icon:SetAlpha(1)
		icon:SetDesaturated(false)
		icon:SetVertexColor(1, 1, 1)
	else
		icon:SetAlpha(0.75)
		icon:SetDesaturated(true)
		icon:SetVertexColor(0.85, 0.87, 0.90)
	end
end

function GoalIcons.IconSize(fontSize)
	fontSize = fontSize or 12
	return math.min(math.max(fontSize + 2, 14), 18)
end
