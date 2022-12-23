local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Sun Beam'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Speed',
        'Range',
        'Heal'
    }
)
modifiers['Damage'].calculation = function(stats)
    return 75 + stats.W * 0.01
end
modifiers['Cooldown'].calculation = function(stats)
    return 8 - stats.V * .002
end
modifiers['Speed'].calculation = function(stats)
    return 800 + stats.W
end
modifiers['Range'].calculation = function(stats)
    return 1000 + stats.W
end
modifiers['Heal'].calculation = function(stats)
    return 75 + stats.V * 0.01
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
