local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Deaths Shadow'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Speed',
        'Range'
    }
)
local mod

mod = modifiers['Damage']
mod.calculation = function(stats)
    return 55
end

mod = modifiers['Cooldown']
mod.calculation = function(stats)
    return 48
end

mod = modifiers['Duration']
mod.calculation = function(stats)
    return 5
end

mod = modifiers['Speed']
mod.calculation = function(stats)
    return 400
end

mod = modifiers['Range']
mod.calculation = function(stats)
    return 400
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

