local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown})
}
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
