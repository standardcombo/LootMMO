local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'BashRadius',
        'Range'
    }
)

modifiers['Damage'].calculation = function(stats)
    return 76 + stats.A * 0.1
end
modifiers['Cooldown'].calculation = function(stats)
    return 11 - stats.W * 0.002
end
modifiers['BashRadius'].calculation = function(stats)
    return 1.2 + stats.A * 0.001
end
modifiers['Range'].calculation = function(stats)
    return .8 + stats.A * 0.001
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
