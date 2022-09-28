
local UICONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()


Events.Connect("AppState.Enter", function(player, newState, previousState)
	if newState == _G.AppState.Adventure then
		Task.Wait(1)
		UICONTAINER.visibility = Visibility.INHERIT
	else
		UICONTAINER.visibility = Visibility.FORCE_OFF
	end
end)

