--[[
	Loot Drop Factory - Client
	v3.0 - 2022/10/20
	by: standardcombo
]]

local COMMON_TREASURE = script:GetCustomProperty("CommonTreasureDrop")
local RARE_TREASURE = script:GetCustomProperty("RareTreasureDrop")
local EPIC_TREASURE = script:GetCustomProperty("EpicTreasureDrop")
local LEGENDARY_TREASURE = script:GetCustomProperty("LegendaryTreasureDrop")
local DROP_DELAY = script:GetCustomProperty("DropDelay")
local DROP_OFFSET_Z = script:GetCustomProperty("DropOffsetZ")
local DROP_VELOCITY_Z = script:GetCustomProperty("DropVelocityZ")
local DROP_ROTATION_RNG = script:GetCustomProperty("DropRotationRNG")

local DROP_EVENT_ID = "LDFactory.Drop"
local PICKUP_EVENT_ID = "LDFactory.Pickup"
local CANCEL_EVENT_ID = "LDFactory.Cancel"

local TREASURE_PICKUP_EVENT = "Treasure.PickedUp"

local activeTreasures = {}


-- Called by server as a networked event
local function Drop(eventData)
	-- Select the treasure template, based on rarity
	local treasureTemplate = COMMON_TREASURE
	if eventData.rarity == "Rare" then
		treasureTemplate = RARE_TREASURE
		
	elseif eventData.rarity == "Epic" then
		treasureTemplate = EPIC_TREASURE
		
	elseif eventData.rarity == "Legendary" then
		treasureTemplate = LEGENDARY_TREASURE
	end
	
	-- Position for treasure
	local position = eventData.position
	position.z = position.z + DROP_OFFSET_Z
	
	-- Rotation for treasure
	local rotation = eventData.rotation
	rotation.x = rotation.x + math.random(-DROP_ROTATION_RNG, DROP_ROTATION_RNG)
	rotation.y = rotation.y + math.random(-DROP_ROTATION_RNG, DROP_ROTATION_RNG)
	rotation.z = rotation.z + math.random(-DROP_ROTATION_RNG, DROP_ROTATION_RNG)
	
	-- Spawn the treasure
	local treasure = World.SpawnAsset(treasureTemplate, {position = position, rotation = rotation})
	activeTreasures[eventData.dropId] = treasure
	
	-- Set ID
	local userData = treasure.clientUserData
	treasure.clientUserData.dropId = eventData.dropId
	
	-- Add little impulse upwards
	local physicsObj = treasure:FindDescendantByType("PhysicsObject")
	if physicsObj then
		physicsObj:SetVelocity(Vector3.UP * DROP_VELOCITY_Z)
	end
end

Events.Connect(DROP_EVENT_ID, Drop)


-- Called by the treasure, when it's picked up by a player
function OnPickup(treasure, player)
	local userData = treasure.clientUserData
	local dropId = treasure.clientUserData.dropId
	activeTreasures[dropId] = nil
	
	Events.BroadcastToServer(PICKUP_EVENT_ID, dropId)
end

Events.Connect(TREASURE_PICKUP_EVENT, OnPickup)


-- Called by the server to cancel and cleanup the loot drop
function OnCancel(dropId)
	if activeTreasures[dropId] then
		local treasure = activeTreasures[dropId]
		activeTreasures[dropId] = nil
		
		local dropScript = treasure:FindChildByName("TreasureDrop")
		if dropScript and dropScript.context then
			dropScript.context.FadeOutAndDestroy()
		end
	end
end

Events.Connect(CANCEL_EVENT_ID, OnCancel)

