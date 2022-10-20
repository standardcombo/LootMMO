local Equipment = script:GetCustomProperty("Equipment"):WaitForObject()
local GarbageCollection = script:GetCustomProperty("GarbageCollection"):WaitForObject()

local FX_Template = Equipment:GetCustomProperty("FX_Template")

local ClassEquipmentReference
local Timer = -1
local _Owner = nil
local PlayerDiedEvent = nil
local PlayerDamageEvent = nil

local function META_AP()
	while not _G["Meta.Ability.Progression"] do
		Task.Wait()
	end
	return _G["Meta.Ability.Progression"]
end

local function GetCurrentCosmeticId(player, classID, bind)
	return META_AP()["VFX"].GetCurrentCosmeticId(player, classID, bind)
end

local function DestroyEquipment()
	Equipment:Unequip()
	Equipment.parent = GarbageCollection
	Task.Wait()
	if Object.IsValid(Equipment) then
		Equipment:Destroy()
	end
end

function OnPlayerDamaged(player, dmg)
	PlayerDamageEvent:Disconnect()
	PlayerDamageEvent = nil
	Timer = 0
end

function OnPlayerDied(player, _)
	PlayerDiedEvent:Disconnect()
	PlayerDiedEvent = nil
	Timer = 0
end

function OnPlayerLeft(player)
	if player == _Owner then
		DestroyEquipment()
	end
end

function OnEquip(equipment, player)
	World.SpawnAsset(FX_Template, {position = player:GetWorldPosition()})
	for _, equipment in pairs(player:GetEquipment()) do
		if equipment ~= Equipment then
			if Object.IsValid(equipment) then
				ClassEquipmentReference = equipment.sourceTemplateId
				equipment:Unequip()
			end
			Task.Wait()
			if Object.IsValid(equipment) then
				equipment:Destroy()
			end
		end
	end
	--Task.Wait()
	--Task.Wait()
	PlayerDiedEvent = player.diedEvent:Connect(OnPlayerDied)
	PlayerDamageEvent = player.damagedEvent:Connect(OnPlayerDamaged)
	player:SetVisibility(false, false)
	player.animationStance = "unarmed_stance"
	_Owner = player
	Timer = Equipment:GetCustomProperty("Duration")
end

function OnUnequip(equipment, player)
	if Object.IsValid(player) then
		player:SetVisibility(true)
		player.serverUserData.isAnimorphed = false
	end

	if PlayerDiedEvent then
		PlayerDiedEvent:Disconnect()
		PlayerDiedEvent = nil
	end

	if PlayerDamageEvent then
		PlayerDamageEvent:Disconnect()
		PlayerDamageEvent = nil
	end
end

Equipment.equippedEvent:Connect(OnEquip)
Equipment.unequippedEvent:Connect(OnUnequip)

function Tick(deltaTime)
	if Timer >= 0 then
		Timer = Timer - deltaTime
		if Timer < 0 then
			if not Object.IsValid(Equipment) then
				return
			end
			if not Object.IsValid(_Owner) then
				Equipment:Destroy()
				return
			end
			World.SpawnAsset(FX_Template, {position = _Owner:GetWorldPosition()})
			if ClassEquipmentReference then
				local classEquipment = World.SpawnAsset(ClassEquipmentReference)
				local classID = classEquipment:GetCustomProperty("ClassID")
				local costumeID = classEquipment:GetCustomProperty("OID")
				classID = classID or costumeID
				if classID and classID > 0 then
					local oId = GetCurrentCosmeticId(_Owner, classID, 8)
					local qId = GetCurrentCosmeticId(_Owner, classID, 1)
					local eId = GetCurrentCosmeticId(_Owner, classID, 2)
					local rId = GetCurrentCosmeticId(_Owner, classID, 3)
					local tId = GetCurrentCosmeticId(_Owner, classID, 4)
					classEquipment:SetNetworkedCustomProperty("OID", oId)
					classEquipment:SetNetworkedCustomProperty("QID", qId)
					classEquipment:SetNetworkedCustomProperty("EID", eId)
					classEquipment:SetNetworkedCustomProperty("RID", rId)
					classEquipment:SetNetworkedCustomProperty("TID", tId)
				elseif costumeID then
					classID = _Owner:GetResource("CLASS_MAP") 
					classID = classID > 0 and classID or 1
					local oId = GetCurrentCosmeticId(_Owner, classID, 8)
					classEquipment:SetNetworkedCustomProperty("OID", oId)
					classEquipment:SetNetworkedCustomProperty("ClassID", classID)
				end
				classEquipment:Equip(_Owner)
			end
			DestroyEquipment()
		end
	end
end
