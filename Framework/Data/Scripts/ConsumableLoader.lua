--[[
	Consumable definition Loader
	by: standardcombo
	v1.0
	
	Data-folder architecture.
--]]

local API = {}
_G.Consumables = API

local definitions = {}

for _,child in ipairs(script.parent.parent:GetChildren()) do
	if child:IsA("Script") then
		local def = child:GetCustomProperties()

		local id = child.name
		if def.id then
			id = def.id
		end
		
		if definitions[id] then
			warn("Duplicate id '"..id.."' for definition. Skipping.")
		else
			definitions[id] = child:GetCustomProperties()
		end
	end
end


function API.GetDefinition(id)
	if not definitions[id] then
		warn("Did not find definition for consumable: "..id)
	end
	return definitions[id]
end


function API.GetDefinitionsForCategory(category)
	local results = {}
	for k,v in pairs(definitions) do
		if v.category == category then
			table.insert(results, v)
		end
	end
	return results
end



