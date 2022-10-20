--[[
    ItemSystems.InventoryReplicator
    ===============================

    Manages the replication of inventories across client/server.
]]
local API_SK = require(script:GetCustomProperty("APISharedKey"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local Inventory = require(script:GetCustomProperty("ItemSystems_Inventory"))
local Database = require(script:GetCustomProperty("ItemSystems_Database"))

local COMPONENT = script:GetCustomProperty("InventoryComponent"):WaitForObject()

---------------------------------------------------------------------------------------------------------
local OWNER = nil
while not OWNER do
    Task.Wait()
    for _,player in ipairs(Game.GetPlayers()) do
        if player.id == COMPONENT:GetCustomProperty("PlayerId") then
            OWNER = player
            break
        end
    end
end

---------------------------------------------------------------------------------------------------------
-- Wait until the database has fully loaded to proceed.
Database:WaitUntilLoaded()

-- Wait until the player stat sheet has loaded.
while true do
    if script.isClientOnly then
        if OWNER.clientUserData.statSheet then break end
    else
        if OWNER.serverUserData.statSheet then break end
    end
    Task.Wait()
end

---------------------------------------------------------------------------------------------------------
local function ServerLoadInventory()
    local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), OWNER)
    local startupMessageFmt = "Loading inventory: %s"
    -- Check for first time user and populate inventory with starter item.
    if not playerData.inventoryHash then
        -- First time user.
        OWNER.serverUserData.inventory:LoadHash(nil)
        OWNER.serverUserData.inventory:AddStarterItems(Database:CreateStarterItems())
        playerData.inventoryHash = OWNER.serverUserData.inventory:PersistentHash()
        Storage.SetSharedPlayerData(API_SK.GetStorageKey(), OWNER, playerData)
        startupMessageFmt = "Initializing inventory with beginner items: %s"
    end
    print(string.format(startupMessageFmt, playerData.inventoryHash))
    OWNER.serverUserData.inventory:LoadHash(playerData.inventoryHash)
    COMPONENT:SetNetworkedCustomProperty("LOAD", OWNER.serverUserData.inventory:RuntimeHash())
end

local function ClientLoadInventory()
    local loadHash = nil
    while not loadHash do
        Task.Wait()
        loadHash = COMPONENT:GetCustomProperty("LOAD")
    end
    OWNER.clientUserData.inventory:LoadHash(loadHash)
end

---------------------------------------------------------------------------------------------------------
local function ServerUpdateStatSheet(inventory, modifiers)
    local statSheet = OWNER.serverUserData.statSheet
    -- First time through, make sure all modifiers are present.
    local doNotReplicate = true
    modifiers.Health        = modifiers.Health          or statSheet:NewStatModifierAdd("Health",       0, doNotReplicate)
    modifiers.HealthPercent = modifiers.HealthPercent   or statSheet:NewStatModifierMul("Health",       1, doNotReplicate)
    modifiers.Defense       = modifiers.Defense         or statSheet:NewStatModifierAdd("Defense",      0, doNotReplicate)
    modifiers.Attack        = modifiers.Attack          or statSheet:NewStatModifierAdd("Attack",       0, doNotReplicate)
    modifiers.Magic         = modifiers.Magic           or statSheet:NewStatModifierAdd("Magic",        0, doNotReplicate)
    modifiers.CritChance    = modifiers.CritChance      or statSheet:NewStatModifierAdd("CritChance",   0, doNotReplicate)
    modifiers.CDR           = modifiers.CDR             or statSheet:NewStatModifierAdd("CDR",          0, doNotReplicate)
    modifiers.Haste         = modifiers.Haste           or statSheet:NewStatModifierAdd("Haste",        0, doNotReplicate)
    modifiers.Tenacity      = modifiers.Tenacity        or statSheet:NewStatModifierAdd("Tenacity",     0, doNotReplicate)
    -- Read total item stats and apply to stat sheet.
    local itemStatTotals = inventory:GetStatTotals()
    modifiers.Health.addend             = itemStatTotals.Health
    modifiers.HealthPercent.multiplier  = (itemStatTotals.HealthPercent / 100) + 1
    modifiers.Defense.addend            = itemStatTotals.Defense
    modifiers.Attack.addend             = itemStatTotals.Attack
    modifiers.Magic.addend              = itemStatTotals.Magic
    modifiers.CritChance.addend         = itemStatTotals.CritChance
    modifiers.CDR.addend                = itemStatTotals.CDR
    modifiers.Haste.addend              = itemStatTotals.Haste
    modifiers.Tenacity.addend           = itemStatTotals.Tenacity
    -- Tell the stat sheet to recalculate.
    statSheet:Update()
end

---------------------------------------------------------------------------------------------------------
local function ServerSaveInventory(inventory)
    local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), OWNER)
    playerData.inventoryHash = inventory:PersistentHash()
    Storage.SetSharedPlayerData(API_SK.GetStorageKey(), OWNER, playerData)
end

---------------------------------------------------------------------------------------------------------
local function ServerInitInventory()
    OWNER.serverUserData.inventory = Inventory.New(Database, OWNER)
    local inventory = OWNER.serverUserData.inventory
    -- Connect the stat sheet.
    inventory:ConnectToStatSheet(OWNER.serverUserData.statSheet)
    -- Whenever an item is equipped by the server inventory, replicate to all clients.
    inventory.itemEquippedEvent:Connect(function(equipIndex, previousItem, equipItem)
        local itemHash = equipItem and equipItem:RuntimeHash() or ""
        local prop = string.format("E%d", equipIndex)
        COMPONENT:SetNetworkedCustomProperty(prop, itemHash)
        -- Update the player's animation stance depending on the item.
        if inventory:IsMainHandSlot(equipIndex) then
            OWNER.animationStance = equipItem and equipItem:GetAnimationStance() or "unarmed_stance"
        end
    end)
    -- Whenever a client rearranges their local inventory, update the server inventory and persist.
    API_RE.ConnectForPlayer("IIM", function(player, fromSlotIndex, toSlotIndex)
        if player == OWNER then
            inventory:MoveItem(fromSlotIndex, toSlotIndex)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever a client consumes an item, update the server inventory.
    API_RE.ConnectForPlayer("IIC", function(player, slotIndex)
        if player == OWNER then
            inventory:ConsumeItem(slotIndex)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever a client claims a loot item, update the server inventory and persist.
    API_RE.ConnectForPlayer("ILC", function(player, lootIndex)
        if player == OWNER then
            if inventory:CanClaimLoot(lootIndex) then
                inventory:ClaimLoot(lootIndex)
                ServerSaveInventory(inventory)
            end
        end
    end)
    -- Whenever a client upgrades an item, update the server ivnentory and persist.
    API_RE.ConnectForPlayer("IUE", function(player, upgradeSlotIndex)
        if player == OWNER then
            inventory:ExecuteItemUpgrade(upgradeSlotIndex)
            ServerSaveInventory(inventory)
        end
    end)
    -- Whenever a client executes a craft, update the server inventory and persist.
    API_RE.ConnectForPlayer("ICE", function(player, recipeItemIndex, primaryItemSlotIndex)
        if player == OWNER then
            local recipeItemData = Database:FindItemDataByIndex(recipeItemIndex)
            if recipeItemData then
                local recipeItem = Database:CreateItemFromData(recipeItemData)
                inventory:ExecutePrimaryItemCraft(recipeItem, primaryItemSlotIndex)
                ServerSaveInventory(inventory)
            end
        end
    end)
end

local function ClientInitInventoryLocal()
    OWNER.clientUserData.inventory = Inventory.New(Database, OWNER)
    local inventory = OWNER.clientUserData.inventory
    -- Connect the stat sheet.
    inventory:ConnectToStatSheet(OWNER.clientUserData.statSheet)
    -- Whenever a local rearrangement is made, broadcast to the server.
    inventory.itemMovedEvent:Connect(function(fromSlotIndex, toSlotIndex)
        API_RE.BroadcastToServer("IIM", fromSlotIndex, toSlotIndex)
    end)
    -- Whenever an item is consumed, broadcast to server.
    inventory.itemConsumedEvent:Connect(function(slotIndex)
        API_RE.BroadcastToServer("IIC", slotIndex)
    end)
    -- Whenever a loot item is claimed, broadcast to server.
    inventory.lootClaimedEvent:Connect(function(lootIndex)
        API_RE.BroadcastToServer("ILC", lootIndex)
    end)
    -- Whenever an upgrade is performed, broadcast to server.
    inventory.itemUpgradedEvent:Connect(function(upgradeSlotIndex)
        API_RE.BroadcastToServer("IUE", upgradeSlotIndex)
    end)
    -- Whenever a craft is performed, broadcast to server.
    inventory.craftExecutedEvent:Connect(function(recipeItem, primaryItemSlotIndex)
        API_RE.BroadcastToServer("ICE", recipeItem:GetIndex(), primaryItemSlotIndex)
    end)
end

local function ClientInitInventoryReplicated()
    OWNER.clientUserData.inventory = Inventory.New(Database)
    local inventory = OWNER.clientUserData.inventory
    -- Whenever an equipment change is received from the server, update the local inventory.
    COMPONENT.networkedPropertyChangedEvent:Connect(function(_, prop)
        local equipIndex = tonumber(prop:match("E(%d)"))
        if equipIndex then
            local equipItemHash = COMPONENT:GetCustomProperty(prop)
            inventory:UpdateEquipSlotFromHash(equipIndex, equipItemHash)
        end
    end)
end

---------------------------------------------------------------------------------------------------------
local function InitServer()
    ServerInitInventory()
    ServerLoadInventory()
end

local function InitClient()
    if OWNER == Game.GetLocalPlayer() then
        ClientInitInventoryLocal()
    else
        ClientInitInventoryReplicated()
    end
    ClientLoadInventory()
end

if script.isServerOnly then InitServer() end
if script.isClientOnly then InitClient() end