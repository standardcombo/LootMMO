local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

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

--Formula: Min + (Max - Min) * SP / 156
modifiers['Damage'].calString = "100 + (500 - 100) * SP / 156"
modifiers['Damage'].calculation = function(stats)
    local min = 100
    local max = 500
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    local AGI = stats.A
    local starRating = stats['Landslide']
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
modifiers['Cooldown'].calString = "12 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 10
    local starRating = stats['Landslide']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * VIT / 172
modifiers['BashRadius'].calString = "5 + (20 - 5) * VIT / 172"
modifiers['BashRadius'].calculation = function(stats)
	local min = 5
	local max = 20
	local VIT = stats.V
	local radius = min + (max - min) * VIT / 172
	return radius
end

modifiers['Range'].calString = "0.8"
modifiers['Range'].calculation = function(stats)
	return 0.8
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
