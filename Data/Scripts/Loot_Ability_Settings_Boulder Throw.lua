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
    return 120 * (1 + (stats['Boulder Throw'] / 3))
end
modifiers['Cooldown'].calculation = function(stats)
    return 15 - stats['W'] * 0.003
end
modifiers['Radius'].calculation = function(stats)
    return 3 + stats['A'] * 0.002
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
