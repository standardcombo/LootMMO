--[[
	Equipper Client
	v1.1.0 - 2022/11/11
	by: blaking707, Luapi, CommanderFoo
]]

local LOOT_ABILITY_EQUIPMENT = _G['Ability.Equipment']
local POTIONAPI = _G["Potions.Equipment"]
local EquipApi = {}

local EQUIPMENT_CONTAINER = script:GetCustomProperty("EquipmentContainer")

function OnPlayerJoined(player)
	if not Object.IsValid(player:GetPrivateNetworkedData("equipmentContainer")) then
		player:SetPrivateNetworkedData("equipmentContainer", World.SpawnAsset(EQUIPMENT_CONTAINER, { networkContext = NetworkContextType.NETWORKED }))
	end
	while not Object.IsValid(player:GetPrivateNetworkedData("equipmentContainer")) do
		Task.Wait()
	end
	player:GetPrivateNetworkedData("equipmentContainer"):AttachToPlayer(player, "root")
end

function EquipApi.EquipEquipment(player, equipmentName, slot)
	slot = slot or ''
	local address = LOOT_ABILITY_EQUIPMENT.GetEquipment(equipmentName) or POTIONAPI.GetEquipment(equipmentName)
	if not address then
		return
	end
	
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

Game.playerJoinedEvent:Connect(OnPlayerJoined)

_G['Equipper'] = EquipApi

Events.Connect('Equipper_Equip', EquipApi.EquipEquipment)