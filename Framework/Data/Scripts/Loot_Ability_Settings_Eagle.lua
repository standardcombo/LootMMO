local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Eagle'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
mod.calString = "20 + 40 * SP / 156"
mod.calculation = function(stats)
    local min = 20
    local max = 60
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
mod.calString = "12 - Star Rating * 0.5"
mod.calculation = function(stats)
    local min = 18
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * AGI / 172
mod = modifiers['Duration']
mod.calString = "60 + 60 * AGI / 172"
mod.calculation = function(stats)
    local min = 60
    local max = 120
    local AGI = stats.A
    local result = min + (max - min) * AGI / 172
    return result
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

