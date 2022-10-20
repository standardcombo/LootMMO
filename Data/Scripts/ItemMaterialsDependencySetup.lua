--[[
	Data loader
--]]

local API = {}
_G["Items.Materials"] = API


local definitions = require(script:GetCustomProperty("DataTable"))

function API.GetDefinition(id, suppressWarning)
	if not definitions[id] and not suppressWarning then
		warn("Did not find definition for item: "..tostring(id))
	end
	return definitions[id]
end
function API.GetDefinitions()
	return definitions
end


