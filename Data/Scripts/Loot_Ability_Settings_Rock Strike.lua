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
    return 97 + stats.W * .01
end
modifiers['Cooldown'].calculation = function(stats)
    return 8 - stats.V * 0.001
end
modifiers['Radius'].calculation = function(stats)
    return 800 + stats.A
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
