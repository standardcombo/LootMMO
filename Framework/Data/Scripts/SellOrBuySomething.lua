--_G.RewardsAdapter.AddItem(player, itemID)
--[[Events.ConnectForPlayer(API.Events.AddCurrency, HandleCurrencyAddRequest)
    Events.ConnectForPlayer(API.Events.RemoveCurrency, HandleCurrencyRemoveRequest)
    Events.ConnectForPlayer(API.Events.SetCurrency, HandleCurrencySetRequest)
    
    HandleCurrencyAddRequest(player, currencyId, amount)

    function HandleInventoryAddRequest(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    function HandleInventoryRemoveRequest(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    Events.ConnectForPlayer(API.Events.AddInventory, HandleInventoryAddRequest)
    Events.ConnectForPlayer(API.Events.RemoveInventory, HandleInventoryRemoveRequest)
    ]]
TRIGGER = script.parent
while not _G['Character.EquipAPI'] do
	Task.Wait()
end
local EquipApi = _G["Character.EquipAPI"]
local MATERIALS = _G["Items.Materials"]
local COINS = script:GetCustomProperty("Currency") --Inventory item/Resource name to track as a resource


--custom properties
local BoS = script:GetCustomProperty("BuyingOrSelling")
local itemID = script:GetCustomProperty("ItemID")
local GoldValue = script:GetCustomProperty("GoldValue")
--initation time
local Time = time()


local function GetInventory(player)
    local Character = EquipApi.GetCurrentCharacter(player)
    if not Character then return end
    local inventory = Character:GetComponent("Inventory")
    local CoreInv = inventory:GetInventory()
    return CoreInv
end


local function BuyingOrSelling(trigger, other)
    if time() - Time < 2 then return end
    Time = time()
    local GoldCount = other:GetResource(COINS)
    if BoS then
        --player buys
        if GoldCount >= GoldValue then
            Events.BroadcastToServer("HandleBuyTransaction",COINS , GoldValue, itemID)
        end
    else
        --player sells
        local inventory = GetInventory(other)
        local slot = 0
        for index, value in pairs(inventory:GetItems()) do
            if string.match(tostring(value), tostring(itemID)) then
                print("Item found in inventory", index, tostring(value), tostring(itemID))
                slot = index
                break
            end
        end
        if slot == 0 then return end
        Events.BroadcastToServer("HandleSellTransaction",COINS, GoldValue, slot)
    end


end

local BoSString
if BoS then
    BoSString = "Buy"
else
    BoSString = "Sell"
end
TRIGGER.interactedEvent:Connect(BuyingOrSelling)
TRIGGER.interactionLabel = BoSString.." "..itemID..": "..GoldValue.." gold."