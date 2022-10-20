local EquipAPI = _G["Character.EquipAPI"]
local Abilities = _G['Ability.Equipment'].GetTable()
local pointsUpdates = {}

local function UpdatePoints(points, stats)
	for key, value in pairs(points:GetSpentPoints()) do
		if Abilities[key] then
			stats:SetStat(key, value)
			stats:SetTempStat(key, value)
		end
	end
end

local function PlayerEquiped(character, player)
	local points = character:GetComponent("Points")
	local stats = character:GetComponent("Stats")
	UpdatePoints(points, stats)
	pointsUpdates[character.id] = points.spentChangedEvent:Connect(
		function()
			UpdatePoints(points, stats)
		end
	)
end

local function PlayerUnequip(character, player)
	if pointsUpdates[character.id] then
		pointsUpdates[character.id]:Disconnect()
		pointsUpdates[character.id] = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquiped)
EquipAPI.playerUnequippedEvent:Connect(PlayerUnequip)
