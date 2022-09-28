

Events.Connect("SafeZone_Enter", function(player, zoneData)
	if _G.AppState.GetStateForPlayer(player) == _G.AppState.Adventure then
		_G.AppState.SetStateForPlayer(player, _G.AppState.SocialHub)
	end
end)


Events.Connect("SafeZone_Exit", function(player, zoneData)
	_G.AppState.SetStateForPlayer(player, _G.AppState.Adventure)
end)

