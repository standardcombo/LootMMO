local API = {}
local functions = nil

API.LAST_DAY_RESOURCE = "DailyRPCrateLastDay"
API.LAST_TIME_RESOURCE = "DailyRPCrateLastTime"
API.CRATE_SERVER_TIME_RESOURCE = "DailyRPCrateServerTime"

API.SOCIAL_COUNT_RESOURCE = "DailyRPCrateCount"
API.LAST_SOCIAL_TIME_RESOURCE = "DailyRPCrateSocialLastTime"

function API.Register(functionTable)
	functions = functionTable
end

-- [Client]
function API.IsRegistered()
	if not functions then
		return false
	end

	return true
end

-- [Client]
function API.GetStats()
	if functions then
		return functions.GetStats()
	end

	return nil
end

-- [Client]
function API.GetRewardsList()
	if functions then
		return functions.GetRewardsList()
	end

	return nil
end

-- [Client]
function API.GetProgress()
	if functions then
		return functions.GetProgress()
	end

	return nil
end

-- [Server, Client]
function API.GetMaxSocialBonusCount()
	if functions then
		return functions.GetMaxSocialBonusCount()
	end

	return nil
end

-- [Client]
function API.GetRemainingTime()
	if functions then
		return functions.GetRemainingTime()
	end

	return nil
end

-- [Client]
function API.GetLootTable()
	if functions then
		return functions.GetLootTable()
	end

	return nil
end

-- [Client]
function API.IsReadyToClaim()
	if functions then
		return functions.IsReadyToClaim()
	end

	return nil
end

-- [Client]
function API.UpdateClientTime()
	if functions then
		functions.UpdateClientTime()
	end
end

-- [Client]
function API.TryDrawLootCrate(id)
	if functions then
		functions.TryDrawLootCrate(id)
	end
end

-- [Client]
function API.ReadyToGrant()
	if functions then
		functions.ReadyToGrant()
	end
end

-- UTILITY GENERATE FUNCTIONS
-----------------------------
function API.GenerateTableFromChildren(listObject, keyed)
	local result = {}

	for index, child in ipairs(listObject:GetChildren()) do
		local values = {}

		for key, value in pairs(child:GetCustomProperties()) do
			values[key] = value
		end

		values.Index = index

		if keyed then
			result[child.name] = values
		else
			table.insert(result, values)
		end
	end

	return result
end

function API.GenerateLootTable(list)
	local result = {}
	local totalWeight = 0

	for index, item in ipairs(list) do
		local weightItem = {}

		weightItem.index = index

		weightItem.weightFrom = totalWeight
		totalWeight = totalWeight + item.Weight
		weightItem.weightTo = totalWeight

		weightItem.itemTable = item
	
		table.insert(result, weightItem)
	end

	return result, totalWeight
end

function API.GetWeightItem(weightTable, totalWeight)
	local randomWeight = math.random(totalWeight) - 1
	for _, item in ipairs(weightTable) do
		if randomWeight >= item.weightFrom and randomWeight < item.weightTo then
			return item.itemTable, item.index
		end
	end
end

return API