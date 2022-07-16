--[[
	Throwable Object - Server
	v1.0
	by: standardcombo
	
	Implements an environment object that can be picked up and thrown.
]]

local EQUIPMENT = script:FindAncestorByType("Equipment")

local PICKUP_EVENT_NAME = "PickupEquipment"

local SPINE_ANCHOR = script:GetCustomProperty("SpineAnchor"):WaitForObject()
local PHYSICS_ANCHOR = script:GetCustomProperty("PhysicsAnchor"):WaitForObject()
local PHYSICS_TEMPLATE = script:GetCustomProperty("PhysicsTemplate")
local THROW_STRENGTH = script:GetCustomProperty("ThrowStrength")
local THROW_ROTATION = script:GetCustomProperty("ThrowRotation")
local COLLIDER = script:GetCustomProperty("Collider"):GetObject()
local DAMAGE_AMOUNT = script:GetCustomProperty("DamageAmount")
local RESET_DELAY = script:GetCustomProperty("ResetDelay")

local startPos = EQUIPMENT:GetWorldPosition()
local startRot = EQUIPMENT:GetWorldRotation()
local lastPos = startPos
local lastRot = startRot

local resetTask = nil
local throwListener = nil


function Reset()
	EQUIPMENT:SetWorldPosition(startPos)
	EQUIPMENT:SetWorldRotation(startRot)
	lastPos = startPos
	lastRot = startRot
	resetTask = nil
end

function OnPickup(player, equipment)
	if equipment ~= EQUIPMENT then return end
	if player.isDead then return end
	if equipment.owner ~= nil then return end
	
	local distanceSqr = (player:GetWorldPosition() - equipment:GetWorldPosition()).sizeSquared
	if distanceSqr > 60000 then return end
	
	-- Cancel the reset
	if resetTask then
		resetTask:Cancel()
		resetTask = nil
	end
	
	--EQUIPMENT:SetReplicationEnabled(true)
	
	if COLLIDER then
		COLLIDER:SetReplicationEnabled(true)
		COLLIDER.collision = Collision.FORCE_OFF
	end
	
	EQUIPMENT.parent = nil
	Task.Wait(0.15)
	if not Object.IsValid(player) then return end
	
	if _G.EquipmentStack then
		_G.EquipmentStack.Equip(player, equipment)
	else
		equipment:Equip(player)
	end
	
	-- Connect the throw ability
	local throwAbility = _G.ThrowableSupport.EnableThrow(player)
	throwListener = throwAbility.executeEvent:Connect(OnThrow)
end
Events.ConnectForPlayer(PICKUP_EVENT_NAME, OnPickup)


function OnEquipped(equipment, player)
	local t = SPINE_ANCHOR:GetTransform()
	t = t:GetInverse()
	
	EQUIPMENT:SetWorldPosition(lastPos)
	EQUIPMENT:SetWorldRotation(lastRot)
	
	EQUIPMENT:MoveTo(Vector3.New(180,0,20), 0.2, true)
	EQUIPMENT:RotateTo(Rotation.New(0, 90, 0), 0.2, true)
	
	Task.Wait(0.2)
	EQUIPMENT:MoveTo(t:GetPosition(), 0.3, true)
	EQUIPMENT:RotateTo(t:GetRotation(), 0.3, true)
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)


function OnThrow(ability)
	-- Spawn the physics object that will contain the equipment
	local obj = SpawnPhysicsObject()
	
	if ability then
		obj.serverUserData.damageAmount = DAMAGE_AMOUNT
		obj.serverUserData.throwingPlayer = ability.owner
		
		-- Change its team to match that of the thrower, so it doesn't collide
		obj.team = ability.owner.team
		
		-- Give the physics object initial velocity. Linear and angular
		local direction = ability:GetTargetData():GetAimDirection()
		obj:SetVelocity(direction * THROW_STRENGTH)
		obj:SetLocalAngularVelocity(Vector3.New(0, THROW_ROTATION, 0))
	end
	
	-- Attach the equipment to the physics object
	if _G.EquipmentStack and ability and ability.owner then
		_G.EquipmentStack.Unequip(ability.owner, EQUIPMENT)
	else
		EQUIPMENT:Unequip()
	end
	EQUIPMENT.parent = obj
	
	if COLLIDER then
		COLLIDER.collision = Collision.INHERIT
	end
	
	-- Adjust the equipment based on its physics anchor, aligning it to the physics object
	local t = PHYSICS_ANCHOR:GetTransform()
	t = t:GetInverse()
	EQUIPMENT:MoveTo(t:GetPosition(), 0.1, true)
	EQUIPMENT:RotateTo(t:GetRotation(), 0.1, true)
	
	-- Remove the throw ability
	if ability and ability.owner then
		_G.ThrowableSupport.DisableThrow(ability.owner)
	end
	throwListener:Disconnect()
	throwListener = nil
	
	-- Change the team after a short bit, so it can now collide with the thrower
	Task.Wait(0.1)
	if Object.IsValid(obj) then
		obj.team = 5
	end
	
	Task.Wait(3)
	while Object.IsValid(obj) and obj:GetVelocity().sizeSquared > 600 do
		Task.Wait(0.2)
	end
	if Object.IsValid(EQUIPMENT) then
		EQUIPMENT.parent = World.GetRootObject()
		lastPos = EQUIPMENT:GetWorldPosition()
		lastRot = EQUIPMENT:GetWorldRotation()
		
		--EQUIPMENT:SetReplicationEnabled(false)
	end
	if Object.IsValid(COLLIDER) then
		COLLIDER:SetReplicationEnabled(false)
	end
	if Object.IsValid(obj) then
		obj:Destroy()
	end
	
	resetTask = Task.Spawn(Reset, RESET_DELAY)
end

function SpawnPhysicsObject()
	local pos = PHYSICS_ANCHOR:GetWorldPosition()
	local rot = PHYSICS_ANCHOR:GetWorldRotation()
	local params = {
		position = pos, 
		rotation = rot,
		networkContext = NetworkContextType.NETWORKED,
	}
	return World.SpawnAsset(PHYSICS_TEMPLATE, params)
end


script.destroyEvent:Connect(function()
	if throwListener then
		throwListener:Disconnect()
		throwListener = nil
	end
end)


Game.playerLeftEvent:Connect(function(player)
	if EQUIPMENT.owner == player then
		OnThrow(nil)
	end
end)


