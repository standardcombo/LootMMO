local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ModAPI = _G['Ability.Modifiers']

local ABILITY_ID = 'AttackPotion'

local modifiers = {}
ModAPI.AddConstantValue(modifiers, 'Cooldown', 3 * 60)


CalcAPI.RegisterCalculation(ROOT, modifiers)

