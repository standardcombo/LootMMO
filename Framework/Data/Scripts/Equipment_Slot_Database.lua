local LOOT_EQUIPMENT_SLOTS = require(script:GetCustomProperty('Loot_Equipment_Slots'))
local api = {}
_G['Equipment.Slots'] = api

function api.GetSlots()
	local types = {}
	for key, value in ipairs(LOOT_EQUIPMENT_SLOTS) do
		table.insert(types, value['Name'])
	end
	return types
end

function api.GetKeySlots()
	local types = {}
	for key, value in ipairs(LOOT_EQUIPMENT_SLOTS) do
		types[value['Name']] = value
	end
	return types
end

function api.GetAcceptingSlots(type)
	local Accepting = {}
	if api.GetKeySlots()[type] then
		Accepting = { CoreString.Split(api.GetKeySlots()[type]['AcceptingType'], ',') }
	end
	return Accepting
end
