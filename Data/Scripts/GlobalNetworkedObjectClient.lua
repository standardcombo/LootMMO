-- Internal custom property
local API = require(script:GetCustomProperty("API"))
local GLOBAL_OBJECT = script:GetCustomProperty("GlobalObject"):WaitForObject()

function GetGlobalObject()
    return GLOBAL_OBJECT
end

function GetCustomProperty(property)
    return GLOBAL_OBJECT:GetCustomProperty(property)
end

-- Initialize
local functionTable = {}
functionTable.GetGlobalObject = GetGlobalObject
functionTable.GetCustomProperty = GetCustomProperty

API.Register(functionTable)