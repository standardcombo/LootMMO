local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Boulder Throw'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 300, 1500)
ModAPI.AddAgilityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddVitalityScale(modifiers, 'Radius', 1, 5)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 25, 0.75)


CalcAPI.RegisterCalculation(ROOT, modifiers)

