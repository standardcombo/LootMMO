local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Landslide'

--Modifiables that will be Accessed and read.  Must have a Modifiers assigned
local modifiers =
MODIFIERAPI.SetupMultipleNewModifiers(
	{
		'Damage',
		'Cooldown',
		'BashRadius',
		'Range'
	}
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
mod.calString = "100 + 400 * SP / 156"
mod.calculation = function(stats)
    local min = 100
    local max = 500
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
    local min = 10
    local starRating = stats[ABILITY_ID]
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['BashRadius']
mod.calString = "5 + 15 * VIT / 172"
mod.calculation = function(stats)
	local min = 5
	local max = 20
	local VIT = stats.V
	local radius = min + (max - min) * VIT / 172
	return radius
end

--Formula: base value
mod = modifiers['Range']
mod.calString = "0.8"
mod.calculation = function(stats)
	return 0.8
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

