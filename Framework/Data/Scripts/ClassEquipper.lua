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


local function UnEquipClass(character, player)
	for key, value in ipairs(spawnedEquipment[character.id] or {}) do
		if Object.IsValid(value) then
			value:Destroy()
		end
	end
	spawnedEquipment[character.id] = nil
end

local function EquipClass(character, player)
	local class = character:GetComponent("Class")
	local progression = character:GetComponent("Progression")
	local classtable = class:GetClassTable()
	spawnedEquipment[character.id] = spawnedEquipment[character.id] or {}
	for i = 1, 5 do
		if not Object.IsValid(spawnedEquipment[character.id][i])
			and progression:GetProgressionKey('AbilitySlot' .. i)
			and progression:GetProgressionKey('AcceptSlot' .. i) then
			local equip = Equipper.EquipEquipment(player, classtable['Ability' .. tostring(i)], EquipmentKeys[i])
			spawnedEquipment[character.id][i] = equip
		end
	end

end

local function ProgressionChanged(progression, key, character, player)
	local AcceptedProgression = {
		["AcceptSlot1"] = true,
		["AcceptSlot2"] = true,
		["AcceptSlot3"] = true,
		["AcceptSlot4"] = true,
		["AcceptSlot5"] = true,
	}
	if AcceptedProgression[key] then
		EquipClass(character, player)
	end
end

local function classChanged(character, player)
	UnEquipClass(character, player)
	EquipClass(character, player)
end

local function playerEquipped(character, player)
	UnEquipClass(character, player)
	local class = character:GetComponent("Class")
	local progression = character:GetComponent("Progression")
	class.classChangedEvent:Connect(function()
		classChanged(character, player)
	end)
	progression.progressionUpdatedEvent:Connect(function(progression, key)
		ProgressionChanged(progression, key, character, player)
	end)
	EquipClass(character, player)
end

EquipApi.playerEquippedEvent:Connect(playerEquipped)
EquipApi.playerUnequippedEvent:Connect(UnEquipClass)
