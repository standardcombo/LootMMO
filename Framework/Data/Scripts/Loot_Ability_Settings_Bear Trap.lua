local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Bear Trap'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 20, 200)
ModAPI.AddVitalityRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddSkillPowerScale(modifiers, 'Bleed', 20, 250)
ModAPI.AddConstantValue(modifiers, 'BleedDuration', 6)
ModAPI.AddAgilityScale(modifiers, 'StunDuration', 0.5, 3)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 12, -0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

