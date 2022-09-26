local Slot = {
    contents = nil,
    maxCount = 10,
    type = nil
}
local slotTypes = _G['Equipment.Slots']
local itemConstructor = _G['Item.Constructor']
local Equipment = slotTypes.GetSlots()

function Slot:isAcceptingType(type)
    if self.type == ('any' or nil) then
        return true
    end

    local acceptingTypes = slotTypes.GetAcceptingSlots(self.type)
    for index, value in ipairs(acceptingTypes) do
        if value == type then
            return true
        end
    end
    return
end

function Slot:Contains(Item, count)
    local itemcount = 0
    for i = 1, 10, 1 do
    end
end

function Slot:WillAcceptItem(Item)
end

function Slot:IsFree()
    return #self.contents == 0
end

function Slot:AssignItem(Item)
    if Item and self:WillAcceptItem(Item) then
        table.insert(self.contents, Item)
    end
end
function Slot:SetType(type)
    self.type = type or 'any'
end
function Slot:RemoveItem(item)
    for i = #self.contents, 1, -1 do
        if self.contents[i] == item then
            table.remove(self.contents, i)
        end
    end
end
function Slot:GetContent()
    return self.contents
end

local inventory = {}

function inventory:AddResource(key, value)
    local prevValue = self:GetResource(key)
    prevValue = prevValue + (value or 0)
    self:SetResource(key, prevValue)
end

function inventory:GetResource(key)
    return (self.resources[key]) or 0
end

function inventory:ConsolidateItems()
end

function inventory:SetResource(key, value)
    local oldValue = self:GetResource(key)
    self.resources[key] = value
    if oldValue ~= value then
        TriggerEvent(self.resourceChangedEvent, self, key, value)
    end
end

function inventory:DoesInventoryContain(item, count)
    for key, value in pairs(self.slots) do
    end
end

function inventory:GetResourceKeys()
    local keys = {}
    for key, value in pairs(self.resources) do
        table.insert(keys, key)
    end
    return keys
end

function inventory:GetInventorySize()
    return self.inventorySize
end
function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end

function inventory:IsEquipment(slot)
    for index, value in ipairs(self.Equipment) do
        if value == slot then
            return true
        end
    end
    return false
end

function inventory:FindFreeSlot(slotfilter)
    local slots = self:GetSlots()
    for i = 1, #slots, 1 do
        local currentslot = slots[i]
        if currentslot then
            if currentslot:IsFree() then
                if slotfilter then
                    if currentslot:isAcceptingType(slotfilter) then
                        return currentslot
                    end
                else
                    return currentslot
                end
            end
        end
    end
end
function inventory:AddItem(itemData)
    local newItem = itemConstructor.New(itemData)
    local FreeSlot = self:FindFreeSlot()
    if not (FreeSlot and newItem) then
        return
    end
    FreeSlot:AddItem(newItem)
    TriggerEvent(self.changedEvent, self)
    if self:IsEquipment(FreeSlot) then
        TriggerEvent(self.equipmentChangedEvent, self)
    end
end
function inventory:SwapSlot(fromSlot, toSlot)
    local slotA = self:GetSlot(fromSlot)
    local slotB = self:GetSlot(toSlot)
    if not (slotA and slotB) then
        return
    end

    local itemA = slotA:GetContent()
    local itemB = slotB:GetContent()

    if slotA:isAcceptingType(itemB.category) and slotB:isAcceptingType(itemA.category) then
        return
    end

    slotA:RemoveItem()
    slotB:RemoveItem()
    slotA:AddItem(itemB)
    slotA:AddItem(itemA)

    TriggerEvent(self.changedEvent, self)

    if self:IsEquipment(slotA) or self:IsEquipment(slotB) then
        TriggerEvent(self.equipmentChangedEvent, self)
    end
end
function inventory:RemoveItem(slotIndex)
    local slot = self.slots[slotIndex]
    if slot then
        slot:RemoveItem()
        TriggerEvent(self.changedEvent, self)
        if self:IsEquipment(slot) then
            TriggerEvent(self.equipmentChangedEvent, self)
        end
    end
end
function inventory:GetSlots()
    return self.slots
end
function inventory:GetSlot(index)
    local slots = self:GetSlots()
    assert(index <= self.inventorySize and index > 0)
    return slots[index]
end

local inventoryConstuctor = {}

function inventoryConstuctor.NewInventory(inventorySize)
    local newInventory = setmetatable({}, {__index = inventory})

    return newInventory
end

_G['Inventory.Constructor'] = inventoryConstuctor
