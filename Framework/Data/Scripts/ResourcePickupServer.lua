 --[[
Copyright 2019 Manticore Games, Inc. 

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
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

-- User exposed properties
local HEALTH_CHANGE = COMPONENT_ROOT:GetCustomProperty("HealthChange")
local RESOURCE = COMPONENT_ROOT:GetCustomProperty("Resource")
local RESOURCE_CHANGE = COMPONENT_ROOT:GetCustomProperty("ResourceChange")
local MAX_RESOURCE = COMPONENT_ROOT:GetCustomProperty("MaxResource")
local PICKUP_EFFECTS = COMPONENT_ROOT:GetCustomProperty("PickupEffects")

-- Check user properties
if TRIGGER.isInteractable then
	warn("Trigger cannot be interactable")
    TRIGGER.isInteractable = false
end

if MAX_RESOURCE < 0 then
	warn("MaxResource cannot be negative")
    MAX_RESOURCE = 0
end

-- nil OnBeginOverlap(Trigger, CoreObject)
-- Change the player's resources, broadcast an event, and self-destruct
function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		local applied = false

		if HEALTH_CHANGE ~= 0.0 then
			if (other.hitPoints < other.maxHitPoints and HEALTH_CHANGE > 0.0) or HEALTH_CHANGE < 0.0 then
				applied = true
			end

			other:ApplyDamage(Damage.New(-HEALTH_CHANGE))
		end
		
		if RESOURCE ~= "" then
			local currentResource = other:GetResource(RESOURCE)
			local newResource = currentResource + RESOURCE_CHANGE

			if MAX_RESOURCE > 0 then
				newResource = CoreMath.Clamp(newResource, 0, MAX_RESOURCE)
			else
				newResource = math.max(0, newResource)
			end

			if newResource ~= currentResource then
				applied = true
				other:SetResource(RESOURCE, newResource)
			end
		end

		if applied then
			if PICKUP_EFFECTS then
				-- This is about to be destroyed, but we want the effects to persist, so they can't be parented
				local args = {position = COMPONENT_ROOT:GetWorldPosition(), rotation = COMPONENT_ROOT:GetWorldRotation()}
				World.SpawnAsset(PICKUP_EFFECTS, args)
			end

			Events.Broadcast("ResourcePickedUp", player, COMPONENT_ROOT)

			COMPONENT_ROOT:Destroy()
		end
	end
end

-- Initialize
TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)

for _, player in pairs(Game.GetPlayers()) do
	if TRIGGER:IsOverlapping(player) then
		OnBeginOverlap(TRIGGER, player)
	end
end
