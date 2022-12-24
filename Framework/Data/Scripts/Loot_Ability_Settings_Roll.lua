local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Roll'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'EvasionChance'
    }
)
local mod

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
mod.calString = '8 - StarRating * 0.25'
mod.calculation = function(stats)
    local min = 8
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.25
    return min - starRating * baseModifier
end

--Formula: VIT / 172
mod = modifiers['EvasionChance']
mod.calString = "VIT / 172"
mod.calculation = function(stats)
    local VIT = stats.V
    function IsEvade()
        if math.random() <= VIT/172 then
            return true
        else
            return false
        end
    end
    return IsEvade()
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

