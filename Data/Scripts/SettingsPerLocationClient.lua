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

Events.Connect("AppState.Enter", function(player, newState, prevState)
	if newState == _G.AppState.SocialHub then
		if prevState == _G.AppState.BagSelection then
			player:SetDefaultCamera(CAMERA_SOCIAL_SPACE)
			Task.Wait(0.4)
			SFX:Play()
		end
		UI.SetCanCursorInteractWithUI(false)
		UI.SetCursorVisible(false)
	end

	if newState == _G.AppState.BagSelection then
		UI.SetCanCursorInteractWithUI(true)
		UI.SetCursorVisible(true)
	
		while player:GetWorldPosition().z < 7000 do
			Task.Wait()
		end
	
		local bagSelectionCameraScripts = World.FindObjectsByName("BagSelectionCameraScript")
	
		for _,s in ipairs(bagSelectionCameraScripts) do
			s.context.OnPlayerJoined(player)
		end
	end
end)

