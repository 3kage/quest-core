-- QuestCore: profile import/export (share strings) + per-spec auto profiles.

local addonName, QuestCore = ...
local QC = QuestCore

----------------------------------------------------------------------
-- Base64 (URL-safe-ish standard alphabet)
----------------------------------------------------------------------

local B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local B64DEC = {}
for i = 1, #B64 do B64DEC[B64:sub(i, i)] = i - 1 end

local function base64Encode(data)
	local out = {}
	local len = #data
	local i = 1
	while i <= len do
		local b1 = data:byte(i) or 0
		local b2 = data:byte(i + 1)
		local b3 = data:byte(i + 2)
		local n = b1 * 65536 + (b2 or 0) * 256 + (b3 or 0)
		local c1 = math.floor(n / 262144) % 64
		local c2 = math.floor(n / 4096) % 64
		local c3 = math.floor(n / 64) % 64
		local c4 = n % 64
		out[#out + 1] = B64:sub(c1 + 1, c1 + 1)
		out[#out + 1] = B64:sub(c2 + 1, c2 + 1)
		out[#out + 1] = b2 and B64:sub(c3 + 1, c3 + 1) or "="
		out[#out + 1] = b3 and B64:sub(c4 + 1, c4 + 1) or "="
		i = i + 3
	end
	return table.concat(out)
end

local function base64Decode(str)
	str = str:gsub("[^%w%+%/%=]", "")
	local out = {}
	local i = 1
	local len = #str
	while i <= len do
		local c1 = B64DEC[str:sub(i, i)]
		local c2 = B64DEC[str:sub(i + 1, i + 1)]
		local s3 = str:sub(i + 2, i + 2)
		local s4 = str:sub(i + 3, i + 3)
		local c3 = B64DEC[s3]
		local c4 = B64DEC[s4]
		if not c1 or not c2 then break end
		local n = c1 * 262144 + c2 * 4096 + (c3 or 0) * 64 + (c4 or 0)
		out[#out + 1] = string.char(math.floor(n / 65536) % 256)
		if s3 ~= "=" and c3 then out[#out + 1] = string.char(math.floor(n / 256) % 256) end
		if s4 ~= "=" and c4 then out[#out + 1] = string.char(n % 256) end
		i = i + 4
	end
	return table.concat(out)
end

----------------------------------------------------------------------
-- Table serialization to a Lua literal
----------------------------------------------------------------------

local function serialize(value)
	local t = type(value)
	if t == "string" then
		return string.format("%q", value)
	elseif t == "number" then
		return tostring(value)
	elseif t == "boolean" then
		return value and "true" or "false"
	elseif t == "table" then
		local parts = {}
		-- Array part.
		local n = #value
		for i = 1, n do
			parts[#parts + 1] = serialize(value[i])
		end
		-- Hash part.
		for k, v in pairs(value) do
			if not (type(k) == "number" and k >= 1 and k <= n and k == math.floor(k)) then
				local key
				if type(k) == "string" and k:match("^[%a_][%w_]*$") then
					key = k
				else
					key = "[" .. serialize(k) .. "]"
				end
				parts[#parts + 1] = key .. "=" .. serialize(v)
			end
		end
		return "{" .. table.concat(parts, ",") .. "}"
	end
	return "nil"
end

----------------------------------------------------------------------
-- Effective-profile snapshot (reads actual values, falls back to defaults)
----------------------------------------------------------------------

local function snapshot(def, live)
	local out = {}
	for k, dv in pairs(def) do
		local lv = live and live[k]
		if type(dv) == "table" then
			out[k] = snapshot(dv, lv or {})
		else
			if lv ~= nil then out[k] = lv else out[k] = dv end
		end
	end
	return out
end

local function deepMerge(dst, src)
	for k, v in pairs(src) do
		if type(v) == "table" then
			if type(dst[k]) ~= "table" then dst[k] = {} end
			deepMerge(dst[k], v)
		else
			dst[k] = v
		end
	end
end

----------------------------------------------------------------------
-- Public API
----------------------------------------------------------------------

local PREFIX = "QC1:"

function QC:ExportProfile()
	local schema = self.DB_DEFAULTS and self.DB_DEFAULTS.profile or {}
	local snap = snapshot(schema, self.db.profile)
	local literal = "return " .. serialize(snap)
	return PREFIX .. base64Encode(literal)
end

-- Returns ok, errOrNil. Applies the imported profile to the active one.
function QC:ImportProfile(token)
	if type(token) ~= "string" then return false, "empty" end
	token = token:gsub("%s+", "")
	if token:sub(1, #PREFIX) ~= PREFIX then
		return false, "Unrecognized string (missing QC1 prefix)."
	end
	local literal = base64Decode(token:sub(#PREFIX + 1))
	if not literal or literal == "" then return false, "Could not decode string." end

	local chunk, err = loadstring(literal)
	if not chunk then return false, "Parse error: " .. tostring(err) end
	setfenv(chunk, {})   -- sandbox: no access to globals
	local ok, data = pcall(chunk)
	if not ok or type(data) ~= "table" then
		return false, "Invalid profile data."
	end

	self.db:ResetProfile(true)
	deepMerge(self.db.profile, data)
	self:RefreshConfig()
	return true
end

----------------------------------------------------------------------
-- Per-specialization auto profiles
----------------------------------------------------------------------

function QC:ApplySpecProfile()
	if not (self.db and self.db.global.autoProfileBySpec) then return end
	if not GetSpecialization then return end
	local idx = GetSpecialization()
	if not idx then return end

	local _, specName = GetSpecializationInfo(idx)
	local className = select(2, UnitClass("player")) or "CLASS"
	local key = className .. " - " .. (specName or ("Spec " .. idx))

	if self.db:GetCurrentProfile() ~= key then
		self.db:SetProfile(key)
	end
end
