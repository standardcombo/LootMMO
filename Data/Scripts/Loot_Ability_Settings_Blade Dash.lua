local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'DamageRange',
        'Cooldown',
        'Range'
    }
)
modifiers['DamageRange'].calculation = function(stats)
    return {min = 68, max = 100}
end
modifiers['Cooldown'].calculation = function(stats)
    return 8 - stats.W * 0.001
end
modifiers['Range'].calculation = function(stats)
    return 1000 + stats.A * 0.001
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
