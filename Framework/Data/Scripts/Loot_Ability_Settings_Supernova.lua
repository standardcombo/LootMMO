local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Supernova'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Heal',
        'Cooldown',
        'Damage',
        'Stun',
        'Radius'
    }
)
local mod

mod = modifiers['Heal']
mod.calculation = function(stats)
    return 1000
end

mod = modifiers['Cooldown']
mod.calculation = function(stats)
    return 50 - stats.V * .01
end

mod = modifiers['Damage']
mod.calculation = function(stats)
    return 200 + (stats.W * 0.2)
end

mod = modifiers['Stun']
mod.calculation = function(stats)
    return 10 + (stats.W + stats.V / 2) * .02
end

mod = modifiers['Radius']
mod.calculation = function(stats)
    return 900 + stats.W
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

