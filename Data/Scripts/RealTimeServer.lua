local API = require(script:GetCustomProperty("APIRealTime"))

function OnPlayerJoined(player)
    API.UpdatePlayersEpoch()
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)