local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Stun.name] = setmetatable({}, {__index = MODIFIERS.Stun})
}

modifiers[MODIFIERS.Damage.name].calculation = function(stats)
    return 20 * (1 + stats['Bear Trap'])
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 15 + stats['A'] * 0.005
end
modifiers[MODIFIERS.Bleed.name].calculation = function(stats)
    return 5 + stats['A'] * 0.002
end
modifiers[MODIFIERS.Stun.name].calculation = function(stats)
    return 5 + stats['A'] * 0.002
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
