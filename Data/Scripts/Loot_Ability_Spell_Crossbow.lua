local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.DamageRange.name] = setmetatable({}, {__index = MODIFIERS.DamageRange}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.FullChargeBonus.name] = setmetatable({}, {__index = MODIFIERS.FullChargeBonus}),
    [MODIFIERS.ChargeDamage.name] =setmetatable({}, {__index = MODIFIERS.ChargeDamage}),
}
modifiers[MODIFIERS.DamageRange.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.FullChargeBonus.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.ChargeDamage.name].calculation = function(self, stats)
    return 2
end
