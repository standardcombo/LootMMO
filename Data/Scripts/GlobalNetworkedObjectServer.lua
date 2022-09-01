-- Internal custom property
local API = require(script:GetCustomProperty("API"))
local GLOBAL_OBJECT = script:GetCustomProperty("GlobalObject"):WaitForObject()

function GetGlobalObject()
    return GLOBAL_OBJECT
end

function SetNetworkedCustomProperty(property, value)
    SetCustomProperty(property, value)
end

function SetCustomProperty(property, value)
    if GLOBAL_OBJECT:GetCustomProperty(property) then
        GLOBAL_OBJECT:SetCustomProperty(property, value)
    else
        warn("Couldn't find and set property "..property)
    end
end

function GetCustomProperty(property)
    return GLOBAL_OBJECT:GetCustomProperty(property)
end

-- Initialize
local functionTable = {}
functionTable.SetNetworkedCustomProperty = SetNetworkedCustomProperty
functionTable.SetCustomProperty = SetCustomProperty
functionTable.GetGlobalObject = GetGlobalObject
functionTable.GetCustomProperty = GetCustomProperty

API.Register(functionTable)