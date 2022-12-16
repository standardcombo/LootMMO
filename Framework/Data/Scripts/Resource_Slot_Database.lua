local api = {}
_G['Resource.Slots'] = api

local MATERIALS_ORDER = {"Coins", "Wood", "Metal", "Bone", "Demondhide", "Dragonskin", "Leather", "Silk", "Cotton", "Linen", "RoyalPermits", "Encantations", "Gemstones", "Incense"}

function api.GetSlots()
	local types = {}
	for key, value in ipairs(MATERIALS_ORDER) do
		table.insert(types, value)
	end
	return types
end

function api.GetKeySlots()
	local types = {}
	for key, value in ipairs(MATERIALS_ORDER) do
		types[value] = value
	end
	return types
end

function api.GetAcceptingSlots(type)
	local Accepting = {}
	if api.GetKeySlots()[type] then
		Accepting = { CoreString.Split(api.GetKeySlots()[type], ',') }
	end
	return Accepting
end
