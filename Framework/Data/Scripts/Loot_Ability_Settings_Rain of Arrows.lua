local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Rain of Arrows'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Radius'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
do
	local min = 150
	local max = 1000
	mod.calString = string.format("150 + 850 * SP / 156")
	mod.calculation = function(stats)
		local dmg = min + (max - min) * stats.SP / CalcAPI.MAX_SP
		local VIT = stats.V
		local starRating = stats[ABILITY_ID]
		-- Check for crit
		function IsCrit()
			if math.random() <= VIT / CalcAPI.MAX_VIT then
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
	local min = 20
	local base = 0.75
	mod.calString = string.format("20 - Star Rating * 0.5")
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)

--Formula: Min + (Max - Min) * AGI / 156
mod = modifiers['Radius']
do
	local min = 300
	local max = 1000
	mod.calString = string.format("300 + 700 * AGI / 172")
	mod.calculation = function(stats)
		return min + (max - min) * stats.A / CalcAPI.MAX_AGI
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

