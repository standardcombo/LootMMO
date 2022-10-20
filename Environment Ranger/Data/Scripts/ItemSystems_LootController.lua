local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local LOOT = script:GetCustomProperty("Loot"):WaitForObject()
local INDICATORS = {
    NotForMe    = script:GetCustomProperty("IndicatorNotForMe"),
    Common      = script:GetCustomProperty("IndicatorCommon"),
    Uncommon    = script:GetCustomProperty("IndicatorUncommon"),
    Rare        = script:GetCustomProperty("IndicatorRare"),
    Epic        = script:GetCustomProperty("IndicatorEpic"),
    Legendary   = script:GetCustomProperty("IndicatorLegendary"),
}

-- Wait for the networked property to be set.
local OWNER = nil
local ITEM_HASH = nil
while not OWNER do
    Task.Wait()
    local info = LOOT:GetCustomProperty("INFO")
    OWNER,LOOT_INDEX,STACK_SIZE,ITEM_HASH = info:match("^(.+)/(.+)/(.+)/(.+)$")
end
LOOT_INDEX = tonumber(LOOT_INDEX)
STACK_SIZE = tonumber(STACK_SIZE)

-- Get the actual owning player.
for _,player in ipairs(Game.GetPlayers()) do
    if player.id:find(OWNER) then
        OWNER = player
        break
    end
end

-- Maybe a corner case where the owner is no longer in the game.
if not OWNER then return end

-- Both server and client cannot perform their inventory-related functions until the inventory has loaded.
local function AwaitInventory(userData)
    while not userData.inventory do Task.Wait() end
end

---------------------------------------------------------------------------------------------------------
local item = nil
if script.isServerOnly then
    AwaitInventory(OWNER.serverUserData)
    item = Item.FromHash(OWNER.serverUserData.inventory.database, ITEM_HASH)
    -- Delete networked root object when claimed.
    local function OnLootClaimed() LOOT:Destroy() end
    OWNER.serverUserData.inventory:RegisterLootItemAtIndex(LOOT_INDEX, STACK_SIZE, item, LOOT, OnLootClaimed)
    -- Delete networked root object if owner leaves game.
    Game.playerLeftEvent:Connect(function(player)
        if player == OWNER and Object.IsValid(LOOT) then LOOT:Destroy() end
    end)
else
    if OWNER == Game.GetLocalPlayer() then
        -- Client only needs to update inventory for loot which belongs to the local player.
        AwaitInventory(OWNER.clientUserData)
        item = Item.FromHash(OWNER.clientUserData.inventory.database, ITEM_HASH)
        OWNER.clientUserData.inventory:RegisterLootItemAtIndex(LOOT_INDEX, STACK_SIZE, item, LOOT)
        -- Set up the trigger.
        local pickupTrigger = script:GetCustomProperty("PickupTrigger"):WaitForObject()
        pickupTrigger.isInteractable = true
        pickupTrigger.interactedEvent:Connect(function() API_RE.Broadcast("ForceOpenViewByName", "Loot") end)
        -- Draw the correct visuals depending on rarity.
        World.SpawnAsset(INDICATORS[item:GetRarity()], { parent = LOOT })
    else
        -- All other loots are rendered as "not-for-me"
        World.SpawnAsset(INDICATORS.NotForMe, { parent = LOOT })
    end
end

---------------------------------------------------------------------------------------------------------
API_RE.Broadcast("LootDroppedForPlayer", OWNER, item)

