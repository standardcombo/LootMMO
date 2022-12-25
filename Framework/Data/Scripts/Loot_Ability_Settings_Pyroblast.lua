local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Pyroblast'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 200, 1700)
ModAPI.AddAgilityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddWisdomScale(modifiers, 'Radius', 400, 1000)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 10, -0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

