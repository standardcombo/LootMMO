local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Stone Wall'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown'
    }
)
local mod

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['Duration']
mod.calString = "2 + 3 * VIT / 172"
mod.calculation = function(stats)
    local min = 2
    local max = 5
    local VIT = stats.V
    local result = min + (max - min) * VIT / 172
    return result
end

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
mod.calString = "12 - Star Rating * 0.5"
mod.calculation = function(stats)
    local min = 12
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

