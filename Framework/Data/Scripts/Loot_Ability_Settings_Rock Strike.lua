local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Rock Strike'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Radius',
        'StunDuration',
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
    local AGI = stats.A
    local starRating = stats[ABILITY_ID]
    -- Check for crit
    function IsCrit()
        if math.random() <= AGI/172 then
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
    local min = 12
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['Radius']
mod.calString = "200 + 600 * VIT / 172"
mod.calculation = function(stats)
    local min = 200
    local max = 800
    return min + (max - min) * stats.V / 172
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['StunDuration']
mod.calString = "0.5 + 2.5 * VIT / 172"
mod.calculation = function(stats)
    local min = 0.5
    local max = 3
    return min + (max - min) * stats.V / 172
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

