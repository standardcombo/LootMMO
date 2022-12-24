local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Rain of Arrows'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Radius'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
mod.calString = "150 + 850 * SP / 156"
mod.calculation = function(stats)
    local min = 150
    local max = 1000
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    local VIT = stats.V
    local starRating = stats[ABILITY_ID]
    -- Check for crit
    function IsCrit()
        if math.random() <= VIT/172 then
            return true
        else
            return false
        end
    end
    -- Get crit multiplier
    function GetMultiplier()
        --Min + Star Rating * Base Modifier
        local min = 1.7
        local baseModifier = 0.1
        return min + starRating * baseModifier
    end
    if IsCrit() then
        return {CoreMath.Round(GetMultiplier() * dmg), true}
    else
        return {CoreMath.Round(dmg), false}
    end
end

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
mod.calString = "20 - Star Rating * 0.5"
mod.calculation = function(stats)
    local min = 20
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.75
    return min - starRating * baseModifier
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)

--Formula: Min + (Max - Min) * AGI / 156
mod = modifiers['Radius']
mod.calString = "300 + 700 * AGI / 172"
mod.calculation = function(stats)
    local min = 300
    local max = 1000
    return min + (max - min) * stats.A / 172
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

