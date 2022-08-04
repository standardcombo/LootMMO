local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))

local modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Speed.name] = setmetatable({}, {__index = MODIFIERS.Speed}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Speed})
}
modifiers[MODIFIERS.Damage.name].calculation = function(stats) 
    return 75
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 8
end
modifiers[MODIFIERS.Speed.name].calculation = function(stats)
    return 600
end
modifiers[MODIFIERS.Range.name].calculation = function(stats)
    return 400
end
modifiers[MODIFIERS.Heal.name].calculation = function(stats)
    return 75
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
