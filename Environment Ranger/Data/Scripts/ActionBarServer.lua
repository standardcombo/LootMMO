local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_SK = require(script:GetCustomProperty("APISharedKey"))

local readyPlayers = {}

function OnSetActionBarLayout(player, layoutString)
	local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), player)
	playerData.actionBarLayout = layoutString
	Storage.SetSharedPlayerData(API_SK.GetStorageKey(), player, playerData)
end

function OnTalentsLoaded(player)
	while not readyPlayers[player] do
		Task.Wait()
	end

	local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), player)
	API_RE.BroadcastToPlayer(player, "LABL", playerData.actionBarLayout)
end

function OnReadyForActionBarLayout(player)
	readyPlayers[player] = true
end

function OnPlayerLeft(player)
	readyPlayers[player] = nil
end

API_RE.ConnectForPlayer("SABL", OnSetActionBarLayout)
API_RE.Connect("TalentsLoaded", OnTalentsLoaded)
API_RE.ConnectForPlayer("RFABL", OnReadyForActionBarLayout)
Game.playerLeftEvent:Connect(OnPlayerLeft)
