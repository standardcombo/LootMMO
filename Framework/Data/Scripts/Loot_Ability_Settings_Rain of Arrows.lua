local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Rain of Arrows'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 150, 1000)
ModAPI.AddVitalityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddAgilityScale(modifiers, 'Radius', 300, 1000)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 20, 0.75)


CalcAPI.RegisterCalculation(ROOT, modifiers)

