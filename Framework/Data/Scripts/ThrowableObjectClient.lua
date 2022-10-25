--[[
	Throwable Object - Client
	v1.0
	by: standardcombo
	
	Implements an environment object that can be picked up and thrown.
]]

local EQUIPMENT = script:FindAncestorByType("Equipment")

local PICKUP_EVENT_NAME = "PickupEquipment"

local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local LEFT_HAND = script:GetCustomProperty("LeftHandAnchor"):WaitForObject()
local RIGHT_HAND = script:GetCustomProperty("RightHandAnchor"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()
local isOnGround = false


function Tick()
	Task.Wait(0.25)
	if Object.IsValid(EQUIPMENT.owner)
	or PLAYER.clientUserData.hasThrowable then
		TRIGGER.isInteractable = false
		return
	end
	
	local triggerForward = Quaternion.New(TRIGGER:GetWorldRotation()):GetForwardVector()
	local dotToWorldUp = triggerForward..Vector3.UP
	if math.abs(dotToWorldUp) > 0.01 then
		-- Probably thrown to the floor
		isOnGround = true
		TRIGGER.isInteractable = true
		return
	end
	isOnGround = false
	
	local playerForward = Quaternion.New(PLAYER:GetWorldRotation()):GetForwardVector()
	local dot = playerForward .. triggerForward
	if dot > 0.4 then
		TRIGGER.isInteractable = true
	else
		TRIGGER.isInteractable = false
	end
end


function OnInteracted(trigger, player)
	if player.clientUserData.hasThrowable then return end
	UI.ShowFlyUpText(Input.GetActionInputLabel("Throw") .. " to Throw.", 
	PLAYER:GetWorldPosition() + Vector3.UP * 110,
	{isBig = true, duration = 1.5})
	if isOnGround then
		for _,ability in ipairs(player:GetAbilities()) do
			if ability.name == "PickupAbility" then
				ability:Activate()
			end
		end
	end
	Events.BroadcastToServer(PICKUP_EVENT_NAME, EQUIPMENT)
end
TRIGGER.interactedEvent:Connect(OnInteracted)


function OnEquipped(equipment, player)
	if not Object.IsValid(player) then return end
	if _G.IkStack then
		_G.IkStack.Add(player, LEFT_HAND)
		_G.IkStack.Add(player, RIGHT_HAND)
	else
		LEFT_HAND:Activate(player)
		RIGHT_HAND:Activate(player)
	end
	player.clientUserData.hasThrowable = true
end

function OnUnequipped(equipment, player)
	if not Object.IsValid(player) then return end
	if _G.IkStack then
		_G.IkStack.Remove(player, LEFT_HAND)
		_G.IkStack.Remove(player, RIGHT_HAND)
	else
		LEFT_HAND:Deactivate(player)
		RIGHT_HAND:Deactivate(player)
	end
	player.clientUserData.hasThrowable = false
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)

