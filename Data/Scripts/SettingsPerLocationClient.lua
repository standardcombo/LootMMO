--[[
	Settings per Location - Client
	by: standardcombo
	
	Changes the player's settings depending on their current screen.
	
	Screens:
	- Bag selection
	- Social Hub
]]

local SFX = script:GetCustomProperty("SFX"):WaitForObject()
local CAMERA_SOCIAL_SPACE = script:GetCustomProperty("CameraSocialSpace"):WaitForObject()

local player = Game.GetLocalPlayer()

Events.Connect("JoinSocial", function()
	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)
	
	player:SetDefaultCamera(CAMERA_SOCIAL_SPACE)
	Task.Wait(0.4)
	SFX:Play()
end)

Events.Connect("BagSelection", function()
	UI.SetCanCursorInteractWithUI(true)
	UI.SetCursorVisible(true)
	
	while player:GetWorldPosition().z < 7000 do
		Task.Wait()
	end
	
	local bagSelectionCameraScripts = World.FindObjectsByName("BagSelectionCameraScript")
	
	for _,s in ipairs(bagSelectionCameraScripts) do
		s.context.OnPlayerJoined(player)
	end
end)

