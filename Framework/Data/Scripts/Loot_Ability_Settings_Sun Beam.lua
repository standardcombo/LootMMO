local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Sun Beam'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Speed',
        'Range',
        'Heal'
    }
)
local mod

mod = modifiers['Damage']
mod.calculation = function(stats)
    return 75 + stats.W * 0.01
end

mod = modifiers['Cooldown']
mod.calculation = function(stats)
    return 8 - stats.V * .002
end

mod = modifiers['Speed']
mod.calculation = function(stats)
    return 800 + stats.W
end

mod = modifiers['Range']
mod.calculation = function(stats)
    return 1000 + stats.W
end

mod = modifiers['Heal']
mod.calculation = function(stats)
    return 75 + stats.V * 0.01
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

