local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local ItemConstruct = _G['Item.Constructor']
local Slot = {
    contents = nil
}
Task.Wait()
local slotTypes = _G['Equipment.Slots']
print( _G['Equipment.Slots'])
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

function Slot:RemoveItem()
    self.contents = nil
end

local component =
    setmetatable(
    {
        tableElements = {
            'items',
            'equipped',
            'slots',
            'currencies'
        },
        eventElements = {
            'changedEvent'
        }
    },
    {__index = COMPONET_DATATYPE}
)
component.id = 'Inventory'
component.inventorySize = 20
function component:GetInventorySize()
    return self.inventorySize
end
function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end
function component:CalculateInventory()
    local TotalStats = {}
    for key, slot in ipairs(self.equipped) do
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
end
function component:SwapSlot(fromSlot, toSlot)
    local slotA = self:GetSlot(fromSlot)
    local slotB = self:GetSlot(toSlot)
    if not (slotA and slotB) then
        return
    end 
    local itemA = slotA.contents
    local itemB = slotB.contents
    slotA:RemoveItem()
    slotB:RemoveItem()
    slotA:AddItem(itemB)
    slotA:AddItem(itemA)
    TriggerEvent(self.changedEvent, self)
end
function component:RemoveItem(slotIndex)
    local slot = self.slots[slotIndex]
    if slot then
        Slot:RemoveItem()
        TriggerEvent(self.changedEvent, self)
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
end
function component:Deserialize(data)
end
function component:Init()
    COMPONET_DATATYPE.Init(self)
    
    for i = 1, self.inventorySize, 1 do
        self.slots[i] = setmetatable({}, {__index = Slot})
    end
end
return component
