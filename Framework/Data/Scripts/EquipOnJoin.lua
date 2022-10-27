Task.Wait(1)
local Itemdat   = _G["Items"]

function GivePlayerInventory(player, itemID)
    local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
    _G.RewardsAdapter.AddItem(player, itemID)
    _G.RewardsAdapter.AddItem(player, itemID)
    _G.RewardsAdapter.AddItem(player, itemID)
    _G.RewardsAdapter.AddItem(player, itemID)
    Task.Wait(4)
    if char then
        local Inventory = char:GetComponent("Inventory")
        local iteminfo = Itemdat.GetDefinition(itemID) or materials.GetDefinition(itemID)
        if iteminfo then
            --print(Inventory:GetInventory():GetItemCount(itemID), " count of ", itemID)
            --Inventory:GetInventory():RemoveItem(iteminfo["itemAsset"], { count = 1 })
        end
    end
end

function OnPlayerJoined(player)
    Task.Wait(5)
	GivePlayerInventory(player, "Katana")
end

function OnPlayerLeft(player)
	print("player left: " .. player.name)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
