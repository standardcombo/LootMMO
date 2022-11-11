local LOOT_ABILITY_EQUIPMENT = _G['Ability.Equipment']
local POTIONAPI = _G["Potions.Equipment"]
local EquipApi = {}

local EQUIPMENT_CONTAINER = script:GetCustomProperty("EquipmentContainer")

function EquipApi.EquipEquipment(player, equipmentName, slot)
	slot = slot or ''
	local address = LOOT_ABILITY_EQUIPMENT.GetEquipment(equipmentName) or POTIONAPI.GetEquipment(equipmentName)
	if not address then
		return
	end
	
	if not player:GetPrivateNetworkedData("equipmentContainer") then
		player:SetPrivateNetworkedData("equipmentContainer", World.SpawnAsset(EQUIPMENT_CONTAINER, { networkContext = NetworkContextType.NETWORKED }))
	end
	
	player:GetPrivateNetworkedData("equipmentContainer"):AttachToPlayer(player, "root")
	
	local newEquipment = World.SpawnAsset(address, { networkContext = NetworkContextType.NETWORKED })
	if not newEquipment then
		warn(equipmentName .. ' not found.')
		return
	end
	newEquipment.name = equipmentName
	newEquipment:SetCustomProperty('AbilityBinding', slot)
	newEquipment:Equip(player)

	newEquipment.parent = player:GetPrivateNetworkedData("equipmentContainer")
	
	return newEquipment
end

function OnPlayerLeft(player)
	if player:GetPrivateNetworkedData("equipmentContainer") then
		player:GetPrivateNetworkedData("equipmentContainer"):Destroy()
	end
end

_G['Equipper'] = EquipApi

Events.Connect('Equipper_Equip', EquipApi.EquipEquipment)
Game.playerLeftEvent:Connect(OnPlayerLeft)
