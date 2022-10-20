
local STORAGE_KEY = script:GetCustomProperty("StorageKey")
local FALLBACK_WEAPON = script:GetCustomProperty("FallbackWeapon")

local isReady = false

local function ActionPressed(player, action)
	if(action == "Toggle Fly Mode") then
		if(player.isFlying) then
			player:ActivateWalking()
		else
			player:ActivateFlying()
		end
	end
end

local function OnPlayerJoined(player)
	if isReady then
		Task.Wait(1)
		if Object.IsValid(player) then
			LoadEquipmentStorage(player)
			Events.BroadcastToPlayer(player, "HideUI")
		end
	else
		player:Despawn()
	end
end

local function SpawnPlayers()
	isReady = true
	
	Task.Wait(1)
	
	for _, player in ipairs(Game.GetPlayers()) do
		if Object.IsValid(player) then
			player:Spawn()
			LoadEquipmentStorage(player)
		end
	end
	Events.BroadcastToAllPlayers("HideUI")
end

--Input.actionPressedEvent:Connect(ActionPressed)
Events.Connect("SpawnPlayers", SpawnPlayers)
Game.playerJoinedEvent:Connect(OnPlayerJoined)


function LoadEquipmentStorage(player)
	local weaponAsset
	local data = Storage.GetSharedPlayerData(STORAGE_KEY, player)
	if data and data.equipment and _G.Items then
		local itemId = data.equipment.weapon
		local def = _G.Items.GetDefinition(itemId)
		if def.equipment then
			weaponAsset = def.equipment
		end
	end
	
	local spawnParams = {networkContext = NetworkContextType.NETWORKED}
	local equipment
	if weaponAsset then
		equipment = World.SpawnAsset(weaponAsset, spawnParams)
	end
	if not equipment then
		equipment = World.SpawnAsset(FALLBACK_WEAPON, spawnParams)
	end
	
	Task.Wait(0.15)
	if Object.IsValid(player) then
		equipment:Equip(player)
	else
		equipment:Destroy()
	end
end

