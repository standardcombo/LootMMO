local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Animorph Potion'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown',
        'Radius'
    }
)
local mod

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Duration']
do
	local min = 2
	local max = 7
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

--Formula: Min - Star Rating * Base Multiplier
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

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Radius']
do
	local min = 100
	local max = 400
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

