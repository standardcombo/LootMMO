--[[
	Potion Data Loader
	v1.1.0 - 2022/10/25
	by: Blaking, CommanderFoo, standardcombo

	Loads the definitions for potions and provides a global API to access them.

	API
	===
	- GetTable()
	- GetEntry(string id)
	- GetEquipment(string id)
	- GetIcon(string id)
	- GetName(string id)
	- FindByAssetId(string assetId)
	- FindByAssetIdName(string assetIdName
]]
local API = {}
_G['Potions.Equipment'] = API

local definitions = require(script:GetCustomProperty("DataTable"))

function API.GetTable()
	return definitions
end

function API.GetEntry(id)
	return definitions[id]
end

function API.GetEquipment(id)
	local potion = API.GetEntry(id)
	if potion then
		return potion['equipment']
	end
end

function API.GetIcon(id)
	local potion = API.GetEntry(id)
	if potion then
		return potion['icon']
	end
end

function API.GetName(id)
	local potion = API.GetEntry(id)
	if potion then
		return potion['name']
	end
end

function API.FindByAssetId(assetID)
	for key, potion in pairs(definitions) do
		if potion['equipment'] then
			local string = CoreString.Split(potion['equipment'], ":") 
			if string == assetID then
				return potion
			end
		end
	end
end

---Example: _G['Potions.Equipment'].FindByAssetIdName("Loot_Potion_Ability_HealthPotion")
function API.FindByAssetIdName(assetID)
	for key, potion in pairs(definitions) do
		if potion['equipment'] then
			local id, name = CoreString.Split(potion['equipment'], ":")

			-- Replace words in the asset id string to match potion name
			name = string.gsub(name, "Equipment", "Ability")

			if name == assetID then
				return potion
			end
		end
	end
end