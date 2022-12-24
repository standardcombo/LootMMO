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
do
	local min = 100
	local max = 500
	mod.calString = string.format("100 + 400 * SP / 156")
	mod.calculation = function(stats)
		local dmg = min + (max - min) * stats.SP / CalcAPI.MAX_SP
		local AGI = stats.A
		local starRating = stats[ABILITY_ID]
		-- Check for crit
		function IsCrit()
			if math.random() <= AGI / CalcAPI.MAX_AGI then
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
end

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
do
	local min = 10
	local base = 0.5
	mod.calString = string.format("12 - Star Rating * 0.5")
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['BashRadius']
do
	local min = 5
	local max = 20
	mod.calString = string.format("5 + 15 * VIT / 172")
	mod.calculation = function(stats)
		local radius = min + (max - min) * stats.V / CalcAPI.MAX_VIT
		return radius
	end
end

--Formula: base value
mod = modifiers['Range']
do
	local base = 0.8
	mod.calString = string.format("0.8")
	mod.calculation = function(stats)
		return base
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

