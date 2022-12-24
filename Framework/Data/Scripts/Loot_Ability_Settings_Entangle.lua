local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Entangle'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'Bleed',
        'Slow',
        'Duration',
    }
)
local mod

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

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['Bleed']
do
	local min = 10
	local max = 60
	mod.calString = string.format("60 + 50 * SP / 156")
	mod.calculation = function(stats)
		return CoreMath.Round(min + (max - min) * stats.SP / CalcAPI.MAX_SP)
	end
end

--Formula: Min + (Max - Min) * VIT / 172
mod = modifiers['Slow']
do
	local min = 0.2
	local max = 0.8
	mod.calString = string.format("0.2 + 0.6 * AGI / 172")
	mod.calculation = function(stats)
		return min + (max - min) * stats.V / CalcAPI.MAX_VIT
	end
end

--Formula: Min + (Max - Min) * AGI / 172
mod = modifiers['Duration']
do
	local min = 5
	local max = 15
	mod.calString = string.format("5 + (15 - 5) * AGI / 172")
	mod.calculation = function(stats)
		local result = min + (max - min) * stats.A / CalcAPI.MAX_AGI
		return result
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

