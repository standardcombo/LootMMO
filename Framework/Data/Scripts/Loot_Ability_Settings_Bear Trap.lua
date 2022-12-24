local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Bear Trap'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Bleed',
        'StunDuration',
        'BleedDuration'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
mod.calString = "20 + 180 * SP / 156"
mod.calculation = function(stats)
    local min = 20
    local max = 200
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
    local min = 12
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Bleed']
mod.calString = "10 + 40 * SP / 156"
mod.calculation = function(stats)
    local min = 20
    local max = 250
    local SP = stats.SP
    return CoreMath.Round(min + (max - min) * SP / 156)
end

--Formula: min
mod = modifiers['BleedDuration']
mod.calString = "6"
mod.calculation = function(stats)
    local min = 6
    return min
end

--Formula: Min + (Max - Min) * AGI / 156
mod = modifiers['StunDuration']
mod.calString = "0.5 + 2.5 * SP / 156"
mod.calculation = function(stats)
    local min = 0.5
    local max = 3
    local AGI = stats.A
    return min + (max - min) * AGI / 156
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

