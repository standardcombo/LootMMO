local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Iceberg'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Duration',
        'Heal'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
do
	local min = 50
	local max = 400
	mod.calString = string.format("50 + 350 * SP / 156")
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
	local min = 20
	local base = 0.5
	mod.calString = string.format("20 - Star Rating * 0.5")
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Duration']
do
	local min = 3
	local max = 10
	mod.calString = string.format("3 + 7 * WIS / 172")
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['Heal']
do
	local min = 20
	local max = 80
	mod.calString = string.format("20 + 60 * VIT / 172")
	mod.calculation = function(stats)
		return min + (max - min) * stats.V / CalcAPI.MAX_VIT
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

