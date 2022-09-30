--[[
	Data loader
--]]

local API = {}
_G["Items.More"] = API


local definitions = require(script:GetCustomProperty("DataTable"))

function API.GetDefinition(id)
	if not definitions[id] then
		warn("Did not find definition for item: "..tostring(id))
	end
	return definitions[id]
end
function API.GetDefinitions()
	return definitions
end


