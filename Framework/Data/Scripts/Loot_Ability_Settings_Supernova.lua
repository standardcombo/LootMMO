local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Supernova'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Heal',
        'Cooldown',
        'Damage',
        'Stun',
        'Radius'
    }
)
modifiers['Heal'].calculation = function(stats)
    return 1000
end
modifiers['Cooldown'].calculation = function(stats)
    return 50 - stats.V * .01
end
modifiers['Damage'].calculation = function(stats)
    return 200 + (stats.W * 0.2)
end
modifiers['Stun'].calculation = function(stats)
    return 10 + (stats.W + stats.V / 2) * .02
end
modifiers['Radius'].calculation = function(stats)
    return 900 + stats.W
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
