local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
MODIFIERAPI.SetupMultipleNewModifiers(
	{
		'Cooldown',
	}
)

modifiers['Cooldown'].calculation = function(stats)
	return 3*60
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
