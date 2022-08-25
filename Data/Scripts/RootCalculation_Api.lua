local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local function UserDataBypass()
    if Environment.IsClient() then
        return 'clientUserData'
    end
    return 'serverUserData'
end

local function CalculateStats(Modifiers, stats)
    setmetatable(stats, {__index = function(table, key)
        return 0
    end})
    
    local newstats = {}
    for key, value in pairs(Modifiers or {}) do
        if value.calculation then
            newstats[key] = value.calculation(stats)
        else
            newstats[key] = value.value or 0
        end
    end
    return newstats
end

local Api = {}

function Api.RegisterCalculation(Root, modifiers)
    local bypass = UserDataBypass()
    Root[bypass].calculateModifier = function()
        return CalculateStats(modifiers, STATS_CONNECTOR.GetStats(Root.owner))
    end 
    Root[bypass].calculateModifierFromStats = function(stats)
        return CalculateStats(modifiers, stats)
    end
end

return Api
