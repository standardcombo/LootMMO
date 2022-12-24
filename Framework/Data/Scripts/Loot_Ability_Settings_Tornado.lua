local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Tornado'

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'DOT',
        'Cooldown',
        'Radius',
        'Duration',
        'Slow'
    }
)
local mod

--Formula: Min + (Max - Min) * SP / 156
mod = modifiers['DOT']
do
	local min = 10
	local max = 60
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), CalcAPI.MAX_SP)
	mod.calculation = function(stats)
		local dmg = min + (max - min) * stats.SP / CalcAPI.MAX_SP
		return CoreMath.Round(dmg)
	end
end

--Formula: Min - Star Rating * Base Modifier
mod = modifiers['Cooldown']
do
	local min = 20
	local base = 0.5
	mod.calString = string.format("%s - Star Rating * %s", min, base)
	mod.calculation = function(stats)
		local starRating = stats[ABILITY_ID]
		return c_min - starRating * c_base
	end
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Radius']
do
	local min = 200
	local max = 800
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

--Formula: Min + (Max - Min) * WIS / 172
mod = modifiers['Duration']
do
	local min = 5
	local max = 10
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

--Formula: Min + (Max - Min) * AGI / 172
mod = modifiers['Slow']
do
	local min = 0.4
	local max = 0.85
	mod.calString = string.format("%s + %s * AGI / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		local AGI = stats.A
		return min + (max - min) * AGI / CalcAPI.MAX_WIS
	end
end

CalcAPI.RegisterCalculation(ROOT, modifiers)

