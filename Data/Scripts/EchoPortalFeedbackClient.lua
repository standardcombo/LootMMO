--[[ 
    The main purpose of this function is to support the chat command
    that spawns echo portals. Thsi script double checks for game id
    and makes sure that player can spawn the echo portal properly
--]]
local API = require(script:GetCustomProperty("API"))
local LOCAL_PLAYER = Game.GetLocalPlayer()

function SpawnEchoPortalCommand(player, id)
    local checkId, gameData = pcall(CorePlatform.GetGameInfo, id)

    if checkId then
        local customPosition = API.GetPlayerFrontSpawnPosition(player)
        Events.Broadcast("SpawnEchoPortal", player, id, customPosition)
    
        if player == LOCAL_PLAYER then
            player.clientUserData.echoPortalLastTime = time()
        end
        Chat.LocalMessage("[GAME] "..player.name.." opened "..gameData.name.." game portal")
    else
        if player == LOCAL_PLAYER then
            Chat.LocalMessage("[COMMAND] Invalid portal game id.")
        end
    end
end

Events.Connect("SpawnEchoPortalCommand", SpawnEchoPortalCommand)