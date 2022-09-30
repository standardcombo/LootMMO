local EquipApi = _G["Character.EquipAPI"]
local Equipper = _G["Equipper"]

local spawnedEquipment = {}

local EquipmentKeys = {
	'Shift',
	'1',
	'2',
	'3',
	'4'
}
function EquipOwner()
	if Environment.IsClient() then
		return 'Cannot Equip From Client!'
	end
	local owner = self.owner:GetOwner()
	local progression = self.owner:GetComponent('Progression')
	if not owner then
		self:UnequipOwner()
		return
	end
	hasSpawned = true

end

function UnequipOwner()
	if Environment.IsClient() then
		return 'Cannot Unequip From Client!'
	end
	hasSpawned = false
	for key, value in pairs(self.spawnedEquipment) do
		if Object.IsValid(value) then
			value:Destroy()
		end
	end
	spawnedEquipment = {}
end

function GetSpawned()
	return spawnedEquipment
end

local function ProgressionChanged(character, player)

end

local function UnEquipClass(character, player)
	for key, value in pairs(spawnedEquipment[character] or {}) do
		if Object.IsValid(value) then
			value:Destroy()
		end
	end
	spawnedEquipment[character] = nil
end

local function EquipClass(character, player)
	local class = character:GetComponent("Class")
	local progression = character:GetComponent("Progression")
	local classtable = class:GetClassTable()
	spawnedEquipment[character] = {}
	for i = 1, 5 do
		if not Object.IsValid(spawnedEquipment[character][i])
			and progression:GetProgressionKey('AbilitySlot' .. i)
			and progression:GetProgressionKey('AcceptSlot' .. i) then
			local equip = Equipper.EquipEquipment(player, classtable['Ability' .. tostring(i)], EquipmentKeys[i])
			spawnedEquipment[character][i] = equip
		end
	end

end

local function playerEquipped(character, player)
	EquipClass(character, player)
end

local function playerUnequipped(character, player)
	local class = character:GetComponent("Class")
	UnEquipClass(class, player)
end

EquipApi.playerEquippedEvent:Connect(playerEquipped)
EquipApi.playerUnequippedEvent:Connect(playerUnequipped)
