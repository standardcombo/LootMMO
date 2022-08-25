local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'DOT',
        'Cooldown',
        'Radius',
        'Duration'
    }
)
modifiers['DOT'].calculation = function(stats)
    return 35
end
modifiers['Cooldown'].calculation = function(stats)
    return 20
end
modifiers['Radius'].calculation = function(stats)
    return 200
end
modifiers['Duration'].calculation = function(stats)
    return 10
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
