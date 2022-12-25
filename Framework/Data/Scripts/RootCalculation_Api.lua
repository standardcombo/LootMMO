local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local Api = {}

local function UserDataBypass()
	if Environment.IsClient() then
		return 'clientUserData'
	end
	return 'serverUserData'
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

function Api.RegisterCalculation(Root, modifiers)
	local rootUserData = Root[UserDataBypass()]
	rootUserData.CalculateModifier = function(modId)
		local stats = STATS_CONNECTOR.GetStats(Root.owner)
		local mod = modifiers[modId]
		if mod then
			return mod.calculation(stats)
		end
		return nil
	end
	rootUserData.CalculateAllModifiers = function()
		local stats = STATS_CONNECTOR.GetStats(Root.owner)
		return CalculateStats(modifiers, stats)
	end
end

return Api
