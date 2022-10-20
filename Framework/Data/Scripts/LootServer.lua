local STORAGE_KEY_UTIL = require(script:GetCustomProperty('StorageKeyUtil'))
local PROGRESS_KEY = STORAGE_KEY_UTIL.GetKey('PlayerProgress')
local LOOT_BAG_PARSER = require(script:GetCustomProperty('LootBagParser'))

function OnClearEquipment(player)
    for _, equipment in ipairs(player:GetEquipment()) do
        _G.EquipmentStack.Unequip(player, equipment)
        if Object.IsValid(equipment) then
            equipment:Destroy()
        end
    end
end

function CheckPlayerHasBag(player, SerizedBag)
    --To do make verification
    return true
end

function CheckIsDailyBag(SerizedBag)
	if _G.SelectedLootbags then
		for i = 1, #_G.SelectedLootbags do
			if _G.SelectedLootbags[i] == SerizedBag then
				return true
			end
		end
	end
	return false
end

function IsVerified(player, SerizedBag)
    return CheckIsDailyBag(SerizedBag) or CheckPlayerHasBag(player, SerizedBag)
end

function EquipBag(player, SerizedBag)
    if not IsVerified(player, SerizedBag) then
        return
    end
    local bag = LOOT_BAG_PARSER.Parse(SerizedBag)
    if not bag then
        return
    end
    player.serverUserData.currentBag = bag
    for key, item in pairs(bag.items) do
        local def = _G.Items.GetDefinition(item.name)
        if def.equipmentHollow then
            local newEquipment = World.SpawnAsset(def.equipmentHollow)
            _G.EquipmentStack.Equip(player, newEquipment)
        elseif def.equipment then
            local newEquipment = World.SpawnAsset(def.equipment)
            _G.EquipmentStack.Equip(player, newEquipment)
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

Events.ConnectForPlayer('ClearEquipment', OnClearEquipment)
Events.ConnectForPlayer('Equip', OnEquip)
Events.ConnectForPlayer('EquipBag', EquipBag)

function SaveEquipmentStorage(player, itemId)
    local data = Storage.GetSharedPlayerData(PROGRESS_KEY, player)
    if not data then
        data = {}
    end
    data.equipment = {
        weapon = itemId
    }
    Storage.SetSharedPlayerData(PROGRESS_KEY, player, data)
end
