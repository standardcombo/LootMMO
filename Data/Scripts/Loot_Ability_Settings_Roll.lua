local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown})
}
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 2 - ((stats['A'] + stats['W']) / 2 * 0.001)
end
modifiers[MODIFIERS.Cooldown.name].calculationString = ' 2 - ((A + W) / 2 * 0.001)'

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
