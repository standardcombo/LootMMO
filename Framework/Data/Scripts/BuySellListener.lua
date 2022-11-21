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
    --print(player.name, "buy handler", GoldValue, itemID)
    player:RemoveResource("Coins", GoldValue)
    _G.RewardsAdapter.AddItem(player, itemID)
        --CURRENCY.RemoveCurrencyAmount(player, currencyId, GoldValue, true)
end

function HandleSales(player, Currency, GoldValue, itemSlot, itemID)
    local inventory = GetInventory(player)
    local currencyId = CURRENCY.GetCurrencyIdFromKey(Currency)
    if itemSlot then
        inventory:RemoveFromSlot(itemSlot)
        Events.BroadcastToPlayer(player, "RewardToast", {
            icon = icon,
            message = "Success: Equipment Sold"
        })
        player:AddResource("Coins", GoldValue)
        if itemID == "Short Sword" then
            local obj = _G.QuestController.GetQuestObjective("VelwoodSwords", 1)
            if obj then
                if _G.QuestController.IsActive(player, obj) then
                    _G.QuestController.AdvanceObjective(player, "VelwoodSwords", 1)
                end
            end
        end
    end
end

Events.ConnectForPlayer("HandleBuyTransaction",HandleBuys)
Events.ConnectForPlayer("HandleSellTransaction",HandleSales)