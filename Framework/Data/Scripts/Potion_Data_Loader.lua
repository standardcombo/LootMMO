local API = {}
_G.Potions = API

local definitions = require(script:GetCustomProperty("DataTable"))

function API.GetEntry(name)
	return definitions[name]
end

function API.GetEquipment(name)
	local potion = API.GetEntry(name)
	if potion then
		return potion['equipment']
	end
end

function API.GetIcon(name)
	local potion = API.GetEntry(name)
	if potion then
		return potion['icon']
	end
end

function API.GetName(name)
	local potion = API.GetEntry(name)
	if potion then
		return potion['name']
	end
end

function API.FindFromAssetId(assetID)
	for key, potion in pairs(definitions) do
		if potion['equipment'] then
			local string = CoreString.Split(potion['equipment'], ":") 
			if string == assetID then
				return potion
			end
		end
	end

end

function API.GetTable()
	return definitions
end

_G['Potions.Equipment'] = API
