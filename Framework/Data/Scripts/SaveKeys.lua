local STORAGE_KEYS = require(script:GetCustomProperty("StorageKeys"))
local api = {}

function api.GetKeyFromName(name)
    local element = STORAGE_KEYS[name]
    if element then 
        return element["storagekey"]
    end 
end 

_G["Storagekeys"] = api