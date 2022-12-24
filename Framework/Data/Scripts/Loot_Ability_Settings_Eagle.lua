local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Eagle'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
do
	local min = 20
	local max = 60
	mod.calString = string.format("20 + 40 * SP / 156")
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
	local min = 18
	local base = 0.5
	mod.calString = string.format("12 - Star Rating * 0.5")
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

--Formula: Min + (Max - Min) * AGI / 172
mod = modifiers['Duration']
do
	local min = 60
	local max = 120
	mod.calString = string.format("60 + 60 * AGI / 172")
	mod.calculation = function(stats)
		local result = min + (max - min) * stats.A / CalcAPI.MAX_AGI
		return result
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

