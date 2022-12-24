local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Teleport'


local modifiers = {}
ModAPI.AddSkillPowerWithCrit(modifiers, 'Damage', 150, 1000)
ModAPI.AddWisdomRNG(modifiers, 'CritChance')
ModAPI.AddStarRatingScale(modifiers, 'CritMult', ABILITY_ID, 1.7, 0.1)
ModAPI.AddWisdomScale(modifiers, 'Range', 2000, 3000)
ModAPI.AddStarRatingScale(modifiers, 'Cooldown', ABILITY_ID, 20, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

