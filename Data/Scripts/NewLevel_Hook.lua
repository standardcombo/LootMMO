while not _G['Loot.level'] do
    Task.Wait()
end
local LEVEL_API = _G['Loot.level']

function playerLeveledUp(player, resourceName)
    if resourceName == LEVEL_API.GetLevelKey() then
        Event.Broadcast('PlayerLevelChanged')
    end
end

function Hook(player)
    player.resourceChangedEvent:Connect(playerLeveledUp)
end

for key, player in pairs(Game.GetPlayers()) do
    Hook(player)
end
Game.playerJoinedEvent:Connect(Hook)
