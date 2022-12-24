local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Blade Dash'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
do
	local min = 150
	local max = 1000
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), CalcAPI.MAX_SP)
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
			local crit_min = 1.7
			local baseModifier = 0.1
			return crit_min + starRating * baseModifier
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
	local min = 12
	local base = 0.5
	mod.calString = string.format("%s - Star Rating * %s", min, base)
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

