local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown'
    }
)
modifiers['Cooldown'].calculation = function(stats)
    return 2 - ((stats['A'] + stats['W']) / 2 * 0.001)
end
modifiers['Cooldown'].calculationString = ' 2 - ((A + W) / 2 * 0.001)'

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
