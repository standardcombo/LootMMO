local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown})
}
modifiers[MODIFIERS.Duration.name].calculation = function(stats)
    return 8 
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 20  - stats.A * 0.005
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
