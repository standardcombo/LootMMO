--[[ 
    This script simply listens to client event to transfer player to the specified gameID
 ]]

-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
function OnPlayerPortal(player, gameID, portalID)
    if gameID ~= nil then
        player:TransferToGame(gameID)

        local isQueueEnabled = CorePlatform.GetGameInfo(gameID).isQueueEnabled

        -- Respawn player if game is a queued game
        if portalID and isQueueEnabled then
            local spawnPoint = API.GetStats(portalID).spawnPoint
            player:Respawn({position = spawnPoint:GetWorldPosition(), rotation = spawnPoint:GetWorldRotation()})
        end
    end
end

function OnPlayerGameEntryQueued(player, gameID, portalID)
    if gameID ~= nil then
        local isQueueEnabled = CorePlatform.GetGameInfo(gameID).isQueueEnabled

        -- Respawn player if game is a queued game
        if portalID and isQueueEnabled then
            local spawnPoint = API.GetStats(portalID).spawnPoint
            player:Respawn({position = spawnPoint:GetWorldPosition(), rotation = spawnPoint:GetWorldRotation()})
        end
    end
end

Events.ConnectForPlayer("PP", OnPlayerPortal)
Events.ConnectForPlayer("PGEQ", OnPlayerGameEntryQueued)