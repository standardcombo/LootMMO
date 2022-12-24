local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Animorph Potion'


local modifiers = {}
ModAPI.AddWisdomScale(modifiers, 'Duration', 2, 7)
ModAPI.AddWisdomScale(modifiers, 'Radius', 100, 400)
ModAPI.AddCooldown(modifiers, ABILITY_ID, 12, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

