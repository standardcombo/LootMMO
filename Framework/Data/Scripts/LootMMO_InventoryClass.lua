local inventory = _G["Inventory.Constructor"]
local slotTypes = _G["Equipment.Slots"]
local resourceSlotTypes = _G["Resource.Slots"]
local Materials = _G["Items.Materials"]
local Items = _G.Items
local Equipment = slotTypes.GetSlots()
local Equipmentkeys = slotTypes.GetKeySlots()
local Resource = resourceSlotTypes.GetSlots()
local Resourcekeys = resourceSlotTypes.GetKeySlots()

local lootmmoInv = {}
local Slot = {}

local function FindElementFromName(itemname)
	return Materials.GetDefinition(itemname, true) or Items.GetDefinition(itemname, true)
end

local function FindAssetIdFromId(itemname)
	local itemdata = FindElementFromName(itemname)
	if itemdata then
		return itemdata["itemAsset"]
	end
end

local function GetItemDataFromItem(item)
	if not item then return end
	return FindElementFromName(item.name)
end

local function GetCategoryFromItemData(itemdata)
	return (itemdata or {})["category"]
end

local function FindItemFromAssetId(assetid)
	for key, entry in pairs(Items.GetDefinitions()) do
		local templateSplit = CoreString.Split(entry["itemAsset"] or '', ':')
		if templateSplit == assetid then
			return entry
		end
	end
	for key, entry in pairs(Materials.GetDefinitions()) do
		local templateSplit = CoreString.Split(entry["itemAsset"] or '', ':')
		if templateSplit == assetid then
			return entry
		end
	end
end


function lootmmoInv:GetItemCount(itemId)
	local items
	local itemAssetId = FindAssetIdFromId(itemId)
	if itemAssetId then
		items = self:GetItems({ itemAssetId = itemAssetId })
	else
		items = self:GetItems({ itemAssetId = itemId })
	end
	local count = 0
	for key, value in pairs(items) do
		count = count + value.count
	end
	return count
end

--harvesting system call, each tool should be unique item
function lootmmoInv:GetToolGreatness(itemId)
	local items
	local itemAssetId = FindAssetIdFromId(itemId)
	if itemAssetId then
		items = self:GetItems({ itemAssetId = itemAssetId })
	else
		items = self:GetItems({ itemAssetId = itemId })
	end
	local highestGreatness = nil
	for key, value in pairs(items) do
		local currGreatness = value:GetCustomProperty("Greatness")
		if highestGreatness == nil
			or highestGreatness < currGreatness then
				highestGreatness = currGreatness
		end
	end
	return highestGreatness
end

function Slot:isAcceptingType(type,name)
	type = type or ""
	if not self then
		return true
	end
	if self.type == ("any") or not self.type then
		return true
	end
	local acceptingTypes
	acceptingTypes = resourceSlotTypes.GetAcceptingSlots(self.type)
	for index, value in ipairs(acceptingTypes) do
		if value == name then
			return true
		end
	end
	acceptingTypes = slotTypes.GetAcceptingSlots(self.type)
	for index, value in ipairs(acceptingTypes) do
		if value == type then
			return true
		end
	end
	return false
end

function Slot:CanAddItem(item) --Need to add a check if slot already contains max amount of items
	if not item then return true end
	local itemdata = FindItemFromAssetId(item)
	if not itemdata then return Slot.isAcceptingType(self, nil) end
	local category = GetCategoryFromItemData(itemdata)
	return Slot.isAcceptingType(self, category, itemdata.id)
end

local function FindFreeSlot(inventory, item)
	local split = CoreString.Split(item, ':')
	local itemdata = FindItemFromAssetId(split)
	local category = GetCategoryFromItemData(itemdata)
	if category == "material" then return end
	for i = 1, inventory.slotCount, 1 do
		local data = inventory.slotData[i] or {}
		data.index = i
		if Slot.CanAddItem(data, item) and inventory._inventory:CanAddItem(item, { slot = i }) then
			return i
		end
	end
end

local function FindFreeMaterialSlot(inventory,item)
	local split = CoreString.Split(item, ':')
	local itemdata = FindItemFromAssetId(split)
	local category = GetCategoryFromItemData(itemdata)
	if category ~= "material" then return end
	local offset = 54
	for i = offset, inventory.slotCount, 1 do
		local data = inventory.slotData[i] or {}
		data.index = i
		if Slot.CanAddItem(data, split) and inventory._inventory:CanAddItem(item, { slot = i }) then
			return i
		end
	end
end

function lootmmoInv:MoveFromSlot(fromSlot, toSlot, parameters)
	if not (fromSlot or toSlot) then return end
	
	local fromSlotItem = self:GetItem(fromSlot) or {}
	local toSlotItem = self:GetItem(toSlot) or {}

	local toSlotAccept = Slot.CanAddItem(self.slotData[toSlot] or {}, fromSlotItem.itemAssetId)
	local fromSlotAccept = Slot.CanAddItem(self.slotData[fromSlot] or {}, toSlotItem.itemAssetId)

	if fromSlotAccept and toSlotAccept then
		if Environment.IsClient() then
			Events.BroadcastToServer('inventory.move', fromSlot, toSlot)
			return
		end
		self._inventory:MoveFromSlot(fromSlot, toSlot, parameters)

		-- Detects if a Loot item has been equipped, for the FTUE quest "Equip"
		if toSlot >= 1 and toSlot <= 8
		and fromSlotItem and fromSlotItem.GetCustomProperty 
		then
			local greatness = fromSlotItem:GetCustomProperty("Greatness")
			if greatness then
				Events.Broadcast("Inventory.Equipped", self._inventory.owner, fromSlotItem.name)
			end
		end
	end
end

function lootmmoInv:AddItem(item, properties)
	if not item then return false end
	local qtyToAdd = properties.count
	local split = CoreString.Split(item, ':')
	local itemdata = FindItemFromAssetId(split)
	if not itemdata then return false end
	properties = properties or {}
	properties.slot = properties.slot or FindFreeMaterialSlot(self, item) or FindFreeSlot(self, item)
	local category = GetCategoryFromItemData(itemdata)
	if properties.slot then
		if category == "material" then
			local maxStackCount = itemdata.maxStackCount or 999
			if self:GetItemCount(itemdata.id) < maxStackCount then -- If the number of items on hand is less than the max stack size
				if (qtyToAdd + self:GetItemCount(itemdata.id)) > maxStackCount then -- If the number of items to add is greater than the max stack size
					properties.count = maxStackCount - self:GetItemCount(itemdata.id) -- Change the amount to add to the remainder
				end
			else
				return false
			end
		end
	else
		return false
	end
	local canAdd = Slot.CanAddItem(self.slotData[properties.slot] or {}, split) and self._inventory:CanAddItem(split, properties)
	if canAdd then
		return self._inventory:AddItem(item, properties)
	else
		return false
	end
end

function lootmmoInv:PickUpItem(item, properties)
	properties = properties or {}
	properties.slot = properties.slot or FindFreeSlot(self, item.itemAssetId)
	if properties.slot then
		properties.customProperties = item:GetCustomProperties()
		if self:AddItem(item.itemAssetId, properties) then
			item:Destroy()
		end
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

function lootmmoInv:SetResourceSlotType(slot, type)
	if not Resourcekeys[type] then
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

function lootmmoInv:CanAddItem(item, properties)
	properties = properties or {}
	properties.slot = properties.slot or FindFreeSlot(self, item)
	local canAdd = Slot.CanAddItem(self.slotData[properties.slot] or {}, item) and
		self._inventory:CanAddItem(item, properties)
	return canAdd
end

function lootmmoInv:HasRequiredItems(elementTables)
	for key, value in pairs(elementTables) do
		if self:GetItemCount(key) < (value or 0) then
			return false
		end
	end
	return true
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
