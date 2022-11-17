while not _G['Character.EquipAPI'] do
	Task.Wait()
end
local EquipApi = _G["Character.EquipAPI"]
local MATERIALS = _G["Items.Materials"]
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))

local function GetInventory(player)
    local Character = EquipApi.GetCurrentCharacter(player)
    if not Character then return end
    local inventory = Character:GetComponent("Inventory")
    local CoreInv = inventory:GetInventory()
    return CoreInv
end

function HandleBuys(player, Currency,GoldValue, itemID)
    local currencyId = CURRENCY.GetCurrencyIdFromKey(Currency)
    print(player.name, "buy handler", GoldValue, itemID)
    player:RemoveResource("Coins", GoldValue)
    --CURRENCY.RemoveCurrencyAmount(player, currencyId, GoldValue, true)
    --maybe im ignorant, but the currency api, isnt working for me, maybe im not using the right thing
    _G.RewardsAdapter.AddItem(player, itemID)
end

function HandleSales(player, Currency, GoldValue, itemID)
    local inventory = GetInventory(player)
    local itemToSell = itemID
    local currencyId = CURRENCY.GetCurrencyIdFromKey(Currency)
    if itemToSell then 
        inventory:RemoveFromSlot(itemToSell)
    
        Events.BroadcastToPlayer(player, "RewardToast", {
            icon = icon,
            message = "Success: Equipment Sold"
        })
        player:AddResource("Coins", GoldValue)
        --CURRENCY.AddCurrencyAmount(player, currencyId, GoldValue, true)
        --maybe im ignorant, but the currency api, isnt working for me, maybe im not using the right thing
    end
end

Events.ConnectForPlayer("HandleBuyTransaction",HandleBuys)
Events.ConnectForPlayer("HandleSellTransaction",HandleSales)