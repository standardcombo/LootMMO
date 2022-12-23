local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Divine Light'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Heal',
        'Cooldown',
        'Radius'
    }
)

modifiers['Radius'].calculation = function(stats)
    return 400 + (stats.W + stats.V / 2) * .2
end
modifiers['Cooldown'].calculation = function(stats)
    return 14 - stats.W * .005
end
modifiers['Heal'].calculation = function(stats)
    return 200 + stats.V * .5
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
