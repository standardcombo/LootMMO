if _G.PokerTournamentActive then return end

local TexasPoker_Settings = require(script:GetCustomProperty("TexasPoker_Settings"))
local eventListeners = {}

function SetPlayerCash(player)
    local playerStorage = Storage.GetPlayerData(player)
    local playerCash = playerStorage.pokerCash

    if not playerCash then
        playerCash = TexasPoker_Settings.baseCash
    elseif playerCash < TexasPoker_Settings.minBuyin then
        playerCash = TexasPoker_Settings.minBuyin
    end

    --playerCash = 3000
    playerStorage.pokerCash = playerCash
    Storage.SetPlayerData(player, playerStorage)
    player:SetResource(TexasPoker_Settings.resource, playerCash)
end

-- Player Joined
eventListeners[#eventListeners+1] = Game.playerJoinedEvent:Connect(function (player)
    SetPlayerCash(player)
end)

-- Player Left
eventListeners[#eventListeners+1] = Game.playerLeftEvent:Connect(function (player)
    local playerStorage = Storage.GetPlayerData(player)
    playerStorage.pokerCash = player:GetResource(TexasPoker_Settings.resource)
    Storage.SetPlayerData(player, playerStorage)
end)

-- Set cash for all current players in the server
for key, player in ipairs(Game.GetPlayers()) do
    SetPlayerCash(player)
end


-- Uncomment this section to give /cash command for testing
-- eventListeners[#eventListeners+1] = Chat.receiveMessageHook:Connect( function (player, params)
--     if params.message == "/cash" then
--         player:SetResource(TexasPoker_Settings.resource, 20000)
--     end
-- end)

-- Disconnect listeners when script is destroyed
eventListeners[#eventListeners+1] = script.destroyEvent:Connect(function ()
    for index, value in ipairs(eventListeners) do
        value:Disconnect()
    end
    eventListeners = nil

    -- Save players cash
    for key, player in ipairs(Game.GetPlayers()) do
        local playerStorage = Storage.GetPlayerData(player)
        playerStorage.pokerCash = player:GetResource(TexasPoker_Settings.resource)
        Storage.SetPlayerData(player, playerStorage)
    end
end)