--[[
	Pickup Bob & Rotate - Client
	v1.0
	by: standardcombo
	
	Causes an object to pop upwards then fall back down. It will then
	rotate and bob up/down. Used in animating loot drops.
	
	Expects to be in a client-context group.
--]]

local TARGET = script:GetCustomProperty("Target"):WaitForObject()
local SPAWN_IMPULSE = script:GetCustomProperty("SpawnImpulse") or 10000
local GRAVITY = script:GetCustomProperty("Gravity") or 2000
local AMPLITUDE = script:GetCustomProperty("BobAmplitude") or 15
local FREQUENCY = script:GetCustomProperty("BobFrequency") or 2
local ROTATION_SPEED = script:GetCustomProperty("RotationSpeed") or 100

local startingPos = TARGET:GetPosition()
local jumpVelocity = SPAWN_IMPULSE

local isJumping = (SPAWN_IMPULSE > 0)


function Tick(deltaTime)

	
	if isJumping then
		local pos = TARGET:GetPosition()
		
		local pos = pos + Vector3.UP * jumpVelocity * deltaTime
		jumpVelocity = jumpVelocity - GRAVITY * deltaTime
		
		if jumpVelocity < 0 and pos.z < startingPos.z + AMPLITUDE then
			pos = startingPos
			isJumping = false
		end
		
		TARGET:SetPosition(pos)
	
	else
		local pos = startingPos
		
		local bob = (math.sin(time() * FREQUENCY) + 1) * AMPLITUDE
		local pos = Vector3.New(0, 0, bob)
		TARGET:SetPosition(startingPos + pos)
		
		local rot = Rotation.New(0, 0, time() * ROTATION_SPEED)
		TARGET:SetRotation(rot)
	end
end