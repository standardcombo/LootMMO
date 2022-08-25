local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'Range'
    }
)

modifiers['Cooldown'].calculation = function(stats)
    return 10 - stats.V * .005
end
modifiers['Range'].calculation = function(stats) 
    return 1000 + stats.W
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
