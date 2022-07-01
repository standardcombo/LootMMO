
local API = {}

function API.GetKey(keyName)
	return script:GetCustomProperty(keyName)
end

return API

