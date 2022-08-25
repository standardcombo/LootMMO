local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Speed',
        'Range'
    }
)
modifiers['Damage'].calculation = function(stats)
    return 55
end
modifiers['Cooldown'].calculation = function(stats)
    return 48
end
modifiers['Duration'].calculation = function(stats)
    return 5
end
modifiers['Speed'].calculation = function(stats)
    return 400
end
modifiers['Range'].calculation = function(stats)
    return 400
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
