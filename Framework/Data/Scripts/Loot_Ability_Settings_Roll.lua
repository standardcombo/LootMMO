local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Roll'


local modifiers = {}
ModAPI.AddVitalityRNG(modifiers, 'EvasionChance')
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 8, 0.25)


CalcAPI.RegisterCalculation(ROOT, modifiers)

