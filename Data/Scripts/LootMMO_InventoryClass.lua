local inventory = _G["Inventory.Constructor"]
local slotTypes = _G["Equipment.Slots"]
local Materials = _G["Items.Materials"]
local Items = _G.Items
local Equipment = slotTypes.GetSlots()
local Equipmentkeys = slotTypes.GetKeySlots()

local lootmmoInv = {}
local Slot = {}


local function GetItemDataFromItem(item)
	if not item then return end
	return Materials.GetDefinition(item.name) or Items.GetDefinition(item.name)
end

local function GetCategoryFromItemData(itemdata)
	return (itemdata or {})["category"]
end

function Slot:isAcceptingType(type)
	if not self then
		return true
	end
	if self.type == ("any") or not self.type then
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
	return #self.contents == 0
end

function Slot:CanAddItem(item)
	if not item then return true end
	local itemdata = GetItemDataFromItem(item)
	local category = GetCategoryFromItemData(itemdata)
	if not category then return true end
	return Slot.isAcceptingType(self, category)
end

local function FindFreeSlot(inventory, item)
	for i = 1, inventory.slotCount, 1 do
		local data = inventory.slotData[i] or {}
		data.index = i
		if Slot.CanAddItem(data, item) then
			return i
		end
	end
end

function lootmmoInv:MoveFromSlot(fromSlot, toSlot, parameters)
	if not (fromSlot or toSlot) then return end
	local toSlotAccept = Slot.CanAddItem(self.slotData[toSlot] or {}, self:GetItem(fromSlot))
	local fromSlotAccept = Slot.CanAddItem(self.slotData[fromSlot] or {}, self:GetItem(toSlot))
	if fromSlotAccept and toSlotAccept then
		if Environment.IsClient() then
			Events.BroadcastToServer('inventory.move', fromSlot, toSlot)
			return
		end
		self._inventory:MoveFromSlot(fromSlot, toSlot, parameters)
	end
end

function lootmmoInv:PickUpItem(item, properties)
	local slot = FindFreeSlot(self, item)
	if slot then
		local customProperties = item:GetCustomProperties()
		self:AddItem(item.itemAssetId, { customProperties = customProperties, slot = slot })
		item:Destroy()
	end
end

function lootmmoInv:SetSlotType(slot, type)
	if not Equipmentkeys[type] then
		self.slotData[slot] = self.slotData[slot] or {}
		self.slotData[slot].type = nil
		return
	end
	if not type or not slot then return end
	self.slotData[slot] = self.slotData[slot] or {}
	self.slotData[slot].type = type
end

function lootmmoInv:GetSlotType(slot)
	if not slot then return "any" end
	return self.slotData[slot].type or "any"
end

local constructor = {}

function constructor.NewInventory(Inventory)
	local newinv = inventory.NewInventory(Inventory)
	newinv.slotData = {}
	for key, value in pairs(lootmmoInv) do
		newinv[key] = value
	end
	return newinv
end

_G["Inventory.LootMMO"] = constructor
