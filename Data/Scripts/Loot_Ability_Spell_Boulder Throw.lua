local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] =setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] =setmetatable({}, {__index = MODIFIERS.Cooldown}),
}
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
