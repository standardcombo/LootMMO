local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

--Modifiables that will be Accessed and read.  Must have a Modifiers assigned
local modifiers =
MODIFIERAPI.SetupMultipleNewModifiers(
	{
		'Damage',
		'Cooldown',
		'BashRadius',
		'Range'
	}
)

--Set the calcuation and string for the ability and upgrader to Read.
modifiers['Damage'].calString = "76 + stats.A * 0.1"
modifiers['Damage'].calculation = function(stats)
	return 76 + stats.A * 0.1
end

modifiers['Cooldown'].calString = "11 - stats.W * 0.002"
modifiers['Cooldown'].calculation = function(stats)
	return 11 - stats.W * 0.002
end

modifiers['BashRadius'].calString = "1.2 + stats.A * 0.001"
modifiers['BashRadius'].calculation = function(stats)
	return 1.2 + stats.A * 0.001
end

modifiers['Range'].calString = ".8 + stats.A * 0.001"
modifiers['Range'].calculation = function(stats)
	return .8 + stats.A * 0.001
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
