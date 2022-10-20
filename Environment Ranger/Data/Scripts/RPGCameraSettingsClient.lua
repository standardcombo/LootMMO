local API_GS = require(script:GetCustomProperty("APIGameSettings"))

local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local ORIGINAL_ROTATION_MODE = CAMERA.rotationMode
local SUPPRESS_ROTATION_MODE = RotationMode.CAMERA

local isLookActive = nil
local isLookSuppressed = nil
local lookRotationRestorePoint = nil
local previousControlMode = API_GS.GetControlMode()

function StartActiveLook()
	isLookActive = true
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)

	if isLookSuppressed then
		LOCAL_PLAYER:SetLookWorldRotation(lookRotationRestorePoint)
		CAMERA.rotationMode = ORIGINAL_ROTATION_MODE
	end
end

function StopActiveLook()
	isLookActive = nil
	UI.SetCursorVisible(true)
	UI.SetCanCursorInteractWithUI(true)

	if isLookSuppressed then
		lookRotationRestorePoint = LOCAL_PLAYER:GetLookWorldRotation()
		CAMERA:SetWorldRotation(lookRotationRestorePoint)
		CAMERA.rotationMode = SUPPRESS_ROTATION_MODE
	end
end

function StartSuppressLook()
	isLookSuppressed = true

	if not isLookActive then
		lookRotationRestorePoint = LOCAL_PLAYER:GetLookWorldRotation()
		CAMERA:SetWorldRotation(lookRotationRestorePoint)
		CAMERA.rotationMode = SUPPRESS_ROTATION_MODE
	end
end

function StopSuppressLook()
	if isLookSuppressed then
		isLookSuppressed = nil

		if not isLookActive then
			LOCAL_PLAYER:SetLookWorldRotation(lookRotationRestorePoint)
			CAMERA.rotationMode = ORIGINAL_ROTATION_MODE
		end
	end
end

function OnBindingPressed(player, binding)
	if API_GS.GetControlMode() == API_GS.CONTROL_MODE_CLASSIC then
		if binding == "ability_secondary" then
			StartActiveLook()
		elseif binding == "ability_primary" then
			StartSuppressLook()
		end
	else
		if binding == "ability_extra_10" then
			if isLookActive then
				StopActiveLook()
				StartSuppressLook()
			else
				StopSuppressLook()
				StartActiveLook()
			end
		end
	end
end

function OnBindingReleased(player, binding)
	if API_GS.GetControlMode() == API_GS.CONTROL_MODE_CLASSIC then
		if binding == "ability_secondary" then
			StopActiveLook()
		elseif binding == "ability_primary" then
			StopSuppressLook()
		end
	end
end

function Tick(deltaTime)
	local controlMode = API_GS.GetControlMode()

	if controlMode ~= previousControlMode then
		if controlMode == API_GS.CONTROL_MODE_CLASSIC then
			StopActiveLook()
			StopSuppressLook()
		else
			StopSuppressLook()
			StartActiveLook()
		end

		previousControlMode = controlMode
	end
end

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)

UI.SetCursorVisible(true)
UI.SetCanCursorInteractWithUI(true)
