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

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- nil OnAbilityCast(Ability)
-- Turn on the blocking display
function OnAbilityCast(ability)
    if ability.owner == LOCAL_PLAYER then
		Events.Broadcast("BlockingDisplay", true, ABILITY.castPhaseSettings.duration)
	end
end

-- nil OnAbilityInterrupted(Ability)
-- Turns off the blocking display
function OnAbilityInterrupted(ability)
	Events.Broadcast("BlockingDisplay", false)
end

-- nil OnUnequipped()
-- Turns off blocking display if the weapon becomes unequipped for any reason
function OnUnequipped()
	Events.Broadcast("BlockingDisplay", false)
end

-- Initialize
ABILITY.castEvent:Connect(OnAbilityCast)
ABILITY.interruptedEvent:Connect(OnAbilityInterrupted)

EQUIPMENT.unequippedEvent:Connect(OnUnequipped)

