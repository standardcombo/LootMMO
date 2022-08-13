local LEVEL_API = require(script:GetCustomProperty('Level_Api'))

function playerLeveledUp(player, resourceName)
    
    if resourceName == LEVEL_API.GetLevelKey() then
        Event.Broadcast("PlayerLevelChanged")
    end
end

function Hook(player)
    player.resourceChangedEvent:Connect(playerLeveledUp)
end

for key, player in pairs(Game.GetPlayers()) do
    Hook(player)
end
Game.playerJoinedEvent:Connect(Hook)
