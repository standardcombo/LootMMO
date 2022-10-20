
local STORAGE_KEY = script:GetCustomProperty("StorageKey")

function OnClearEquipment(player)
	for _,equipment in ipairs(player:GetEquipment()) do
		
		_G.EquipmentStack.Unequip(player, equipment)
		if Object.IsValid(equipment) then
			equipment:Destroy()
		end
	end
end

function OnEquip(player, itemId)
	local def = _G.Items.GetDefinition(itemId)
	local newEquipment
	if def then
		if def.equipmentHollow then
			newEquipment = World.SpawnAsset(def.equipmentHollow)
			
		elseif def.equipment then
			newEquipment = World.SpawnAsset(def.equipment)
		end
		
		if newEquipment then
			_G.EquipmentStack.Equip(player, newEquipment)
			
			SaveEquipmentStorage(player, itemId)
		end
	end
end

Events.ConnectForPlayer("ClearEquipment", OnClearEquipment)
Events.ConnectForPlayer("Equip", OnEquip)


function SaveEquipmentStorage(player, itemId)
	local data = Storage.GetSharedPlayerData(STORAGE_KEY, player)
	if not data then
		data = {}
	end
	data.equipment = {
		weapon = itemId
	}
	Storage.SetSharedPlayerData(STORAGE_KEY, player, data)
end

