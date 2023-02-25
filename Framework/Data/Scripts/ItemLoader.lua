--[[
	Data loader
--]]

local API = {}
_G.Items = API

local definitions = require(script:GetCustomProperty("DataTable"))


function API.GetDefinition(id, suppressWarning)
	if not definitions[id] and not suppressWarning then
		warn("Did not find definition for item: " .. tostring(id))
	end
	return definitions[id]
end

function API.GetDefinitionsForCategory(category)
	local results = {}
	for k, v in pairs(definitions) do
		if v.category == category then
			table.insert(results, v)
		end
	end
	return results
end

function API.GetDefinitions()
	return definitions
end
