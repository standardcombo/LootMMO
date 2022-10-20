local Item = require(script:GetCustomProperty("ItemSystems_Item"))
local UpgradesCostBasis = require(script:GetCustomProperty("ItemSystems_UpgradesCostBasis"))
local Base64 = require(script:GetCustomProperty("Base64"))

local Inventory = {}
Inventory.__index = Inventory

---------------------------------------------------------------------------------------------------------
-- CONSTANTS
---------------------------------------------------------------------------------------------------------
local function Enum(values) for i,v in ipairs(values) do values[v] = i end end

Inventory.EQUIP_SLOTS = {
    { slotType = "MainHand" },
    { slotType = "OffHand" },
    { slotType = "Head" },
    { slotType = "Chest" },
    { slotType = "Feet" },
    { slotType = "Accessory" },
    { slotType = "Accessory" },
    { slotType = "Accessory" },
}

Inventory.NUM_ACCESSORY_SLOTS = 3

Inventory.BACKPACK_CAPACITY = 32

Inventory.TOTAL_CAPACITY = #Inventory.EQUIP_SLOTS + Inventory.BACKPACK_CAPACITY
assert(Inventory.TOTAL_CAPACITY <= 64, "inventory size limit is 64 for compression reasons")

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
function Inventory.New(database, owner)
    local o = {}
    setmetatable(o, Inventory)
    o:_Init(database, owner)
    o:_DefineEvent("lootClaimedEvent")
    o:_DefineEvent("itemEquippedEvent")
    o:_DefineEvent("itemMovedEvent")
    o:_DefineEvent("itemConsumedEvent")
    o:_DefineEvent("itemUpgradedEvent")
    o:_DefineEvent("craftExecutedEvent")
    return o
end

function Inventory:LoadHash(hash)
    self:_ClearSlots()
    if hash then
        self:_LoadHash(hash)
    end
end

-- Converts the 1-based backpack index into the correct inventory slot index.
function Inventory:ConvertBackpackSlotIndex(backpackIndex)
    assert(1 <= backpackIndex and backpackIndex <= Inventory.BACKPACK_CAPACITY)
    return #Inventory.EQUIP_SLOTS + backpackIndex
end

-- Converts the slot type (and optional offset) into the correct inventory slot index.
function Inventory:ConvertEquipSlotIndex(slotType, slotNumber)
    slotNumber = slotNumber or 1
    local number = 0
    for i,equipSlot in ipairs(Inventory.EQUIP_SLOTS) do
        if equipSlot.slotType == slotType then
            number = number + 1
            if number == slotNumber then return i end
        end
    end
    error("equip slot not found")
end

-- True if the slot represents a backpack item.
function Inventory:IsBackpackSlot(slotIndex)
    return slotIndex and #Inventory.EQUIP_SLOTS < slotIndex and slotIndex <= Inventory.TOTAL_CAPACITY
end

-- True if the slot represents an equipped item.
function Inventory:IsEquipSlot(slotIndex)
    return slotIndex and 1 <= slotIndex and slotIndex <= #Inventory.EQUIP_SLOTS
end

-- True if the slot accepts the given type.
function Inventory:IsEquipSlotType(slotIndex, slotType)
    return self:IsEquipSlot(slotIndex) and Inventory.EQUIP_SLOTS[slotIndex].slotType == slotType
end

-- True if the slot is empty.
function Inventory:IsEmptySlot(slotIndex)
    return self.slotItems[slotIndex] == nil
end

-- True if the slot is the primary weapon slot.
function Inventory:IsMainHandSlot(slotIndex)
    return slotIndex == 1
end

-- True if the slot is the offhand weapons slot.
function Inventory:IsOffHandSlot(slotIndex)
    return slotIndex == 2
end 

-- True if the slot is a trinket slot.
function Inventory:IsTrinketSlot(slotIndex)
    return slotIndex >= 6 and slotIndex <= 8
end 

-- True if the offhand slot is disabled.
function Inventory:IsSlotEnabled(slotIndex)
    if self:IsOffHandSlot(slotIndex) then
        return not self.isOffHandDisabled
    else
        return true
    end
end

-- True if the backpack is full.
function Inventory:IsBackpackFull()
    return self:GetFreeBackpackSlot() == nil
end

-- Get the item at the given slot.
function Inventory:GetItem(slotIndex)
    return self.slotItems[slotIndex]
end

-- Get a table of all equipped trinkets
function Inventory:GetTrinkets()
    local result = {}

    for slotIndex = 6, 8 do
        local item = self:GetItem(slotIndex)

        if item then
            table.insert(result, item)
        end
    end

    return result
end

-- Get a table of equipped items, indexed by equipment slot name.
function Inventory:IterateEquipSlots()
    local function iter(_, slotIndex)
        slotIndex = slotIndex + 1
        if slotIndex <= #Inventory.EQUIP_SLOTS then
            local item = self:IsSlotEnabled(slotIndex) and self:GetItem(slotIndex) or nil
            return slotIndex, item
        end
    end
    return iter, nil, 0 
end

-- Returns true if an item of the requested type is currently equipped and enabled.
function Inventory:HasEquippedItemType(itemType)
    local itemConstraints = Item.SLOT_CONSTRAINTS[itemType]
    
    if itemConstraints then
        local itemEquipSlot = self:ConvertEquipSlotIndex(itemConstraints.slotType)
        local currentItem = self:IsSlotEnabled(itemEquipSlot) and self:GetItem(itemEquipSlot) or nil
        return currentItem and currentItem:GetType() == itemType
    end
end

-- Gets the first free backpack slot.
function Inventory:GetFreeBackpackSlot()
    for slotIndex = #Inventory.EQUIP_SLOTS+1,Inventory.TOTAL_CAPACITY do
        if self:IsBackpackSlot(slotIndex) and self:IsEmptySlot(slotIndex) then
            return slotIndex
        end
    end
end

-- Gets the first free matching equip slot.
function Inventory:GetFreeEquipSlot(slotType)
    for slotIndex = 1,#Inventory.EQUIP_SLOTS do
        if self:IsEquipSlotType(slotIndex, slotType) and self:IsEmptySlot(slotIndex) then
            return slotIndex
        end
    end
end

-- Get the cumulative stat totals from all equipped items.
function Inventory:GetStatTotals()
    return self.statTotals
end

-- True if the move operation is valid.
function Inventory:CanMoveItem(fromSlotIndex, toSlotIndex)
    if fromSlotIndex == toSlotIndex then return true end
    return self:_CanMoveItemOneWay(fromSlotIndex, toSlotIndex) and self:_CanMoveItemOneWay(toSlotIndex, fromSlotIndex)
end

-- Move an item. If there is an item in the destination slot, the items will swap. Acts as delete if destination slot is nil.
function Inventory:MoveItem(fromSlotIndex, toSlotIndex)
    if not self:CanMoveItem(fromSlotIndex, toSlotIndex) then return end
    if fromSlotIndex == toSlotIndex then return end
    local originalItem = self:GetItem(fromSlotIndex)
    local swapItem = nil
    if toSlotIndex then
        swapItem = self:GetItem(toSlotIndex)
        -- Special case when both items are stackable and match.
        if originalItem:WillStackWith(swapItem) and not swapItem:IsFullStack() then
            local combinedStackSize = originalItem:GetStackSize() + swapItem:GetStackSize()
            local stackSize1 = math.min(originalItem:GetMaxStackSize(), combinedStackSize)
            local stackSize2 = combinedStackSize - stackSize1
            originalItem:SetStackSize(stackSize1)
            if stackSize2 > 0 then
                swapItem:SetStackSize(stackSize2)
            else
                swapItem = nil
            end
        end
        -- Start moving items.
        self:_SetSlotItem(toSlotIndex, originalItem)
    end
    self:_SetSlotItem(fromSlotIndex, swapItem)
    self:_FireEvent("itemMovedEvent", fromSlotIndex, toSlotIndex)
    -- If this was a salvage, perform the salvage transaction.
    if not toSlotIndex then
        self:_SalvageItem(originalItem)
    end
end

-- Returns the next open loot index and advances the opening forward.
function Inventory:TakeNextOpenLootIndex()
    self.nextOpenLootIndex = self.nextOpenLootIndex or 0
    self.nextOpenLootIndex = self.nextOpenLootIndex + 1
    return self.nextOpenLootIndex
end

-- Register a new loot object dropped for the owner of this inventory. Optionally provide a callback for when the loot is claimed.
function Inventory:RegisterLootItemAtIndex(lootIndex, stackSize, lootItem, lootWorldObject, onLootClaimed)
    if not lootItem then return end
    local lootInfo = {
        lootIndex = lootIndex,
        stackSize = stackSize,
        isClaimed = false,
        item = lootItem,
        worldObject = lootWorldObject,
        onLootClaimed = onLootClaimed,
    }
    assert(not self.lootInfos[lootIndex], "Loot already exists at this index.")
    self.lootInfos[lootIndex] = lootInfo
end

-- True if the claim operation is valid.
function Inventory:CanClaimLoot(lootIndex)
    local lootInfo = self.lootInfos[lootIndex]
    if lootInfo and not lootInfo.isClaimed then
        if lootInfo.item:IsStackable() then
            return self:_CanAccommodateStackableItem(lootInfo.item)
        else
            return self:GetFreeBackpackSlot() ~= nil
        end
    end
end

-- Transfer a loot item into inventory and mark as claimed.
function Inventory:ClaimLoot(lootIndex)
    local lootInfo = self.lootInfos[lootIndex]
    if lootInfo then
        lootInfo.isClaimed = true
        if lootInfo.item:IsStackable() then
            self:_AddStackableItemToBackpack(lootInfo.item)
        else
            local slotIndex = self:GetFreeBackpackSlot()
            self:_SetSlotItem(slotIndex, lootInfo.item)
        end
        self:_FireEvent("lootClaimedEvent", lootIndex)
        if lootInfo.onLootClaimed then lootInfo.onLootClaimed() end
    end
end

-- Get a specific loot item.
function Inventory:GetLootItem(lootIndex)
    return self.lootInfos[lootIndex] and self.lootInfos[lootIndex].item or nil
end

-- Get information for all loots registered to this inventory.
function Inventory:GetLootInfos()
    return self.lootInfos
end

-- Add a an item into the first slot which will accept it (including equipment slots).
function Inventory:AddStarterItems(starterItems)
    for _,item in ipairs(starterItems) do
        for slotIndex=1,self.TOTAL_CAPACITY do
            if self:IsBackpackSlot(slotIndex) or
               self:IsEquipSlotType(slotIndex, item:GetEquipSlotType()) and self:GetItem(slotIndex) == nil then
                self:_SetSlotItem(slotIndex, item)
                break
            end
        end
    end
end

-- Consume one item at the specified index.
function Inventory:ConsumeItem(slotIndex)
    local item = self:GetItem(slotIndex)
    if item and item:GetType() == "Consumable" then
        item:ApplyConsumptionEffect(self.owner)
        local itemAfterConsumption = nil
        if item:IsStackable() and item:GetStackSize() > 1 then
            item:SetStackSize(item:GetStackSize() - 1)
            itemAfterConsumption = item
        end
        self:_SetSlotItem(slotIndex, itemAfterConsumption)
        self:_FireEvent("itemConsumedEvent", slotIndex)
    end
end

-- Hash suitable for runtime use. Indexes are preferred over full MUIDs for compactness.
function Inventory:RuntimeHash()
    return self:_IntoHash(true)
end

-- Hash suitable for persistance. MUIDs are preferred over indexes for future-proofing.
function Inventory:PersistentHash()
    return self:_IntoHash(false)
end

-- Update an equipment slot from hash value. Used by replicated clients.
function Inventory:UpdateEquipSlotFromHash(slotIndex, itemHash)
    assert(self:IsEquipSlot(slotIndex))
    local item = nil
    if #itemHash > 0 then
        item = self.database:CreateItemFromHash(itemHash)
    end
    self:_SetSlotItem(slotIndex, item)
end

-- Connect this inventory instance to a stat sheet instance. Any changes to the inventory will reflect themselves
-- in the statsheet.
function Inventory:ConnectToStatSheet(statSheet)
    assert(not self.connectedStatSheet, "inventory already has connected stat sheet")
    -- Set up the static modifiers on the stat sheet.
    local doNotReplicate = true
    self.connectedStatSheet = statSheet
    self.connectedStatSheetModifiers = {
        Health          = statSheet:NewStatModifierAdd("Health",       0, doNotReplicate),
        HealthPercent   = statSheet:NewStatModifierMul("Health",       1, doNotReplicate),
        Defense         = statSheet:NewStatModifierAdd("Defense",      0, doNotReplicate),
        Attack          = statSheet:NewStatModifierAdd("Attack",       0, doNotReplicate),
        Magic           = statSheet:NewStatModifierAdd("Magic",        0, doNotReplicate),
        CritChance      = statSheet:NewStatModifierAdd("CritChance",   0, doNotReplicate),
        CDR             = statSheet:NewStatModifierAdd("CDR",          0, doNotReplicate),
        Haste           = statSheet:NewStatModifierAdd("Haste",        0, doNotReplicate),
        Tenacity        = statSheet:NewStatModifierAdd("Tenacity",     0, doNotReplicate),
    }
    self:_UpdateConnectedStatSheet()
end

-- Returns the result of an "equip-item-quick-compare". Namely, how will the stats change if I equip this item?
function Inventory:GetQuickCompareStatDeltas(equipSlotIndex, itemToTest)
    local itemAlreadyEquipped = self:GetItem(equipSlotIndex)
    local doNotFireEvent = true
    local statDeltas = {}
    for _,statName in ipairs(self.connectedStatSheet.STATS) do statDeltas[statName] = -self.connectedStatSheet:GetStatTotalValue(statName) end
    self:_SetSlotItem(equipSlotIndex, itemToTest, doNotFireEvent)
    for _,statName in ipairs(self.connectedStatSheet.STATS) do statDeltas[statName] = statDeltas[statName] + self.connectedStatSheet:GetStatTotalValue(statName) end
    self:_SetSlotItem(equipSlotIndex, itemAlreadyEquipped, doNotFireEvent)
    return statDeltas
end

-- Returns a table of the "in-inventory" quantities of each of the required items.
-- Stackable items have their cumulative stack size considered, while non-stackable items simply count the
-- number of separate instances. Any META ingredients will be ignored. All inventory slots are considered.
function Inventory:ComputeCraftingRecipeIngredientCounts(craftingRecipeItem)
    local ingredientCounts = {}
    local craftingData = craftingRecipeItem:GetCraftingRecipeData()
    for _,ingredient in ipairs(craftingData.ingredients) do
        if ingredient.item then
            ingredientCounts[ingredient.item:GetIndex()] = 0
        end
    end
    for i=1,self.TOTAL_CAPACITY do
        local item = self:GetItem(i)
        if item then
            local index = item:GetIndex()
            local count = ingredientCounts[index]
            if count then
                local addend = 1
                if item:IsStackable() then
                    addend = item:GetStackSize()
                end
                ingredientCounts[index] = count + addend
            end
        end
    end
    -- Convert into useful output format.
    local countsArray = {}
    for _,ingredient in ipairs(craftingData.ingredients) do
        if ingredient.item then
            table.insert(countsArray, ingredientCounts[ingredient.item:GetIndex()])
        end
    end
    return countsArray
end

-- Executes a primary item craft, removing the ingredients from the inventory and modifying the primary item in place.
function Inventory:ExecutePrimaryItemCraft(recipeItem, primaryItemSlotIndex)
    local ingredientRequiredAmounts = {}
    local craftingData = recipeItem:GetCraftingRecipeData()
    for _,ingredient in ipairs(craftingData.ingredients) do
        if ingredient.item then
            ingredientRequiredAmounts[ingredient.item:GetIndex()] = ingredient.amount or 1
        end
    end
    -- Subtract the ingredients. While it would be nice to take from the smallest stack first, it is far easier to just
    -- remove in the order we encounter them in the inventory.
    for i=1,self.TOTAL_CAPACITY do
        local item = self:GetItem(i)
        if item then
            local index = item:GetIndex()
            local requiredAmount = ingredientRequiredAmounts[index]
            if requiredAmount and requiredAmount > 0 then
                if item:IsStackable() then
                    local amountToRemove = math.min(requiredAmount, item:GetStackSize())
                    if amountToRemove == item:GetStackSize() then
                        self:_SetSlotItem(i, nil)
                    else
                        item:SetStackSize(item:GetStackSize() - amountToRemove)
                    end
                    ingredientRequiredAmounts[index] = requiredAmount - amountToRemove
                else
                    self:_SetSlotItem(i, nil)
                    ingredientRequiredAmounts[index] = requiredAmount - 1
                end
            end
        end
    end
    -- Perform the modification.
    local primaryItem = self:GetItem(primaryItemSlotIndex)
    craftingData.method:Execute(recipeItem, primaryItem)
    -- Fire event so that this operation is replicated.
    self:_FireEvent("craftExecutedEvent", recipeItem, primaryItemSlotIndex)
end

-- Count up the number of available ingredients.
function Inventory:CountStackableTotal(stackableItem)
    if not (stackableItem and stackableItem:IsStackable()) then return end
    local count = 0
    for i=1,self.TOTAL_CAPACITY do
        local item = self:GetItem(i)
        if item and item:WillStackWith(stackableItem) then
            count = count + item:GetStackSize()
        end
    end
    return count
end

-- Determine if we can foot the bill for this upgrade.
function Inventory:CanExecuteItemUpgrade(slotIndex)
    local itemToUpgrade = self:GetItem(slotIndex)
    if itemToUpgrade and itemToUpgrade:CanUpgrade() then
        local itemToSpend, costRemaining = UpgradesCostBasis.AppraiseItemUpgrade(itemToUpgrade)
        for i=1,self.TOTAL_CAPACITY do
            local item = self:GetItem(i)
            if item and item:WillStackWith(itemToSpend) then
                costRemaining = costRemaining - item:GetStackSize()
                if costRemaining <= 0 then return true end
            end
        end
    end
end

-- Expend the required amount of resources and upgrade the item.
function Inventory:ExecuteItemUpgrade(slotIndex)
    local itemToUpgrade = slotIndex and self:GetItem(slotIndex) or nil
    if itemToUpgrade and itemToUpgrade:CanUpgrade() then
        local itemToSpend, costRemaining = UpgradesCostBasis.AppraiseItemUpgrade(itemToUpgrade)
        local slotsWithSpendableStack = {}
        for i=1,self.TOTAL_CAPACITY do
            local item = self:GetItem(i)
            if item and item:WillStackWith(itemToSpend) then
                table.insert(slotsWithSpendableStack, i)
            end
        end
        -- Sort them by increasing stack size so that we spend through smaller stacks first.
        table.sort(slotsWithSpendableStack, function(a, b)
            local itemA = self:GetItem(a)
            local itemB = self:GetItem(b)
            return itemA:GetStackSize() < itemB:GetStackSize()
        end)
        -- Spend down the full cost.
        for _,spendableSlotIndex in ipairs(slotsWithSpendableStack) do
            local item = self:GetItem(spendableSlotIndex)
            local amountToSpend = math.min(costRemaining, item:GetStackSize())
            local newStackSize = item:GetStackSize() - amountToSpend
            if newStackSize == 0 then
                self:_SetSlotItem(spendableSlotIndex, nil)
            else
                item:SetStackSize(newStackSize)
            end
            costRemaining = costRemaining - amountToSpend
            if costRemaining == 0 then break end
        end
        if costRemaining ~= 0 then
            warn("Something went wrong when executing item upgrade!")
        else
            itemToUpgrade:Upgrade()
        end
        self:_UpdateStatTotals()
        self:_FireEvent("itemUpgradedEvent", slotIndex)
    end
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
function Inventory:_Init(database, owner)
    self.database = database
    self.owner = owner
    self.lootInfos = {}
    self:_ClearSlots()
    self:_UpdateSlotStatus()
    self:_UpdateStatTotals()
end

function Inventory:_ClearSlots()
    self.slotItems = {}
    self.equippedItems = {}
    self.isOffHandDisabled = false
end

function Inventory:_IntoHash(isRuntime)
    local hashParts = {}
    table.insert(hashParts, isRuntime and "R" or "P")
    for slotIndex = 1,Inventory.TOTAL_CAPACITY do
        local item = self:GetItem(slotIndex)
        if item then
            local slotId = Base64.Encode6(slotIndex)
            if not isRuntime then
                if self:IsEquipSlot(slotIndex) then
                    slotId = "E" .. Inventory.EQUIP_SLOTS[slotIndex].slotType
                else
                    slotId = "B" .. Base64.Encode6(slotIndex - #Inventory.EQUIP_SLOTS)
                end
            end
            table.insert(hashParts, string.format("<%s>", slotId))
            table.insert(hashParts, item:_IntoHash(isRuntime))
            table.insert(hashParts, ";")
        end
    end
    return table.concat(hashParts)
end

local SLOT_PATTERN = "<([^<>;]+)>([^<>;]+);"
function Inventory:_LoadHash(hash)
    local hashType = hash:sub(1,1)
    local hashData = hash:sub(2)
    local isRuntime = hashType == "R"
    for slotId,itemHash in hashData:gmatch(SLOT_PATTERN) do
        local slotIndex = nil
        if isRuntime then
            slotIndex = Base64.Decode6(slotId)
        elseif slotId:sub(1,1) == "B" then
            slotIndex = #Inventory.EQUIP_SLOTS + Base64.Decode6(slotId:sub(2))
        elseif slotId:sub(1,1) == "E" then
            slotIndex = self:GetFreeEquipSlot(slotId:sub(2))
        end
        local item = Item.FromHash(self.database, itemHash)
        self:_SetSlotItem(slotIndex, item)
    end
end

function Inventory:_FireEvent(eventName, ...)
    for _,handler in ipairs(self.eventHandlers[eventName]) do
        handler(...)
    end
end

function Inventory:_DefineEvent(eventName)
    self.eventHandlers = self.eventHandlers or {}
    self.eventHandlers[eventName] = self.eventHandlers[eventName] or {}
    self[eventName] = {
        Connect = function(_, handler)
            table.insert(self.eventHandlers[eventName], handler)
        end
    }
end

function Inventory:_CanMoveItemOneWay(fromSlotIndex, toSlotIndex)
    local item = self:GetItem(fromSlotIndex)
    if not item then
        return true
    end
    -- Only salvageable items may be deleted.
    if not toSlotIndex and item:IsSalvageable() then
        return true
    end
    -- Any item can move to an open backpack slot.
    if self:IsBackpackSlot(toSlotIndex) then
        return true
    end
    -- Any item can move into an appropriately typed equip slot.
    if self:IsEquipSlotType(toSlotIndex, item:GetEquipSlotType()) then
        return true
    end
end

function Inventory:_CanAccommodateStackableItem(item)
    assert(item:IsStackable())
    local stackSpace = 0
    for slotIndex = #Inventory.EQUIP_SLOTS+1,Inventory.TOTAL_CAPACITY do
        assert(self:IsBackpackSlot(slotIndex))
        if self:IsEmptySlot(slotIndex) then
            stackSpace = stackSpace + item:GetMaxStackSize()
        elseif item:WillStackWith(self:GetItem(slotIndex)) then
            stackSpace = stackSpace + self:GetItem(slotIndex):GetAvailableStackSpace()
        end
        -- Check if we have enough and exit early.
        if stackSpace >= item:GetStackSize() then return true end
    end
end

function Inventory:_AddStackableItemToBackpack(itemToAdd)
    assert(itemToAdd:IsStackable())
    -- First add to existing stacks where possible.
    for slotIndex = #Inventory.EQUIP_SLOTS+1,Inventory.TOTAL_CAPACITY do
        assert(self:IsBackpackSlot(slotIndex))
        local itemInSlot = self:GetItem(slotIndex)
        if itemToAdd:WillStackWith(itemInSlot) then
            local amountToAdd = math.min(itemToAdd:GetStackSize(), itemInSlot:GetAvailableStackSpace())
            itemInSlot:SetStackSize(itemInSlot:GetStackSize() + amountToAdd)
            local newStackSize = itemToAdd:GetStackSize() - amountToAdd
            if newStackSize > 0 then
                itemToAdd:SetStackSize(newStackSize)
            else
                return
            end
        end
    end
    -- An empty slot is assumed to exist since this should have been checked already.
    local emptySlotIndex = self:GetFreeBackpackSlot()
    if emptySlotIndex then
        self:_SetSlotItem(emptySlotIndex, itemToAdd)
    end
end

function Inventory:_SalvageItem(itemToSalvage)
    if itemToSalvage then
        local salvageQuantity = itemToSalvage:GetSalvageQuantity()
        if salvageQuantity then
            local salvageItem = self.database:CreateItemSalvage()
            -- It is not allowed for items to salvage into more than a single stack, otherwise there are some annoying edge cases to consider.
            if salvageQuantity > salvageItem:GetMaxStackSize() then
                warn("cannot salvage into quantity greater than salvage-item stack size. consider increasing the salvage item stack size.")
            end
            salvageQuantity = math.min(salvageQuantity, salvageItem:GetMaxStackSize())
            salvageItem:SetStackSize(salvageQuantity)
            self:_AddStackableItemToBackpack(salvageItem)
        end
    end
end

function Inventory:_SetSlotItem(slotIndex, item, doNotFireEvent)
    -- Assumes validation has been done already.
    self.slotItems[slotIndex] = item
    if self:IsEquipSlot(slotIndex) then
        local previousItem = self.equippedItems[slotIndex]
        self.equippedItems[slotIndex] = item
        self:_UpdateSlotStatus()
        self:_UpdateStatTotals()
        if not doNotFireEvent then
            self:_FireEvent("itemEquippedEvent", slotIndex, previousItem, item)
        end
    end
end

function Inventory:_UpdateSlotStatus()
    self.isOffHandDisabled = false
    local mainHandItem = self:GetItem(1)
    if mainHandItem and mainHandItem:IsTwoHanded() then
        self.isOffHandDisabled = true
    end
end

function Inventory:_UpdateStatTotals()
    self.statTotals = self.statTotals or {}
    for _,statName in ipairs(Item.STATS) do
        self.statTotals[statName] = 0
    end
    for slotIndex = 1,#Inventory.EQUIP_SLOTS do
        local item = self:GetItem(slotIndex)
        if item then
            if item:GetEquipSlotType() == "OffHand" and self.isOffHandDisabled then
                -- We have to be careful to not include offhand stats when they are disabled (by having a 2H weapon in mainhand).
            else
                -- Accumulate stat contribution.
                for _,statName in ipairs(Item.STATS) do
                    local itemStatAmount = item:GetStatTotal(statName)
                    self.statTotals[statName] = self.statTotals[statName] + itemStatAmount
                end
            end
        end
    end
    self:_UpdateConnectedStatSheet()
end

function Inventory:_UpdateConnectedStatSheet()
    if not self.connectedStatSheet then return end
    -- Read total item stats and apply to stat sheet.
    local itemStatTotals = self:GetStatTotals()
    self.connectedStatSheetModifiers.Health.addend             = itemStatTotals.Health
    self.connectedStatSheetModifiers.HealthPercent.multiplier  = (itemStatTotals.HealthPercent / 100) + 1
    self.connectedStatSheetModifiers.Defense.addend            = itemStatTotals.Defense
    self.connectedStatSheetModifiers.Attack.addend             = itemStatTotals.Attack
    self.connectedStatSheetModifiers.Magic.addend              = itemStatTotals.Magic
    self.connectedStatSheetModifiers.CritChance.addend         = itemStatTotals.CritChance
    self.connectedStatSheetModifiers.CDR.addend                = itemStatTotals.CDR
    self.connectedStatSheetModifiers.Haste.addend              = itemStatTotals.Haste
    self.connectedStatSheetModifiers.Tenacity.addend           = itemStatTotals.Tenacity
    -- Tell the stat sheet to recalculate.
    self.connectedStatSheet:Update()
end

function Inventory:__tostring()
    local parts = { "Inventory:\n" }
    for slotIndex = 1,Inventory.TOTAL_CAPACITY do
        local item = self.slotItems[slotIndex]
        if self:IsEquipSlot(slotIndex) then
            table.insert(parts, string.format("\t%-10s = %s\n", Inventory.EQUIP_SLOTS[slotIndex].slotType, item and item:GetName() or ""))
        elseif not self:IsEmptySlot(slotIndex) then
            table.insert(parts, string.format("\tpack %02d    = %4dx %s\n",
                slotIndex - #Inventory.EQUIP_SLOTS,
                item and item:GetStackSize(),
                item and item:GetName() or ""))
        end
    end
    return table.concat(parts)
end

return Inventory