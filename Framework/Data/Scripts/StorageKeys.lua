
local API = {}
_G["StorageKeys"] = api


local STORAGE_KEYS = require(script:GetCustomProperty("StorageKeys"))

function API.GetKey(name)
    local element = STORAGE_KEYS[name]
    if element then 
        return element["storagekey"]
    end 
end

return API
