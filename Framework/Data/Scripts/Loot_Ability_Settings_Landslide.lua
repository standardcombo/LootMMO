local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Landslide'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 100, 500)
ModAPI.AddAgilityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddVitalityScale(modifiers, 'BashRadius', 5, 20)
ModAPI.AddConstantValue(modifiers, 'Range', 0.8)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 10, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

