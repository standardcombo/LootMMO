local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Stone Wall'


local modifiers = {}
ModAPI.AddVitalityScale(modifiers, 'Duration', 2, 5)
ModAPI.AddCooldown(modifiers, ABILITY_ID, 12, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

