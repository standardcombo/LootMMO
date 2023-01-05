local EquipApi        = _G["Character.EquipAPI"]
local equipmentSlots  = _G['Equipment.Slots']
local items           = _G.Items
local equipmentStack  = _G.EquipmentStack
local defaultEquipment = items.GetDefinition("Punch")
local Weapons         = items.GetDefinitionsForCategory("weapon")
local KWeapons        = {}
for index, value in ipairs(Weapons) do
	KWeapons[value.id] = value
end

local function StatsUpdated(character, inventory, stats)
	local newStats = inventory:CalculateInventory()
	stats:SetStats(newStats)
	stats:SetTempStats(newStats)
end

local function InventoryUpdated(inv, i)
	if not inv.owner then
		return
	end
	local owner = inv.owner
	local stackindex
	local socket = "right_prop"
	local column
	for _, equipment in ipairs(owner:GetEquipment()) do
		if equipment.socket == "right_prop" then
			for _, Item in ipairs(Weapons) do
				local templateSplit = CoreString.Split(Item["equipmentHollow"] or "", ":")
				local templateSplit2 = CoreString.Split(Item["equipment"] or "", ":")
				if equipment.sourceTemplateId == templateSplit then
					column = "equipmentHollow"
				end

				if equipment.sourceTemplateId == templateSplit2 then
					column = "equipment"
				end

				if column then
					for key, stackdex in pairs(equipmentStack.GetStackPlayer(owner, socket)) do
						if stackdex.value == equipment then
							stackindex = stackdex
						end
					end
					equipment:Destroy()
					break
				end
			end
		end
		if column then break end
	end

	local item = inv:GetItem(i)
	if item and KWeapons[item.name] then
		local equipItem = items.GetDefinition(item.name)
		if equipItem then
			local newItem =
			World.SpawnAsset(equipItem[column or "equipmentHollow"], { networkContext = NetworkContextType.NETWORKED })
			assert(newItem, item.name .. " should of spawned")
			newItem:Equip(owner)
			if stackindex then
				stackindex.value = newItem
			end
		end
	else
		if defaultEquipment then
			local newItem =
			World.SpawnAsset(defaultEquipment[column or "equipmentHollow"], { networkContext = NetworkContextType.NETWORKED })
			assert(newItem, defaultEquipment.id .. " should of spawned")
			newItem:Equip(owner)
			if stackindex then
				stackindex.value = newItem
			end
		end
	end

	if socket then
		equipmentStack.UpdateStack(owner, socket)
	end

end

local function playerEquipped(character, player)
	local inventory = character:GetComponent("Inventory")
	local stats = character:GetComponent("Stats")

	local _inventory = inventory:GetInventory()
	_inventory.changedEvent:Connect(
		function(inv, i)
			if i == 1 then
				InventoryUpdated(inv, i)
			end
			if i <= #equipmentSlots.GetSlots() then
				StatsUpdated(character, inventory, stats)
			end
		end
	)
end

EquipApi.playerEquippedEvent:Connect(playerEquipped)
