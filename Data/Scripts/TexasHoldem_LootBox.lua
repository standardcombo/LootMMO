local IS_ENABLED = script:GetCustomProperty("IsEnabled")
if not IS_ENABLED then return end

local TEXAS_POKER_API = require(script:GetCustomProperty('TexasPoker_API'))
local Lootbox_DATABASE = require(script:GetCustomProperty('Lootbox_Database'))
local Chance = 13

local function RandomChanceLootBox(pokerGame)
    local hitChance = math.random(100)
    if hitChance <= Chance then
        pokerGame.lootBox = Lootbox_DATABASE:GetRandomIndex() 
    else 
        pokerGame.lootBox = nil
    end 
end

local function AttachToData(pokerGame,data)
    data.lootBox = pokerGame.lootBox  
end

local function Connect(poker)
    poker.newGameEvent:Connect(RandomChanceLootBox)
    poker.networkDataEvent:Connect(AttachToData)
end
TEXAS_POKER_API.newGameCreatedEvent:Connect(Connect)
