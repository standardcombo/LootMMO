local API = require(script:GetCustomProperty("API"))
local API_GLOBAL_OBJECT = require(script:GetCustomProperty("APIGlobalObject"))

function GetStartOSTime()
    return API_GLOBAL_OBJECT.GetCustomProperty("ServerStartOSTime")
end

function GetRemainingTime(timeInSeconds)
    return timeInSeconds - ((time() + GetStartOSTime()) % (timeInSeconds))
end

local functionTable = {}
functionTable.GetStartOSTime = GetStartOSTime
functionTable.GetRemainingTime = GetRemainingTime

API.Register(functionTable)