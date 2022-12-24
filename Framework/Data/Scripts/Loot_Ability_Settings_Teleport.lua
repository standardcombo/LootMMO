local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Teleport'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Range'
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
		local WIS = stats.W
		local starRating = stats[ABILITY_ID]
		-- Check for crit
		function IsCrit()
			if math.random() <= WIS / CalcAPI.MAX_WIS then
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

--Formula: ?
mod = modifiers['Range']
do
	local min = 2000
	local max = 3000
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

