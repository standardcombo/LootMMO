---@type APIRealTime
local REALTIME = require(script:GetCustomProperty("APIRealTime"))

REALTIME.SyncronizeEpoch()
REALTIME.UpdateAllPlayersEpoch()

function OnPlayerJoined(player)
    REALTIME.UpdatePlayerEpoch(player)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

