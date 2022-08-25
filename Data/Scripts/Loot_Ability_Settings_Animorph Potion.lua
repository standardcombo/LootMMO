local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown',
        'Radius'
    }
)

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
