--[[
	Data loader
--]]

local API = {}

local definitions = require(script:GetCustomProperty("ItemCrafting"))

function API.GetDefinition(id)
	if not definitions[id] then
		warn("Did not find definition for item: "..tostring(id))
	end
	return definitions[id]
end
function API.GetDefinitions()
	return definitions
end


_G["Items.Materials"] = API
