local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Healing Crystal'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Heal',
        'Range'
    }
)

modifiers['Damage'].calculation = function(stats)
    return 25 + stats.W * 0.01
end
modifiers['Cooldown'].calculation = function(stats)
    return 26 - stats.W * .01
end
modifiers['Duration'].calculation = function(stats)
    return 7 + stats.V * 0.005
end
modifiers['Heal'].calculation = function(stats)
    return 25 + stats.W * 0.01
end
modifiers['Range'].calculation = function(stats)
    return 500 + stats.V * 0.5
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
