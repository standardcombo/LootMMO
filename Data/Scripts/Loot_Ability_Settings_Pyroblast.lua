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
    return 120
end
modifiers['Cooldown'].calculation = function(stats)
    return 30
end
modifiers['Radius'].calculation = function(stats)
    return 400
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
