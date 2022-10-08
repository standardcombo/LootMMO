local EquipAPI = _G["Character.EquipAPI"]
local PotionsAPI = _G["Potions.Equipment"]
local Equipper = _G["Equipper"]

local playerDataEvents = {}
local spawnnedEquipment =
setmetatable(
	{},
	{ __index = function()
		return {}
	end }
)

local function UnequipEvent(character)
	if playerDataEvents[character.id] then
		playerDataEvents[character.id]:Disconnect()
		playerDataEvents[character.id] = nil
	end
end

local function UnequipEquipment(character, slot)
	local Equipment = spawnnedEquipment[character.id][slot]
	if Object.IsValid(Equipment) then
		Equipment:Destroy()
	end
	spawnnedEquipment[character.id][slot] = nil
end

local function SpawnEquipment(character, PotionComponent, player, slot)
	local potion = PotionsAPI.GetEntry(PotionComponent:GetEquipped(slot))
	if potion then
		if not Object.IsValid(spawnnedEquipment[character.id][slot]) then
			spawnnedEquipment[character.id][slot] = Equipper.EquipEquipment(player, potion.name, slot)
		end
	end
end

local function PotionsChanged(character, PotionComponent, player)
	for i = 1, PotionComponent.slotCount do
		if Object.IsValid(spawnnedEquipment[character.id][i]) then
			local potion = PotionsAPI.FindFromAssetId(spawnnedEquipment[character.id][i].templateId)
			if not potion.name == PotionComponent:GetEquipped(i) then
				UnequipEquipment(character, i)
				SpawnEquipment(character, PotionComponent, player, i)
			end
		else
			SpawnEquipment(character, PotionComponent, player, i)
		end
	end
end

local function PlayerUnequipped(character, player)
	UnequipEvent(character)
	for i = 1, #spawnnedEquipment do
		UnequipEquipment(character, i)
	end
	spawnnedEquipment[character.id] = nil
end

local function PlayerEquipped(character, player)
	local PotionComponent = character:GetComponent("Potions")
	PotionComponent.potionChangedEvent:Connect(
		function()
			PotionsChanged(character, PotionComponent, player)
		end
	)
	PotionsChanged(character, PotionComponent, player)
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
EquipAPI.playerUnequippedEvent:Connect(PlayerUnequipped)
