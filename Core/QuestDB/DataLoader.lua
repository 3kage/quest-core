-- QuestCore: loader shim and database string parsing for bundled quest tables.
-- Data files use legacy global names (QuestieLoader / QuestieDB / ZoneDB) internally.

local addonName, QC = ...

if not QuestieLoader then
	QuestieLoader = {}
	local modules = {}
	QuestieLoader._modules = modules

	function QuestieLoader:CreateModule(name)
		if not modules[name] then
			modules[name] = { private = {} }
		end
		return modules[name]
	end

	function QuestieLoader:ImportModule(name)
		return self:CreateModule(name)
	end
end

QC.QuestDBData = QC.QuestDBData or {}
local DB = QC.QuestDBData

function DB.ParseDataString(str)
	if str == nil then return nil end
	if type(str) == "table" then return str end
	if type(str) ~= "string" then return nil, "not a string" end
	local fn, err = loadstring(str)
	if not fn then return nil, err end
	local ok, result = pcall(fn)
	if not ok then return nil, result end
	return result
end

function DB.GetExpansionFolder()
	if QC.IsClassicEra then return "Classic" end
	if QC.IsTBC then return "TBC" end
	if QC.IsWrath then return "Wotlk" end
	if QC.IsCata then return "Cata" end
	if QC.IsMists then return "MoP" end
	return "Classic"
end

function DB.LoadTables()
	local qdb = QuestieLoader:ImportModule("QuestieDB")
	local keys = { "npcData", "objectData", "questData", "itemData" }
	local parsed = {}

	for _, key in ipairs(keys) do
		local raw = qdb[key]
		if raw then
			local tbl, err = DB.ParseDataString(raw)
			if not tbl then
				return nil, key .. ": " .. tostring(err)
			end
			parsed[key] = tbl
		end
	end

	return parsed
end
