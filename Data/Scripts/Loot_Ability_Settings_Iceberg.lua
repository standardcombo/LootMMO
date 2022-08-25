local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Heal'
    }
)

modifiers['Damage'].calculation = function(stats)
    return 25
end
modifiers['Cooldown'].calculation = function(stats)
    return 50
end
modifiers['Duration'].calculation = function(stats)
    return 6
end
modifiers['Heal'].calculation = function(stats)
    return 25
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
