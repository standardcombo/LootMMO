local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'EvasionChance'
    }
)

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = '6 - StarRating * 0.25'
modifiers['Cooldown'].calculation = function(stats)
    local min = 6
    local starRating = stats['Roll']
    local baseModifier = 0.25
    return min - starRating * baseModifier
end

--Formula: AGI / 172
modifiers['EvasionChance'].calculation = function(stats)
    local VIT = stats.V
    function IsEvade()
        local chance = math.random(0,100)/100
        if chance <= VIT/172 then
            return true
        else
            return false
        end
    end
    return IsEvade()
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
