--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--v0.12 NPC Kit

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()

-- User exposed variables
local EQUIPMENT_STANCE = EQUIPMENT:GetCustomProperty("EquipmentStance")
local ABILITY_ANIMATION_STANCE = script:GetCustomProperty("AbilityAnimationStance")
local BLOCK_PERCENTAGE = script:GetCustomProperty("BlockPercentage")

-- Internal variables
local released = false
local releasedHandle = nil
local goingToTakeDamageListener = nil

-- nil OnGoingToTakeDamage(Character taking damage, Damage object, Character dealing the damage)
function OnGoingToTakeDamage(attackData)
	local object = attackData.object
	local dmg = attackData.damage
	local source = attackData.source
	if object == EQUIPMENT.owner and dmg.amount > 0 then
        dmg.amount = dmg.amount - (dmg.amount * BLOCK_PERCENTAGE)
	end
end

-- nil OnAbilityReady(Ability)
-- Disconnect released event on end shield
function OnAbilityReady(ability)
    ClearReleasedHandle()
end

-- nil OnAbilityCast(Ability)
-- Set shield animation stance and connect released event
function OnAbilityCast(ability)
    local owner = ability.owner
	released = false

	owner.animationStance = ABILITY_ANIMATION_STANCE
    releasedHandle = owner.bindingReleasedEvent:Connect(OnShieldReleased)
    goingToTakeDamageListener = Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
end

-- nil OnAbilityExecute(Ability)
-- Stop shield animation once cast hold is finished
function OnAbilityExecute(ability)
	ability:Interrupt()
end

-- nil OnAbilityInterrupted(Ability)
-- Set back to weapon stance once the ability is interrupted
function OnAbilityInterrupted(ability)
    local owner = ability.owner
	owner.animationStance = EQUIPMENT_STANCE
end

-- nil OnAbilityTick(Ability)
-- Checks when user releases binding button before cast phase ends
function OnAbilityTick(ability, deltaTime)
	if released then
		ability:Interrupt()
    end
end

-- nil OnShieldReleased(Player, string)
function OnShieldReleased(player, binding)
    if player == ABILITY.owner and binding == ABILITY.actionBinding then
        released = true
    end
end

-- nil ClearReleasedHandle()
-- Disconnect released event on end shield
function ClearReleasedHandle()
    if releasedHandle then
        releasedHandle:Disconnect()
        releasedHandle = nil
    end

    if goingToTakeDamageListener then
    	goingToTakeDamageListener:Disconnect()
    	goingToTakeDamageListener = nil
    end
end

-- Initialize
ABILITY.readyEvent:Connect(OnAbilityReady)
ABILITY.castEvent:Connect(OnAbilityCast)
ABILITY.executeEvent:Connect(OnAbilityExecute)
ABILITY.interruptedEvent:Connect(OnAbilityInterrupted)
ABILITY.tickEvent:Connect(OnAbilityTick)

EQUIPMENT.unequippedEvent:Connect(ClearReleasedHandle)