local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Lifesteal.name] = setmetatable({}, {__index = MODIFIERS.Lifesteal})
}
modifiers[MODIFIERS.Damage.name].calculation = function(stats)
    return  29
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 36
end
modifiers[MODIFIERS.Bleed.name].calculation = function(stats)
    return 4
end
modifiers[MODIFIERS.Lifesteal.name].calculation = function(stats)
    return 29
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
