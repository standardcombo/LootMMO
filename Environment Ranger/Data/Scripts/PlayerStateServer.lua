local API_PS = require(script:GetCustomProperty("APIPlayerState"))
local PLAYER_STATE_HELPERS = script:GetCustomProperty("PlayerStateHelpers"):WaitForObject()
local PLAYER_STATE_TEMPLATE = script:GetCustomProperty("PlayerStateTemplate")

function OnPlayerJoined(player)
	local helper = World.SpawnAsset(PLAYER_STATE_TEMPLATE, {parent = PLAYER_STATE_HELPERS})
	helper.name = API_PS.GetStateHelperName(player)
end

function OnPlayerLeft(player)
	API_PS.GetStateHelper(player):Destroy()
end

API_PS.SetStateHelperGroup(PLAYER_STATE_HELPERS)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
