local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration'
    }
)

--Formula: Min + (Max - Min) * SP / 156
modifiers['Damage'].calString = "20 + (60 - 20) * SP / 156"
modifiers['Damage'].calculation = function(stats)
    local min = 20
    local max = 60
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    local VIT = stats.V
    local starRating = stats['Eagle']
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
        return {GetMultiplier() * dmg, true}
    else
        return {dmg, false}
    end
end

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = "12 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 12
    local starRating = stats['Eagle']
    local baseModifier = 0.5
    return min - starRating * baseModifier
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
