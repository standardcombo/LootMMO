local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range})
}

modifiers[MODIFIERS.Damage.name].calculation = function(stats)
    return 25 + stats.W * 0.01
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 26 -  stats.W * .01
end
modifiers[MODIFIERS.Duration.name].calculation = function(stats)
    return 7 + stats.V * 0.005
end
modifiers[MODIFIERS.Heal.name].calculation = function(stats)
    return 25 + stats.W * 0.01
end
modifiers[MODIFIERS.Range.name].calculation = function(stats)
    return 500 + stats.V * 0.5
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
