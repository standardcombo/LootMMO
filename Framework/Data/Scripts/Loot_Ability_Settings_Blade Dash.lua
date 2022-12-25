local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Blade Dash'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 150, 1000)
ModAPI.AddVitalityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 12, -0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

