local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Healing Crystal'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Heal',
        'Radius'
    }
)
local mod

mod = modifiers['Damage']
mod.calculation = function(stats)
    return 25 + stats.W * 0.01
end

mod = modifiers['Cooldown']
mod.calculation = function(stats)
    return 26 - stats.W * .01
end

mod = modifiers['Duration']
mod.calculation = function(stats)
    return 7 + stats.V * 0.005
end

mod = modifiers['Heal']
mod.calculation = function(stats)
    return 25 + stats.W * 0.01
end

mod = modifiers['Radius']
mod.calculation = function(stats)
    return 500 + stats.V * 0.5
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

