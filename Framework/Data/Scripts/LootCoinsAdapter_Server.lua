--[[
    =======================
    LootCoinsAdapter_Server
    V1.0
    Created by: Luapi
    =======================
    Unifies inventory coins with resource coins.
    Improves interoperability (e.g. Pinball/Poker).

    1. When player selects character, get number of inventory coins and create a coin resource.
    2. When player inventory coins changes, update the coin resource.
    3. When player selects a different character, destroy the coin resource.
    4. When player earns coins resource changes, update the player's inventory coin quantity.
]]
while not _G['Character.EquipAPI'] do
	Task.Wait()
end
local MATERIALS = _G["Items.Materials"]
local EquipAPI = _G['Character.EquipAPI']
local COINS = "Coins" --Inventory item/Resource name to track as a resource
local iteminfo = MATERIALS.GetDefinition(COINS)

function GetInventory(player)
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not Character then return end
	local inventory = Character:GetComponent("Inventory")
	local CoreInv = inventory:GetInventory()
	return CoreInv
end

function OnResourceChanged(player, resName, value) --When coins resource changes, update player's inventory
    if resName ~= COINS then return end
    local CoreInv = GetInventory(player)
    if not CoreInv then return end
    if not iteminfo then return end

    if player.serverUserData.locked then return end
    player.serverUserData.locked = true

    local invCoinCount = CoreInv:GetItemCount(iteminfo["itemAsset"])
    --[[
        If the players coins inventory is less than the resource, add the difference to the inventory.
        If the players coins inventory is more than the resource, remove the difference from the inventory.
    ]]
    --print(invCoinCount, value)
    local difference = 0
    if invCoinCount < value then
        difference = value - invCoinCount
        CoreInv:AddItem(iteminfo["itemAsset"], {count = difference })
    elseif invCoinCount > value then
        difference = invCoinCount - value
        CoreInv:RemoveItem(iteminfo["itemAsset"], {count = difference})
    end
    player.serverUserData.locked = false
end

function UpdateResourceFromInventory(coreInv) --When player's inventory changes, update coins resource
    local coinCount = coreInv:GetItemCount(iteminfo["itemAsset"])
    if coinCount == coreInv.owner:GetResource(COINS) then return end
    --print("INVENTORY COINS",coinCount)
    coreInv.owner:SetResource(COINS, coinCount)
end

function OnPlayerEquippedEvent(char, player)
    local CoreInv = GetInventory(player)
    if not CoreInv then return end

    if player.serverUserData.locked then return end
    player.serverUserData.locked = true

    player.serverUserData.inventoryChangedListener = CoreInv.changedEvent:Connect(function(_,slot)
        UpdateResourceFromInventory(CoreInv)
    end)
    UpdateResourceFromInventory(CoreInv)
    player.serverUserData.resourceChangedListener = player.resourceChangedEvent:Connect(OnResourceChanged)
    player.serverUserData.locked = false
end

function OnPlayerUnequippedEvent(char, player)
    player.serverUserData.inventoryChangedListener:Disconnect()
    player.serverUserData.resourceChangedListener:Disconnect()
    player:SetResource(COINS, 0)
end

EquipAPI.playerEquippedEvent:Connect(OnPlayerEquippedEvent)
EquipAPI.playerUnequippedEvent:Connect(OnPlayerUnequippedEvent)