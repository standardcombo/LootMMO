local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Divine Light'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Heal',
        'Cooldown',
        'Radius'
    }
)
local mod

mod = modifiers['Radius']
mod.calculation = function(stats)
    return 400 + (stats.W + stats.V / 2) * .2
end

mod = modifiers['Cooldown']
mod.calculation = function(stats)
    return 14 - stats.W * .005
end

mod = modifiers['Heal']
mod.calculation = function(stats)
    return 200 + stats.V * .5
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

