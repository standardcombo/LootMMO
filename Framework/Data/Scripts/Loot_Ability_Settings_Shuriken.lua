local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Shuriken'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Bleed',
        'Lifesteal'
    }
)
local mod

mod = modifiers['Damage']
mod.calculation = function(stats)
    return 29
end

mod = modifiers['Cooldown']
mod.calculation = function(stats)
    return 36
end

mod = modifiers['Bleed']
mod.calculation = function(stats)
    return 4
end

mod = modifiers['Lifesteal']
mod.calculation = function(stats)
    return 29
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

