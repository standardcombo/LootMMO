local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Animorph Potion'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown',
        'Radius'
    }
)
local mod

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Duration']
local d_min = 2
local d_max = 7
mod.calString = string.format("%s + %s * WIS / %s", d_min, (d_max - d_min), CalcAPI.MAX_WIS)
mod.calculation = function(stats)
    return d_min + (d_max - d_min) * stats.W / CalcAPI.MAX_WIS
end

--Formula: Min - Star Rating * Base Multiplier
mod = modifiers['Cooldown']
local c_min = 12
local c_base = 0.5
mod.calString = string.format("%s - Star Rating * %s", c_min, c_base)
mod.calculation = function(stats)
    local starRating = stats[ABILITY_ID]
    return c_min - starRating * c_base
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Radius']
local r_min = 100
local r_max = 400
mod.calString = string.format("%s + %s * WIS / %s", r_min, (r_max - r_min), CalcAPI.MAX_WIS)
mod.calculation = function(stats)
    return r_min + (r_max - r_min) * stats.W / CalcAPI.MAX_WIS
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

