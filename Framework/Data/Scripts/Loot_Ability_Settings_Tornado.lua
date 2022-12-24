local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Tornado'


local modifiers = {}
ModAPI.AddSkillPowerScale(modifiers, 'DOT', 10, 60)
ModAPI.AddWisdomScale(modifiers, 'Radius', 200, 800)
ModAPI.AddAgilityScale(modifiers, 'Slow', 0.4, 0.85)
ModAPI.AddWisdomScale(modifiers, 'Duration', 5, 10)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 20, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

