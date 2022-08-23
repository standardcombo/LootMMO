local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown})
}
modifiers[MODIFIERS.Range.name].calculation = function(stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 2
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
