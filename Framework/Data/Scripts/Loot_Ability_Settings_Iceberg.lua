local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Iceberg'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 50, 400)
ModAPI.AddAgilityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddWisdomScale(modifiers, 'Heal', 20, 80)
ModAPI.AddWisdomScale(modifiers, 'Duration', 3, 10)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 20, -0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

