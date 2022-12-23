local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Shuriken'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Bleed',
        'Lifesteal'
    }
)
modifiers['Damage'].calculation = function(stats)
    return 29
end
modifiers['Cooldown'].calculation = function(stats)
    return 36
end
modifiers['Bleed'].calculation = function(stats)
    return 4
end
modifiers['Lifesteal'].calculation = function(stats)
    return 29
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
