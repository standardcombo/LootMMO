local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Radius',
        'Cooldown',
        'Bleed',
        'Slow'
    }
)

modifiers['Radius'].calculation = function(stats)
    return 200
end
modifiers['Cooldown'].calculation = function(stats)
    return 10
end
modifiers['Bleed'].calculation = function(stats)
    return 5
end
modifiers['Slow'].calculation = function(stats)
    return 5
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
