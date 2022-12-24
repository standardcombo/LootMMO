local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Tornado'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'DOT',
        'Cooldown',
        'Radius',
        'Duration',
        'Slow'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['DOT']
mod.calString = "10 + 50 * SP / 156"
mod.calculation = function(stats)
    local min = 10
    local max = 60
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    return CoreMath.Round(dmg)
end

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
mod.calString = "20 - Star Rating * 0.5"
mod.calculation = function(stats)
    local min = 20
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Radius']
mod.calString = "200 + 600 * WIS / 172"
mod.calculation = function(stats)
    local min = 200
    local max = 800
    return min + (max - min) * stats.W / 172
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Duration']
mod.calString = "5 + 5 * WIS / 172"
mod.calculation = function(stats)
    local min = 5
    local max = 10
    return min + (max - min) * stats.W / 172
end

--Formula: Min + (Max - Min) * AGI / 172
mod = modifiers['Slow']
mod.calString = "0.4 + 0.45 * AGI / 172"
mod.calculation = function(stats)
    local min = 0.4
    local max = 0.85
    local AGI = stats.A
    return min + (max - min) * AGI / 172
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

