local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.BashRadius.name] = setmetatable({}, {__index = MODIFIERS.BashRadius}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range})
}
modifiers[MODIFIERS.Damage.name].calculation = function(stats)
    return 76 + stats.A * 0.1
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 11 - stats.W * 0.002
end
modifiers[MODIFIERS.BashRadius.name].calculation = function(stats)
    return 1.2 + stats.A * 0.001
end
modifiers[MODIFIERS.Range.name].calculation = function(stats)
    return .8 + stats.A * 0.001
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
