local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Bleed',
        'Stun'
    }
)
modifiers['Damage'].calculation = function(stats)
    return 20 - (0.5 * stats['Bear Trap'])
end
modifiers['Cooldown'].calculation = function(stats)
    return 15 + stats['A'] * 0.005
end
modifiers['Bleed'].calculation = function(stats)
    return 5 + stats['A'] * 0.002
end
modifiers['Stun'].calculation = function(stats)
    return 5 + stats['A'] * 0.002
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
