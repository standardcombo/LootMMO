local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local function UserDataBypass()
	if Environment.IsClient() then
		return 'clientUserData'
	end
	return 'serverUserData'
end

local function CalculateString(Modifiers)
	local newstats = {}
	for key, value in pairs(Modifiers or {}) do
		newstats[key] = value.calString or ""
	end
	return newstats
end

local function CalculateStats(Modifiers, stats)
	local newTable = setmetatable({}, { __index = function(table, key)
		return 0
	end })
	for key, value in pairs(stats) do
		newTable[key] = value
	end
	local newstats = {}
	for key, value in pairs(Modifiers or {}) do
		if value.calculation then
			newstats[key] = value.calculation(newTable)
		else
			newstats[key] = value.value or 0
		end
	end
	return newstats
end

local Api = {}

function Api.RegisterCalculation(Root, modifiers)
	local bypass = UserDataBypass()
	Root[bypass].calculateModifier = function()
		local stats = STATS_CONNECTOR.GetStats(Root.owner)
		return CalculateStats(modifiers, STATS_CONNECTOR.GetStats(Root.owner))
	end
	Root[bypass].calculateModifierFromStats = function(stats)
		return CalculateStats(modifiers, stats)
	end
	Root[bypass].calculateString = function()
		return CalculateString(modifiers)
	end
end

return Api
