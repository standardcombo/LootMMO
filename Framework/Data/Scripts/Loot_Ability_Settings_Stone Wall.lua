local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Stone Wall'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown'
    }
)
local mod

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['Duration']
do
	local min = 2
	local max = 5
	mod.calString = string.format("2 + 3 * VIT / 172")
	mod.calculation = function(stats)
		local result = min + (max - min) * stats.V / CalcAPI.MAX_VIT
		return result
	end
end

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
do
	local min = 12
	local base = 0.5
	mod.calString = string.format("12 - Star Rating * 0.5")
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return min - starRating * base
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

