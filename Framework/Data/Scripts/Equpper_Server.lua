--[[
	Equipper Client
	v1.1.0 - 2022/11/11
	by: blaking707, Luapi, CommanderFoo
]]

local LOOT_ABILITY_EQUIPMENT = _G['Ability.Equipment']
local POTIONAPI = _G["Potions.Equipment"]

local EquipApi = {}
_G['Equipper'] = EquipApi

local EQUIPMENT_CONTAINER = script:GetCustomProperty("EquipmentContainer")
_G.PlayerEquipmentContainers = {}

function OnPlayerJoined(player)
	_G.PlayerEquipmentContainers[player] = World.SpawnAsset(EQUIPMENT_CONTAINER, { networkContext = NetworkContextType.NETWORKED })
	while not Object.IsValid(_G.PlayerEquipmentContainers[player]) do
		Task.Wait()
	end
	_G.PlayerEquipmentContainers[player]:AttachToPlayer(player, "root")
	player:SetPrivateNetworkedData("equipmentContainer", _G.PlayerEquipmentContainers[player])
	--[[if not Object.IsValid(player:GetPrivateNetworkedData("equipmentContainer")) then
		player:SetPrivateNetworkedData("equipmentContainer", World.SpawnAsset(EQUIPMENT_CONTAINER, { networkContext = NetworkContextType.NETWORKED }))
	end
	while not Object.IsValid(player:GetPrivateNetworkedData("equipmentContainer")) do
		Task.Wait()
	end
	player:GetPrivateNetworkedData("equipmentContainer"):AttachToPlayer(player, "root")]]
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

	newEquipment.parent = _G.PlayerEquipmentContainers[player]
	
	return newEquipment
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(function(player) _G.PlayerEquipmentContainers[player] = nil end)

Events.Connect('Equipper_Equip', EquipApi.EquipEquipment)