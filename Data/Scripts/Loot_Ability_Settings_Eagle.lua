local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration'
    }
)

modifiers['Damage'].calculation = function(stats)
    return 40
end
modifiers['Cooldown'].calculation = function(stats)
    return 40
end
modifiers['Duration'].calculation = function(stats)
    return 15
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
