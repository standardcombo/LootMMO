local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown'
    }
)
modifiers['Duration'].calculation = function(stats)
    return 8
end
modifiers['Cooldown'].calculation = function(stats)
    return 20 - stats.A * 0.005
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
