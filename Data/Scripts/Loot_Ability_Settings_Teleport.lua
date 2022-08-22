local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local modifiers = {
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range})
}
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 10 - stats.V * .005
end
modifiers[MODIFIERS.Range.name].calculation = function(stats)
    return 1000 + stats.W
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
