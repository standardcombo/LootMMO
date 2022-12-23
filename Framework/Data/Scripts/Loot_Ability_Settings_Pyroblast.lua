local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Pyroblast'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Radius'
    }
)

--Formula: Min + (Max - Min) * SP / 156
modifiers['Damage'].calString = "200 + 1500 * SP / 156"
modifiers['Damage'].calculation = function(stats)
    local min = 200
    local max = 1700
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
modifiers['Cooldown'].calString = "10 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 10
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * WIS / 172
modifiers['Radius'].calString = "400 + 600 * WIS / 172"
modifiers['Radius'].calculation = function(stats)
    local min = 400
    local max = 1000
    return min + (max - min) * stats.W / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
