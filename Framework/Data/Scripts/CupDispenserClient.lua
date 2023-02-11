
local ITEM_ID = "pint"

local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local R_TRIGGER = script:GetCustomProperty("R_Trigger"):WaitForObject()
local R_IK_POSE = script:GetCustomProperty("R_IKPose"):WaitForObject()
local R_SFX = script:GetCustomProperty("R_SFX"):WaitForObject()
local L_TRIGGER = script:GetCustomProperty("L_Trigger"):WaitForObject()
local L_IK_POSE = script:GetCustomProperty("L_IKPose"):WaitForObject()
local L_SFX = script:GetCustomProperty("L_SFX"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()
local R_TRIGGER_FORWARD = Quaternion.New(R_TRIGGER:GetWorldRotation()):GetForwardVector()
local L_TRIGGER_FORWARD = Quaternion.New(L_TRIGGER:GetWorldRotation()):GetForwardVector()
local CUP_COUNT = 14


function Tick()
	Task.Wait(0.1)
	if HasCup() then
		L_TRIGGER.isInteractable = false
		R_TRIGGER.isInteractable = false
		return
	end
	local playerForward = Quaternion.New(PLAYER:GetWorldRotation()):GetForwardVector()
	local L_dot = playerForward .. L_TRIGGER_FORWARD
	local R_dot = playerForward .. R_TRIGGER_FORWARD
	if L_dot > 0.4 or R_dot > 0.4 then
		L_TRIGGER.isInteractable = true
		R_TRIGGER.isInteractable = true
	else
		L_TRIGGER.isInteractable = false
		R_TRIGGER.isInteractable = false
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
		if trigger == R_TRIGGER then
			R_IK_POSE:SetWorldPosition(pos)
			R_IK_POSE.context.Play(player)
			Task.Wait(0.2)
			Events.BroadcastToServer("TakeCup", selectedIndex)
			R_SFX:SetWorldPosition(pos)
			R_SFX:Play()
			Task.Wait(0.1)
			R_IK_POSE.context.Stop(player)
		elseif trigger == L_TRIGGER then
			L_IK_POSE:SetWorldPosition(pos)
			L_IK_POSE.context.Play(player)
			Task.Wait(0.2)
			Events.BroadcastToServer("TakeCup", selectedIndex)
			L_SFX:SetWorldPosition(pos)
			L_SFX:Play()
			Task.Wait(0.1)
			L_IK_POSE.context.Stop(player)
		end
	end
end
R_TRIGGER.interactedEvent:Connect(OnInteracted)
L_TRIGGER.interactedEvent:Connect(OnInteracted)


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