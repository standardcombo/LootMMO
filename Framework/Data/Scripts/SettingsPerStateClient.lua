--[[
	Settings per Location - Client
	by: standardcombo
	v1.1
	
	Changes the player's settings depending on their current screen.
	
	Screens:
	- Bag selection
	- Social Hub
]]

local SFX = script:GetCustomProperty("SFX"):WaitForObject()
local CAMERA_SOCIAL_SPACE = script:GetCustomProperty("CameraSocialSpace"):WaitForObject()

-- local player = Game.GetLocalPlayer()

--Events.BroadcastToServer("ClientReady")


Events.Connect("AppState.Enter", function(player, newState, prevState)
	--print("SettingsPerLocation, new = "..newState..", prev = "..prevState)
	
	if prevState == _G.AppState.BagSelection then
		player:SetDefaultCamera(CAMERA_SOCIAL_SPACE)
		Task.Wait(0.4)
		SFX:Play()
		
		_G.CursorStack.Disable()
	end

	if newState == _G.AppState.BagSelection then
		
		_G.CursorStack.Enable()
	
		while player:GetWorldPosition().z < 7000 do
			Task.Wait()
		end
	
		local bagSelectionCameraScript = World.FindObjectByName("BagSelectionCameraScript")
		for i = 1,3 do
			bagSelectionCameraScript.context.SetAsDefault()
			Task.Wait(1)
			if _G.AppState.GetLocalState() ~= _G.AppState.BagSelection then
				break
			end
		end
	end
end)

