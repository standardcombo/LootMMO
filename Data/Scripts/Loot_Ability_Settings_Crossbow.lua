local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.DamageRange.name] = setmetatable({}, {__index = MODIFIERS.DamageRange}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.FullChargeBonus.name] = setmetatable({}, {__index = MODIFIERS.FullChargeBonus}),
    [MODIFIERS.ChargeDamage.name] = setmetatable({}, {__index = MODIFIERS.ChargeDamage})
}
modifiers[MODIFIERS.DamageRange.name].calculation = function(stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 2
end
modifiers[MODIFIERS.FullChargeBonus.name].calculation = function(stats)
    return 2
end
modifiers[MODIFIERS.ChargeDamage.name].calculation = function(stats)
    return 2
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
