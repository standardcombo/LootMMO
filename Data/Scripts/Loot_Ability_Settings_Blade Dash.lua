local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))

local modifiers = {
    [MODIFIERS.DamageRange.name] = setmetatable({}, {__index = MODIFIERS.DamageRange}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range})
}
modifiers[MODIFIERS.DamageRange.name].calculation = function(stats)
    return {min = 68, max = 100}
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 8 - stats.W * 0.001
end
modifiers[MODIFIERS.Range.name].calculation = function(stats)
    return 1000 + stats.A * 0.001
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
