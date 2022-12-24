local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Roll'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'EvasionChance'
    }
)
local mod

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
do
	local min = 8
	local base = 0.25
	mod.calString = string.format("8 - StarRating * 0.25")
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

--Formula: VIT / 172
mod = modifiers['EvasionChance']
do
	mod.calString = string.format("VIT / 172")
	mod.calculation = function(stats)
		local VIT = stats.V
		function IsEvade()
			if math.random() <= VIT / CalcAPI.MAX_VIT then
				return true
			else
				return false
			end
		end
		return IsEvade()
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

