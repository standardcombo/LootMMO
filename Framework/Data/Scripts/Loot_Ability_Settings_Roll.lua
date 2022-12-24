local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Roll'


local modifiers = {}
ModAPI.Add(modifiers, 'EvasionChance')
ModAPI.AddCooldown(modifiers, ABILITY_ID, 8, 0.25)


local modifiers =
    ModAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'EvasionChance'
    }
)
local mod


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

