local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Bear Trap'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Damage',
        'Cooldown',
        'Bleed',
        'StunDuration',
        'BleedDuration'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Damage']
do
	local min = 20
	local max = 200
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
	local min = 12
	local base = 0.5
	mod.calString = string.format("%s - Star Rating * %s", min, base)
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Bleed']
do
	local min = 20
	local max = 250
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), CalcAPI.MAX_SP)
	mod.calculation = function(stats)
		return CoreMath.Round(min + (max - min) * stats.SP / CalcAPI.MAX_SP)
	end
end

--Formula: min
mod = modifiers['BleedDuration']
do
	local min = 6
	mod.calString = string.format("%s")
	mod.calculation = function(stats)
		return min
	end
end

--Formula: Min + (Max - Min) * AGI / 156
mod = modifiers['StunDuration']
do
	local min = 0.5
	local max = 3
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), CalcAPI.MAX_AGI)
	mod.calculation = function(stats)
		local AGI = stats.A
		return min + (max - min) * AGI / CalcAPI.MAX_AGI
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

