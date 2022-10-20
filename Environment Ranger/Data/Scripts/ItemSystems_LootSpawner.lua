local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local Database = require(script:GetCustomProperty("ItemSystems_Database"))
local LOOT_TEMPLATE = script:GetCustomProperty("LootTemplate")

-- Drops are assigned by lottery.
local playerLotteryTickets = {}

-- The higher this number, the more heavily the lottery is weighted in favor of players
-- who haven't won in a while. While obviously a higher number is "more fair", we don't
-- want to set it too high because part of the fun of a lottery is having a "win streak".
local TICKET_EXPONENTIATION_BASE = 4

-- When a player joins, they start over. This is so that players already in the instance
-- who have been playing and not received drops for a while are given preference.
local function OnPlayerJoined(player)
    playerLotteryTickets[player] = 1
end

-- When a player leaves, remove them from the lottery.
local function OnPlayerLeft(player)
    playerLotteryTickets[player] = nil
end

-- The more tickets a player holds, the more likely they are to win.
-- Players who do not win have their tickets doubled and thus become much more likely to win next time.
local function ChoosePlayerByLottery()
    local sumLotteryTickets = 0
    for _,tickets in pairs(playerLotteryTickets) do sumLotteryTickets = sumLotteryTickets + tickets end
    local winningNumber = sumLotteryTickets * math.random()
    local winner = nil
    for player,tickets in pairs(playerLotteryTickets) do
        if winningNumber <= tickets then
            winner = player
            break
        end
        winningNumber = winningNumber - tickets
    end
    -- Adjust tickets depending on outcome. All loser ticket amounts get compounded.
    local minTickets = math.huge
    for player,tickets in pairs(playerLotteryTickets) do
        if player ~= winner then
            playerLotteryTickets[player] = tickets * TICKET_EXPONENTIATION_BASE
        end
        minTickets = math.min(minTickets, playerLotteryTickets[player])
    end
    -- Renormalize so that the lowest number is always 1.
    for player,tickets in pairs(playerLotteryTickets) do
        playerLotteryTickets[player] = math.max(1, playerLotteryTickets[player] // minTickets)
    end
    -- Lottery complete!
    return winner
end

local function OnDropLoot(dropKey, dropWorldPosition, player)
    Database:WaitUntilLoaded()
    local winner = player

    if not winner then
        winner = ChoosePlayerByLottery()
    end

    while not winner.serverUserData.inventory do Task.Wait() end
    
    local item = Database:CreateItemFromDrop(dropKey)
    local object = World.SpawnAsset(LOOT_TEMPLATE, { position = dropWorldPosition, parent = script })
    local lootIndex = winner.serverUserData.inventory:TakeNextOpenLootIndex()
    -- Encode information into the objects loot property.
    local lootInfo = string.format("%s/%d/%d/%s", winner.id, lootIndex, item:GetStackSize(), item:RuntimeHash())
    object:SetNetworkedCustomProperty("INFO", lootInfo)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
API_RE.Connect("DropLoot", OnDropLoot)
