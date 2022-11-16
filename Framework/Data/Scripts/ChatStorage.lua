local chatTable = require(script:GetCustomProperty("TalkingHeads"))

local function PlayerJoined(player)
    local data = Storage.GetPlayerData(player)
    local chatData = data.chat
    if chatData ~= nil then
        for key, value in pairs(chatData) do
            player:SetResource(value[1], value[2])
        end
    end
end

local function PlayerLeft(player)
    local data = Storage.GetPlayerData(player)
    local chatResources = {}
    for resource, value in pairs(player:GetResources()) do
        for stringKey, row in pairs(chatTable) do
            local ID = row.ChatID
            if ID == resource then
                local chatMatrix = {resource, value}
                table.insert(chatResources, chatMatrix)
            end
        end
    end
    data.chat = chatResources
    Storage.SetPlayerData(player, data)
end

Game.playerJoinedEvent:Connect(PlayerJoined)
Game.playerLeftEvent:Connect(PlayerLeft)