local LOOT_INVENTORY_SPAWN = script:GetCustomProperty("Loot_Inventory_Spawn")

local SpawnedInventories = {}

local function AddInventory(curInventory)
	SpawnedInventories[curInventory.id] = curInventory
end

local function RemoveInventory(curInventory)
	SpawnedInventories[curInventory.id] = nil
end

local inventory = {
	owner = nil,
	slotCount = nil,
	emptySlotCount = nil,
	occupiedSlotCount = nil,
	isValid = true,
	ownerChangedEvent = nil,
	resizedEvent = nil,
	changedEvent = nil,
	itemPropertyChangedEvent = nil,
}

function inventory:Destroy()
	if Environment.IsServer() then
		if Object.IsValid(self._inventory) then
			self._inventory:Destroy()
		end
	end
	RemoveInventory(self)
	self.isValid = false
end

function inventory:GetId()
	return self._inventory.id
end

function inventory:Assign(player)
	self._inventory:Assign(player)
	self.owner = player
end

function inventory:Unassign()
	self._inventory:Unassign()
	self.owner = nil
end

function inventory:GetItem(slot)
	return self._inventory:GetItem(slot)
end

function inventory:GetItems(parameters)
	return self._inventory:GetItems(parameters)
end

function inventory:ClearItems()
	return self._inventory:ClearItems()
end

function inventory:SortItems()
	return self._inventory:SortItems()
end

function inventory:ConsolidateItems()
	return self._inventory:ConsolidateItems()
end

function inventory:CanResize(newSize)
	return self._inventory:CanResize(newSize)
end

function inventory:Resize(newSize)
	self._inventory:Resize(newSize)
	self.slotCount = self._inventory.slotCount
end

function inventory:AddItem(itemAssetId, parameters)
	local mightReturn = self._inventory:AddItem(itemAssetId, parameters)
	self.emptySlotCount = self._inventory.emptySlotCount
	return mightReturn
end

function inventory:CanPickUpItem(item, parameters)
	return self._inventory:CanPickUpItem(item, parameters)
end

function inventory:PickUpItem(item, parameters)
	return self._inventory:PickUpItem(item, parameters)
end

function inventory:CanMoveFromSlot(fromSlot, toSlot, parameters)
	return self._inventory:CanMoveFromSlot(fromSlot, toSlot, parameters)
end

function inventory:MoveFromSlot(fromSlot, toSlot, parameters)
	return self._inventory:MoveFromSlot(fromSlot, toSlot, parameters)
end

function inventory:CanRemoveItem(itemAssetId, parameters)
	return self._inventory:CanRemoveItem(itemAssetId, parameters)
end

function inventory:RemoveItem(itemAssetId, parameters)
	return self._inventory:RemoveItem(itemAssetId, parameters)
end

function inventory:CanRemoveFromSlot(slot, parameters)
	return self._inventory:CanRemoveFromSlot(slot, parameters)
end

function inventory:RemoveFromSlot(slot, parameters)
	return self._inventory:RemoveFromSlot(slot, parameters)
end

function inventory:CanDropItem(itemAssetId, parameters)
	return self._inventory:CanDropItem(itemAssetId, parameters)
end

function inventory:DropItem(itemAssetId, parameters)
	return self._inventory:DropItem(itemAssetId, parameters)
end

function inventory:CanDropFromSlot(slot, parameters)
	return self._inventory:CanDropFromSlot(slot, parameters)
end

function inventory:DropFromSlot(slot, parameters)
	return self._inventory:DropFromSlot(slot, parameters)
end

function inventory:CanGiveItem(itemAssetId, recipient, parameters)
	return self._inventory:CanGiveItem(itemAssetId, recipient, parameters)
end

function inventory:GiveItem(itemAssetId, recipient, parameters)
	return self._inventory:GiveItem(itemAssetId, recipient, parameters)
end

function inventory:CanGiveFromSlot(slot, recipient, parameters)
	return self._inventory:CanGiveFromSlot(slot, recipient, parameters)
end

function inventory:GiveFromSlot(slot, recipient, parameters)
	return self._inventory:GiveFromSlot(slot, recipient, parameters)
end

local inventoryConstuctor = {}

function inventoryConstuctor.NewInventory(Inventory)
	local newInventory = setmetatable({}, { __index = inventory })
	if not Inventory then
		if Environment.IsServer() then
			Inventory = World.SpawnAsset(LOOT_INVENTORY_SPAWN, { networkContext = NetworkContextType.NETWORKED })
		end
		if Environment.IsClient() then
			assert("Inventory needed")
			return
		end
	end
	newInventory._inventory = Inventory
	newInventory.id = newInventory._inventory.id
	newInventory.slotCount = newInventory._inventory.slotCount
	newInventory._inventory.destroyEvent:Connect(
		function()
			newInventory:Destroy()
		end
	)
	newInventory.ownerChangedEvent = newInventory._inventory.ownerChangedEvent
	newInventory.resizedEvent = newInventory._inventory.resizedEvent
	newInventory.changedEvent = newInventory._inventory.changedEvent
	newInventory.itemPropertyChangedEvent = newInventory._inventory.itemPropertyChangedEvent
	AddInventory(newInventory)
	return newInventory
end

function inventoryConstuctor.FindInventoryFromInventory(inv)
	for index, value in pairs(SpawnedInventories) do
		if value._inventory == inv then
			return value
		end
	end
end

function inventoryConstuctor.WaitForInventory(id)
	while not SpawnedInventories[id] do
		Task.Wait()
	end
	return SpawnedInventories[id]
end

_G["Inventory.Constructor"] = inventoryConstuctor


function Tick()
	local Inventories = World.FindObjectsByType("Inventory")
	for key, newInventory in pairs(Inventories) do
		if not inventoryConstuctor.FindInventoryFromInventory(newInventory) then
			inventoryConstuctor.NewInventory(newInventory)
		end
	end

	Task.Wait(.5)
end
