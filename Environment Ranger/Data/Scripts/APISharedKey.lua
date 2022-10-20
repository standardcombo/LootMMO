local STORAGE_KEY = script:GetCustomProperty("StorageKey")

local API = {}

function API.GetStorageKey()
	return STORAGE_KEY
end

return API
