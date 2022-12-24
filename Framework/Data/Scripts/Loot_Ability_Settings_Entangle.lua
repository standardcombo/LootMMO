local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'Entangle'


local modifiers = {}
ModAPI.AddSkillPowerScale(modifiers, 'Bleed', 10, 60)
ModAPI.AddVitalityScale(modifiers, 'Slow', 0.2, 0.8)
ModAPI.AddAgilityScale(modifiers, 'Duration', 5, 15)
ModAPI.AddCooldown(modifiers, ABILITY_ID, 12, 0.5)


CalcAPI.RegisterCalculation(ROOT, modifiers)

