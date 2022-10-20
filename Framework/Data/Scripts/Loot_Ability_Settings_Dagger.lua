local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'DamageRange',
        'Cooldown'
    }
)
modifiers['DamageRange'].calculation = function(stats)
    return 2
end
modifiers['Cooldown'].calculation = function(stats)
    return 2
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
