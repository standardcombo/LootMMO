local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Radius'
    }
)

modifiers['Damage'].calculation = function(stats)
    return 80 + stats.A * 0.3
end
modifiers['Cooldown'].calculation = function(stats)
    return 20 - stats.W * 0.006
end
modifiers['Radius'].calculation = function(stats)
    return 300 + stats.A * 0.5
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
