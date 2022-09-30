local COMPONET_DATATYPE = require(script:GetCustomProperty("ComponetDatatype"))
local LOOTMMOINV = _G["Inventory.LootMMO"]
local InventoryConstructor = _G["Inventory.Constructor"]
local Equipment = _G["Equipment.Slots"].GetSlots()

local itemconstruct = _G["Item.Constructor"]
local component =
setmetatable(
	{
		tableElements = {
			"items",
			"equipment",
			"slots",
			"resources"
		},
		eventElements = {
			"changedEvent",
			"equipmentChangedEvent",
			"resourceChangedEvent"
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = "Inventory"
component.inventorySize = 45 + 8

local function setupInv(self, inventory)
	self._inventory = LOOTMMOINV.NewInventory(inventory)
	self.invId = self._inventory:GetId()

	for i = 1, #Equipment, 1 do
		self._inventory:SetSlotType(i, Equipment[i])
	end
end

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

function component:GetInventory()
	return self._inventory
end

function component:Destroy()
	COMPONET_DATATYPE.Destroy(self)

	if Environment.IsServer() then
		if self:GetInventory() then
			self:GetInventory():Destroy()
		end
	end
end

function component:CalculateInventory()
	local TotalStats = {}
	local inv = self:GetInventory()

	for i = 1, #Equipment do
		local invitem = inv:GetItem(i)
		if invitem then

			local item = itemconstruct.New({
				item = invitem.name,
				order = invitem:GetCustomProperty("Order"),
				greatness = invitem:GetCustomProperty("Greatness")
			})

			local calculation = item:CalculateStats()
			for key, value in pairs(calculation) do
				if not TotalStats[key] then
					TotalStats[key] = 0
				end
				TotalStats[key] = TotalStats[key] + value
			end
		end
	end
	TotalStats["H"] = (TotalStats["H"] or 0) + 100
	return TotalStats
end

function component:Serialize()
	local data = {}
	data.resources = {}
	data.inventory = {}
	for key, value in pairs(self.resources) do
		data.resources[key] = value
	end
	local inv = self:GetInventory()
	for i = 1, inv.slotCount do
		local item = inv:GetItem(i)
		if item then
			local save = true
			--Need To check if player owns a NFT
			if item:GetCustomProperty("IsBag") then
				save = false
			end
			if save then
				local slotdata = { index = i, count = item.count, asset = item.itemAssetId,
					customProperties = item:GetCustomProperties() }
				table.insert(data.inventory, slotdata)
			end
		end
	end
	return data
end

function component:Deserialize(data)
	data = data or {}
	if Environment.IsClient() then
		local inventoryid = data.invId
		if inventoryid then
			while not World.FindObjectById(inventoryid) do
				Task.Wait()

			end
			local inv = World.FindObjectById(inventoryid)
			if inv then
				setupInv(self, inv)
			end
		end
	end
	local inv = self:GetInventory()
	for index, value in ipairs(data.inventory or {}) do
		inv:AddItem(value.asset, { count = value.count, customProperties = value.customProperties, slot = value.index })
	end
	for key, value in pairs(data.resources or {}) do
		self.resources[key] = value
	end
end

function component:Init()
	COMPONET_DATATYPE.Init(self)
	if Environment.IsServer() then
		setupInv(self)
		self._inventory:Resize(component.inventorySize)
	end
end

function component:AddParent(parent)
	COMPONET_DATATYPE.AddParent(self, parent)
	if Environment.IsServer() then
		parent.setOwnerEvent:Connect(
			function(character, player)
				self._inventory:Assign(player)
			end
		)
	end
end

return component
