-- Custom
local TP_Client = require(script:GetCustomProperty('TexasHoldem_Events'))
local Lootbox_DATABASE = require(script:GetCustomProperty('Lootbox_Database'))
local TEXAS_POKER_LOOT_BOX_RENDER = require(script:GetCustomProperty('TexasPoker_LootBox_Render'))
local LOCAL_PLAYER = Game.GetLocalPlayer()
local function OpenLootBox(data)
    Task.Spawn(function()
    
        data.TexasHoldemArt.visibility = Visibility.FORCE_OFF
        TEXAS_POKER_LOOT_BOX_RENDER:Open(Lootbox_DATABASE:GetEntry(data.lootBox))
        Task.Wait(7)
        if Object.IsValid(data.TexasHoldemArt) then 
            data.TexasHoldemArt.visibility = Visibility.FORCE_ON
        end 
    end)
end

local function CheckLootBox(data)
    if data.lootBox then
        TEXAS_POKER_LOOT_BOX_RENDER:SpawnChest(data)
    end
end

local function GameEnd(data)
    if not data.lootBox then
        return 
    end
    for key, winnings in pairs(data.winnings) do
        for key, winner in pairs(winnings) do
            if not winner then
                return
            end

            if winner == LOCAL_PLAYER.name then
                OpenLootBox(data)
                return
            elseif (data.WorldMarkers[winner] or {}).playerMarker then
                Task.Spawn(
                    function()
                        TEXAS_POKER_LOOT_BOX_RENDER:PayOut(data, (data.WorldMarkers[winner] or {}).playerMarker)
                    end
                )
            end
        end
        return
    end
end

TP_ClientEvents = {
    TP_Client.newGameEvent:Connect(CheckLootBox),
    TP_Client.gameEndEvent:Connect(GameEnd)
}

script.destroyEvent:Connect(
    function()
        for key, value in pairs(TP_ClientEvents) do
            value:Disconnect()
        end
    end
)
