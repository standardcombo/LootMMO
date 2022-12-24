local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Eagle'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 20, 60)
ModAPI.AddVitalityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddAgilityScale(modifiers, 'Duration', 60, 120)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 18, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

