local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Heal'
    }
)

modifiers['Damage'].calString = "30 + (100 - 30) * SP / 156"
modifiers['Damage'].calculation = function(stats)
    local min = 30
    local max = 100
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
modifiers['Cooldown'].calString = "20 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 20
    local starRating = stats['Iceberg']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * WIS / 172
modifiers['Duration'].calString = "3 + (10 - 3) * WIS / 172"
modifiers['Duration'].calculation = function(stats)
    local min = 3
    local max = 10
    return min + (max - min) * stats.W / 172
end

--Formula: Min + (Max - Min) * VIT / 172
modifiers['Heal'].calString = "20 + (80 - 20) * VIT / 172"
modifiers['Heal'].calculation = function(stats)
    local min = 20
    local max = 80
    return min + (max - min) * stats.V / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
