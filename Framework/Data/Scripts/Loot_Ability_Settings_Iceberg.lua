local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Iceberg'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Heal'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
mod.calString = "50 + 350 * SP / 156"
mod.calculation = function(stats)
    local min = 50
    local max = 400
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    local AGI = stats.A
    local starRating = stats['Iceberg']
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
mod.calString = "20 - Star Rating * 0.5"
mod.calculation = function(stats)
    local min = 20
    local starRating = stats['Iceberg']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Duration']
mod.calString = "3 + 7 * WIS / 172"
mod.calculation = function(stats)
    local min = 3
    local max = 10
    return min + (max - min) * stats.W / 172
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['Heal']
mod.calString = "20 + 60 * VIT / 172"
mod.calculation = function(stats)
    local min = 20
    local max = 80
    return min + (max - min) * stats.V / 172
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

