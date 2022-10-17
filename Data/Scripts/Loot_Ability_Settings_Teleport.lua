local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Range'
    }
)

--Formula: Min + (Max - Min) * SP / 156
modifiers['Damage'].calString = "20 + (200 - 20) * SP / 156"
modifiers['Damage'].calculation = function(stats)
    local min = 20
    local max = 200
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    local WIS = stats.W
    local starRating = stats['Blade Dash']
    -- Check for crit
    function IsCrit()
        if math.random() <= WIS/172 then
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

modifiers['Cooldown'].calString = "20 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    --Formula: Min - Star Rating * Base Modifier
    local min = 0 --SHOULD BE 20 ***********************************
    local starRating = stats['Teleport']
    local BaseModifier = 0.5
    return min - starRating * BaseModifier
end

modifiers['Range'].calString = "2000 + (3000 - 2000) * WIS / 172"
modifiers['Range'].calculation = function(stats)
    local min = 2000
    local max = 3000
    return min + (max - min) * stats.W / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
