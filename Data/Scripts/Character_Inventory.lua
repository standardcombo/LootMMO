local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local Slot = {
    contents = nil
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

function Slot:IsFree()
    return self.contents == nil
end

function Slot:AssignItem(Item)
    if Item then
        self.contents = Item
    end
end
function Slot:SetType(type)
    self.type = type or 'any'
end
function Slot:RemoveItem()
    self.contents = nil
end
function Slot:GetContent()
    return self.contents
end
local component =
    setmetatable(
    {
        tableElements = {
            'items',
            'equipment',
            'slots',
            'resources'
        },
        eventElements = {
            'changedEvent',
            'equipmentChangedEvent',
            'resourceChangedEvent'
        }
    },
    {__index = COMPONET_DATATYPE}
)
component.id = 'Inventory'
component.inventorySize = 40

function component:AddResource(key, value)
    local prevValue = self:GetResource(key)
    prevValue = prevValue + (value or 0)
    self:SetResource(key, prevValue)
end

function component:GetResource(key)
    return (self.resources[key]) or 0
end

function component:SetResource(key, value)
    local oldValue = self:GetResource(key)
    self.resources[key] = value
    if oldValue ~= value then
        TriggerEvent(self.resourceChangedEvent, self, key, value)
    end
end
function component:GetResourceKeys()
    local keys = {}
    for key, value in pairs(self.resources) do
        table.insert(keys, key)
    end
    return keys
end

function component:GetInventorySize()
    return self.inventorySize
end
function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end

function component:IsEquipment(slot)
    for index, value in ipairs(self.Equipment) do
        if value == slot then
            return true
        end
    end
    return false
end

function component:CalculateInventory()
    local TotalStats = {}
    for key, slot in ipairs(self.equipment) do
        if slot and slot.contents then
            local item = slot.contents
            if item then
                local calculation = item:CalculateStats()
                for key, value in pairs(calculation) do
                    if not TotalStats[key] then
                        TotalStats[key] = 0
                    end
                    TotalStats[key] = TotalStats[key] + value
                end
            end
        end
    end
    return TotalStats
end
function component:FindFreeSlot(slotfilter)
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
function component:AddItem(itemData)
    local newItem = ItemConstruct.New(itemData)
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
function component:SwapSlot(fromSlot, toSlot)
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
function component:RemoveItem(slotIndex)
    local slot = self.slots[slotIndex]
    if slot then
        slot:RemoveItem()
        TriggerEvent(self.changedEvent, self)
        if self:IsEquipment(slot) then
            TriggerEvent(self.equipmentChangedEvent, self)
        end
    end
end
function component:GetSlots()
    return self.slots
end
function component:GetSlot(index)
    local slots = self:GetSlots()
    assert(index <= self.inventorySize and index > 0)
    return slots[index]
end
function component:Serialize()
    local data = {}
    data.resources = {}
    data.inventory = {}
    for key, value in pairs(self.resources) do
        data.resources[key] = value
    end
    for key, value in ipairs(self.slots) do
        local item = value:GetContent()
        if item and not item.isBag then
            data.inventory[key] = value:Serialize()
        end
    end
    return data
end
function component:Deserialize(data)
    data = data or {}
    for index, value in ipairs(data.inventory or {}) do
        if value then
            local newItem = itemConstructor.New(value)
            local slot = self:GetSlot(index)
            if slot then
                slot:AddItem(newItem)
            end
        end
    end
    for key, value in pairs(data.resources or {}) do
        self.resources[key] = value
    end
end
function component:Init()
    COMPONET_DATATYPE.Init(self)

    for i = 1, self.inventorySize, 1 do
        self.slots[i] = setmetatable({}, {__index = Slot})
    end

    for i = 1, #Equipment, 1 do
        table.insert(self.equipment, self.slots[i])
        self.slots[i]:SetType(Equipment[i]['Name'])
    end
end
return component
