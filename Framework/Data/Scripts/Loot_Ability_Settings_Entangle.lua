local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Entangle'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'Bleed',
        'Slow',
        'Duration',
    }
)

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = "12 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 12
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * SP / 156
modifiers['Bleed'].calString = "60 + 50 * SP / 156"
modifiers['Bleed'].calculation = function(stats)
    local min = 10
    local max = 60
    local SP = stats.SP
    return CoreMath.Round(min + (max - min) * SP / 156)
end

--Formula: Min + (Max - Min) * VIT / 172
modifiers['Slow'].calString = "0.2 + 0.6 * AGI / 172"
modifiers['Slow'].calculation = function(stats)
    local min = 0.2
    local max = 0.8
    local VIT = stats.V
    return min + (max - min) * VIT / 172
end

--Formula: Min + (Max - Min) * AGI / 172
modifiers['Duration'].calString = "5 + (15 - 5) * AGI / 172"
modifiers['Duration'].calculation = function(stats)
    local min = 5
    local max = 15
    local AGI = stats.A
    local result = min + (max - min) * AGI / 172
    return result
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
