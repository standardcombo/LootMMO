
local MAPS = require(script:GetCustomProperty("CryptsAndCaverns"))
local CRYPTS_CAVERNS_PARSER = require(script:GetCustomProperty("CryptsCavernsParser"))
local CRYPTS_CAVERNS_SVG = script:GetCustomProperty("CryptsCavernsSVG"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local OVERRIDE_CAMERA = script:GetCustomProperty("OverrideCamera"):WaitForObject()
local PLAY_SFX = script:GetCustomProperty("PlaySFX"):WaitForObject()

local CAM_APPROACH_DISTANCE = 20
local CAM_APPROACH_SPEED = 1.8

local selectedIndex = 1
local isAwaitingTransfer = false

Task.Wait()


function Play()
	if isAwaitingTransfer then return end
	isAwaitingTransfer = true
	
	PLAY_SFX:Play()
	Events.BroadcastToServer("PlayCryptsAndCaverns", selectedIndex)
	Events.Broadcast("FadeOut", 4)
end


function Tick(deltaTime)
	local t = deltaTime * CAM_APPROACH_SPEED
	OVERRIDE_CAMERA.currentDistance = CoreMath.Lerp(OVERRIDE_CAMERA.currentDistance, 0, t)
end


function EnterFocus()
	UI.SetCanCursorInteractWithUI(true)
	UI.SetCursorVisible(true)
	Game.GetLocalPlayer():SetOverrideCamera(OVERRIDE_CAMERA)
	OVERRIDE_CAMERA.currentDistance = CAM_APPROACH_DISTANCE
	TRIGGER.isEnabled = false
	
	Events.BroadcastToServer("MapFocus", true)
end

function ExitFocus()
	if isAwaitingTransfer then return end
	
	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)
	Game.GetLocalPlayer():ClearOverrideCamera(0)
	
	Task.Wait(1)
	TRIGGER.isEnabled = true
	
	Events.BroadcastToServer("MapFocus", false)
end


function SetupMap()
	local mapModel = CRYPTS_CAVERNS_PARSER:new(MAPS[selectedIndex].metadata)
	CRYPTS_CAVERNS_SVG.context.Load(mapModel)
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

