
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local OVERRIDE_CAMERA = script:GetCustomProperty("OverrideCamera"):WaitForObject()
local PLAY_SFX = script:GetCustomProperty("PlaySFX"):WaitForObject()
local CALLOUT_SPARKLE = script:GetCustomProperty("CalloutSparkle"):WaitForObject()

local CAM_APPROACH_DISTANCE = 20
local CAM_APPROACH_SPEED = 1.8

local MAPS = {"Raid1"} --TODO

local selectedIndex = 1
local isFocused = false
local isAwaitingTransfer = false

Task.Wait()


function Play()
	if isAwaitingTransfer then return end
	isAwaitingTransfer = true
	
	PLAY_SFX:Play()
	Events.BroadcastToServer("Map.Play", selectedIndex)
	Events.Broadcast("FadeOut", 4)
end


function Tick(deltaTime)
	local t = deltaTime * CAM_APPROACH_SPEED
	OVERRIDE_CAMERA.currentDistance = CoreMath.Lerp(OVERRIDE_CAMERA.currentDistance, 0, t)
end


function EnterFocus()
	isFocused = true
	
	_G.CursorStack.Enable()

	Game.GetLocalPlayer():SetOverrideCamera(OVERRIDE_CAMERA)
	OVERRIDE_CAMERA.currentDistance = CAM_APPROACH_DISTANCE
	
	CALLOUT_SPARKLE.visibility = Visibility.FORCE_OFF
	CALLOUT_SPARKLE:SetSmartProperty("Density", 0)
	
	TRIGGER.isEnabled = false
	
	Events.BroadcastToServer("Map.Focus", true)
end

function ExitFocus()
	if isAwaitingTransfer then return end
	
	isFocused = false
	
	_G.CursorStack.Disable()

	Game.GetLocalPlayer():ClearOverrideCamera(0)
	
	CALLOUT_SPARKLE.visibility = Visibility.INHERIT
	CALLOUT_SPARKLE:SetSmartProperty("Density", 1)
	
	Task.Wait(1)
	TRIGGER.isEnabled = true
	
	Events.BroadcastToServer("Map.Focus", false)
end


function SetupMap()
	--
end

function Next()
	if isAwaitingTransfer then return end
	
	selectedIndex = selectedIndex + 1
	if selectedIndex > #MAPS then
		selectedIndex = 1
	end
	SetupMap()
end

function Previous()
	if isAwaitingTransfer then return end
	
	selectedIndex = selectedIndex - 1
	if selectedIndex <= 0 then
		selectedIndex = #MAPS
	end
	SetupMap()
end


Next()


-- Events fired from MapButtons script
Events.Connect("NextMap", Next)
Events.Connect("PreviousMap", Previous)
Events.Connect("PlayMap", Play)
Events.Connect("ExitMap", ExitFocus)

TRIGGER.interactedEvent:Connect(EnterFocus)

