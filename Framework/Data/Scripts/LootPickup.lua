--[[
	Loot Pickup
	v1.2.1
	by: standardcombo
	
	This is a full-featured, but simple pickup object that grants a resource to the player who collects it.
	
	FEATURES
	- Player animations for picking up the object (high and low variations).
	- Visual and Sound effects.
	
	USAGE
	1. Drop into a game. Players walk up to the object and press [F] to collect it.
	2. Can be spawned programatically, such as when an enemy is defeated.
	3. The Trigger is set to be interactable. If that option is turned off, then this will be collected
	   by walking over. The pickup animations still play when walking over.
	4. By default it grants 10x Gold, which are both custom properties on the root of the template and can
	   be customized. There is a 'ResourceMin' and 'ResourceMax' that define a random range.
	5. Comes with two pickup animations that are used depending on how high the object is in relationship
	   to the player. There is a high and a low pickup ability that get assigned to the player
	   automatically on the first time they interact with a pickup. While the abilities are being created
	   and assigned there is a small animation delay on the very first pickup.
	6. Customizing the artwork and VFXs spin off into other pickup object types.

--]]

local ROOT = script.parent
local RESOURCE_NAME = ROOT:GetCustomProperty("ResourceName")
local RESOURCE_AMOUNT_MIN = ROOT:GetCustomProperty("ResourceMin")
local RESOURCE_AMOUNT_MAX = ROOT:GetCustomProperty("ResourceMax")
local TRIGGER = ROOT:GetCustomProperty("Trigger"):WaitForObject()
local ABILITY_PICKUP_TEMPLATE = ROOT:GetCustomProperty("AbilityPickupLoot")
local ABILITY_PICKUP_HIGH_TEMPLATE = ROOT:GetCustomProperty("AbilityPickupLootHigh")
local DESTROY_DELAY = ROOT:GetCustomProperty("DestroyDelay")
local PICKUP_FX_TEMPLATE = ROOT:GetCustomProperty("PickupFX")
local ADD_ABILITY_DELAY = 0.1


local pickupPending = false


function HasPickupAbility(player)
	return player:GetResource("HasPickupAbility") > 0
end

function AddPickupAbility(player)
	-- Pickup objects that are low to the ground
	local pickupAbility = World.SpawnAsset(ABILITY_PICKUP_TEMPLATE)
	pickupAbility.owner = player
	pickupAbility:AttachToPlayer(player, "root")
	
	-- Pickup objects that are at waist or higher
	pickupAbility = World.SpawnAsset(ABILITY_PICKUP_HIGH_TEMPLATE)
	pickupAbility.owner = player
	pickupAbility:AttachToPlayer(player, "root")
	
	player:SetResource("HasPickupAbility", 1)
end

function PlayPickupAnimation(player)
	if player then
		local deltaZ = script:GetWorldPosition().z - player:GetWorldPosition().z
		
		if (deltaZ > 0) then
			Events.BroadcastToPlayer(player, "PickupLootHigh")
		else
			Events.BroadcastToPlayer(player, "PickupLoot")
		end
	end
end

function SpawnPickupVFX()
	if PICKUP_FX_TEMPLATE then
		World.SpawnAsset(PICKUP_FX_TEMPLATE, {position = script:GetWorldPosition()})
	end
end

function AddRewards(player)
	if not player then return end
	
	local amount = math.random(RESOURCE_AMOUNT_MIN, RESOURCE_AMOUNT_MAX)
	if amount > 0 then
		player:AddResource(RESOURCE_NAME, amount)
	end
end

function OnInteracted(trigger, player)
	if pickupPending then return end
	
	pickupPending = true
	
	if not HasPickupAbility(player) then
		AddPickupAbility(player)
		
		Task.Wait(ADD_ABILITY_DELAY)
	end
	
	PlayPickupAnimation(player)
	
	Task.Wait(DESTROY_DELAY)
	
	SpawnPickupVFX()
	AddRewards(player)
	script.parent:Destroy()
end

function OnBeginOverlap(trigger, player)
	if player:IsA("Player") then
		OnInteracted(trigger, player)
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)

if (not TRIGGER.isInteractable) then
	TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
end


TRIGGER.collision = Collision.FORCE_OFF

Task.Wait(1)

TRIGGER.collision = Collision.FORCE_ON

