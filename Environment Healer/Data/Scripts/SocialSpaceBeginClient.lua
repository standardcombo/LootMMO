
local SFX = script:GetCustomProperty("SFX"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()

Events.Connect("JoinSocial", function()
	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)
	
	Game.GetLocalPlayer():SetDefaultCamera(CAMERA)
	Task.Wait(0.4)
	SFX:Play()
end)