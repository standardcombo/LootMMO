local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Rain of Arrows'


local modifiers = {}
ModAPI.Add(modifiers, 'Damage')
ModAPI.AddAgilityScale(modifiers, 'Radius', 300, 1000)
ModAPI.AddCooldown(modifiers, 20, 0.75)


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

CalcAPI.RegisterCalculation(ROOT, modifiers)

