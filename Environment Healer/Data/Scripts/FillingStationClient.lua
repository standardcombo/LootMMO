
local ITEM_ID = "pint"

local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local IK_POSE = script:GetCustomProperty("IKPose"):WaitForObject()
local AUDIO_SEQUENCE = script:GetCustomProperty("AudioSequence"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()
local TRIGGER_FORWARD = Quaternion.New(TRIGGER:GetWorldRotation()):GetForwardVector()

local isBusy = false


function Tick()
	Task.Wait(0.15)
	if isBusy or not HasEmptyCup() then
		TRIGGER.isInteractable = false
		return
	end
	local playerForward = Quaternion.New(PLAYER:GetWorldRotation()):GetForwardVector()
	local dot = playerForward .. TRIGGER_FORWARD
	if dot > 0.4 then
		TRIGGER.isInteractable = true
	else
		TRIGGER.isInteractable = false
	end
end

function HasEmptyCup()
	for _,equip in ipairs(PLAYER:GetEquipment()) do
		local itemId, exists = equip:GetCustomProperty("itemId")
		if exists and itemId == ITEM_ID
		and equip:GetCustomProperty("usesRemaining") <= 0 then
			return true
		end
	end
	return false
end

function OnInteracted(trigger, player)
	isBusy = true
	
	IK_POSE.context.Play(player)
	AUDIO_SEQUENCE.context.Play()
	
	Task.Wait(0.7)
	
	Events.BroadcastToServer("FillCup", SERVER_SCRIPT)
	
	Task.Wait(1)
	
	IK_POSE.context.Stop(player)
		
	isBusy = false
end
TRIGGER.interactedEvent:Connect(OnInteracted)

