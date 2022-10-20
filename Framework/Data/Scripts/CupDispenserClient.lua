
local ITEM_ID = "pint"

local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local IK_POSE = script:GetCustomProperty("IKPose"):WaitForObject()
local SFX = script:GetCustomProperty("SFX"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()
local TRIGGER_FORWARD = Quaternion.New(TRIGGER:GetWorldRotation()):GetForwardVector()
local CUP_COUNT = 10


function Tick()
	Task.Wait(0.1)
	if HasCup() then
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


function OnInteracted(trigger, player)
	local playerForward = Quaternion.New(PLAYER:GetWorldRotation()):GetForwardVector()
	local pos = PLAYER:GetWorldPosition() + playerForward * 100
	local selectedCup = nil
	local smallestDistance = 999999
	local selectedIndex = -1
	for i = 1,CUP_COUNT do
		local objName = "Cup" .. i
		local cup = script:GetCustomProperty(objName):WaitForObject()
		if NET_OBJECT:GetCustomProperty(objName) then
			local dist = (pos - cup:GetWorldPosition()).sizeSquared
			if selectedCup == nil or dist < smallestDistance then
				selectedCup = cup
				smallestDistance = dist
				selectedIndex = i
			end
		end
	end
	if selectedCup then
		local pos = selectedCup:GetWorldPosition()
		IK_POSE:SetWorldPosition(pos)
		IK_POSE.context.Play(player)
		Task.Wait(0.2)
		Events.BroadcastToServer("TakeCup", selectedIndex)
		SFX:SetWorldPosition(pos)
		SFX:Play()
		Task.Wait(0.1)
		IK_POSE.context.Stop(player)
	end
end
TRIGGER.interactedEvent:Connect(OnInteracted)


function HasCup()
	for _,equip in ipairs(PLAYER:GetEquipment()) do
		local itemId, exists = equip:GetCustomProperty("itemId")
		if exists and itemId == ITEM_ID then
			return true
		end
	end
	return false
end


function OnCustomPropertyChanged(obj, propName)
	local ref = script:GetCustomProperty(propName)
	if ref.isAssigned then
		local cup = ref:WaitForObject()
		if obj:GetCustomProperty(propName) then
			cup.visibility = Visibility.INHERIT
		else
			cup.visibility = Visibility.FORCE_OFF
		end
	end
end

NET_OBJECT.customPropertyChangedEvent:Connect(OnCustomPropertyChanged)


