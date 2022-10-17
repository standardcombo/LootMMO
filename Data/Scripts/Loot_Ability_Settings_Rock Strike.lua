local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Radius',
        'StunDuration',
    }
)
--Formula: Min + (Max - Min) * SP / 156
modifiers['Damage'].calString = "20 + (200 - 20) * SP / 156"
modifiers['Damage'].calculation = function(stats)
    local min = 20
    local max = 200
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    local AGI = stats.A
    local starRating = stats['Rock Strike']
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
        return {math.floor(GetMultiplier() * dmg), true}
    else
        return {math.floor(dmg), false}
    end
end

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = "12 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 12
    local starRating = stats['Rock Strike']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * VIT / 172
modifiers['Radius'].calString = "200 + (800 - 200) * VIT / 172"
modifiers['Radius'].calculation = function(stats)
    local min = 200
    local max = 800
    return min + (max - min) * stats.V / 172
end

--Formula: Min + (Max - Min) * VIT / 172
modifiers['StunDuration'].calString = "0.5 + (2 - 0.5) * VIT / 172"
modifiers['StunDuration'].calculation = function(stats)
    local min = 0.5
    local max = 2
    return min + (max - min) * stats.V / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
