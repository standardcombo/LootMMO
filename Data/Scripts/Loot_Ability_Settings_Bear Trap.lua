local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local wmodifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Stun.name] = setmetatable({}, {__index = MODIFIERS.Stun})
}

modifiers[MODIFIERS.Damage.name].calculation = function(stats)
    return 120
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 15
end
modifiers[MODIFIERS.Bleed.name].calculation = function(stats)
    return 5
end
modifiers[MODIFIERS.Stun.name].calculation = function(stats)
    return 5
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
