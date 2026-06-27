-- QuestCore: share profiles and custom guides with other QuestCore users over
-- the addon channel. Long payloads are split into chunks and reassembled.

local addonName, QuestCore = ...
local QC = QuestCore

local Share = {}
QC.Share = Share

local PREFIX = "QuestCore"
local CHUNK = 220
local SEP = "\2"

----------------------------------------------------------------------
-- Sending
----------------------------------------------------------------------

local function RandomID()
	return string.format("%x%x", math.random(0, 0xffff), math.random(0, 0xffff))
end

local function SendPayload(kind, name, data, channel, target)
	if not (C_ChatInfo and C_ChatInfo.SendAddonMessage) then
		QC:Print("Addon messaging unavailable.")
		return
	end
	local payload = kind .. SEP .. (name or "") .. SEP .. data
	local id = RandomID()
	local total = math.ceil(#payload / CHUNK)
	for seq = 1, total do
		local chunk = payload:sub((seq - 1) * CHUNK + 1, seq * CHUNK)
		local msg = ("%s:%d:%d:%s"):format(id, seq, total, chunk)
		C_ChatInfo.SendAddonMessage(PREFIX, msg, channel, target)
	end
	QC:Print(("Shared %s (%d chunks) over %s%s."):format(kind, total, channel,
		target and (" to " .. target) or ""))
end

-- /qc share profile|guide [name] [target]
function Share:Run(rest)
	rest = rest or ""
	local kind, arg = rest:match("^(%S+)%s*(.-)$")
	kind = (kind or ""):lower()

	local channel, target = "PARTY", nil
	if not IsInGroup() then
		-- Default to a whisper target if provided, else inform the player.
		if arg and arg ~= "" then channel, target = "WHISPER", arg end
	end

	if kind == "profile" then
		local data = QC.ExportProfile and QC:ExportProfile()
		if not data then QC:Print("Cannot export profile.") return end
		if channel == "WHISPER" and not target then
			QC:Print("Not in a group. Usage: /qc share profile <playerName>")
			return
		end
		SendPayload("PROFILE", QC.db:GetCurrentProfile(), data, channel, target)

	elseif kind == "guide" then
		local gname = arg:match("^(.-)%s*$")
		local guide = gname ~= "" and QC:GetGuide(gname)
		if not guide then QC:Print("Usage: /qc share guide <guideName>") return end
		SendPayload("GUIDE", guide.title, guide.rawdata or "", channel, target)
	else
		QC:Print("Usage: /qc share profile | /qc share guide <name>")
	end
end

----------------------------------------------------------------------
-- Receiving
----------------------------------------------------------------------

local inbox = {}   -- [sender..id] = { total, count, chunks = {} }

local function HandleComplete(sender, payload)
	local kind, name, data = payload:match("^(.-)" .. SEP .. "(.-)" .. SEP .. "(.*)$")
	if not kind then return end

	if kind == "PROFILE" then
		QC._pendingShare = { kind = "PROFILE", name = name, data = data, from = sender }
		StaticPopup_Show("QUESTCORE_IMPORT_SHARE", sender, name or "")
	elseif kind == "GUIDE" then
		QC._pendingShare = { kind = "GUIDE", name = name, data = data, from = sender }
		StaticPopup_Show("QUESTCORE_IMPORT_SHARE", sender, name or "")
	end
end

function Share:OnAddonMessage(prefix, text, _, sender)
	if prefix ~= PREFIX or not text then return end
	local id, seq, total, chunk = text:match("^([^:]+):(%d+):(%d+):(.*)$")
	if not id then return end
	seq, total = tonumber(seq), tonumber(total)

	local key = (sender or "?") .. id
	local box = inbox[key]
	if not box then box = { total = total, count = 0, chunks = {} }; inbox[key] = box end
	if not box.chunks[seq] then
		box.chunks[seq] = chunk
		box.count = box.count + 1
	end
	if box.count >= box.total then
		inbox[key] = nil
		local parts = {}
		for i = 1, box.total do parts[i] = box.chunks[i] or "" end
		HandleComplete(sender, table.concat(parts))
	end
end

----------------------------------------------------------------------
-- Apply (after confirmation popup)
----------------------------------------------------------------------

function Share:Accept()
	local p = QC._pendingShare
	QC._pendingShare = nil
	if not p then return end

	if p.kind == "PROFILE" then
		if QC.ImportProfile then
			local ok, err = QC:ImportProfile(p.data)
			QC:Print(ok and "Imported shared profile." or ("Import failed: " .. tostring(err)))
		end
	elseif p.kind == "GUIDE" then
		local short = (p.name or "Shared"):match("([^\\]+)$") or "Shared"
		if QC.GuideStore then
			local ok = QC.GuideStore:Save(short, { startlevel = 1 }, p.data)
			QC:Print(ok and ("Saved shared guide: Custom\\" .. short) or "Could not save guide.")
			if QC.GuideMenu then QC.GuideMenu:InvalidateCache() end
		end
	end
end

----------------------------------------------------------------------
-- Setup
----------------------------------------------------------------------

StaticPopupDialogs = StaticPopupDialogs or {}
StaticPopupDialogs["QUESTCORE_IMPORT_SHARE"] = {
	text = "QuestCore: accept shared data from %s?\n|cffffd100%s|r",
	button1 = ACCEPT or "Accept",
	button2 = CANCEL or "Cancel",
	OnAccept = function() QC.Share:Accept() end,
	timeout = 30, whileDead = true, hideOnEscape = true, preferredIndex = 3,
}

function Share:Enable()
	if self._enabled then return end
	self._enabled = true
	if C_ChatInfo and C_ChatInfo.RegisterAddonMessagePrefix then
		C_ChatInfo.RegisterAddonMessagePrefix(PREFIX)
	end
	QC:RegisterEvent("CHAT_MSG_ADDON", function(_, prefix, text, channel, sender)
		Share:OnAddonMessage(prefix, text, channel, sender)
	end)
end
