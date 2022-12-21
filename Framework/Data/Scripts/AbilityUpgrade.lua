local EquipAPI = _G["Character.EquipAPI"]
local ClassApi = _G["Character.Classes"]


local map = {
	"Ability1",
	"Ability2",
	"Ability3",
	"Ability4",
	"Ability5",
}

local function CheckPlayer(player)
	return Object.IsValid(player) and player:IsA("Player")
end

local function CanUpgrade(progression, points, ability)
	local abilPoints = points:GetSpentPoints(ability)
	if abilPoints >= 12 then return false end
	local progresAbility = progression:GetProgressionKey(ability)
	if type(progresAbility) ~= "number" then
		progresAbility = 0
	end
	local currentStarRating = progresAbility or 0
	if (abilPoints) >= (3 * (currentStarRating + 1)) then
		return false
	end

	return true
end

function UpgradeAbility(player, slotIndex)
	slotIndex = tonumber(slotIndex)
	if not CheckPlayer(player) then
		return
	end
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not map[slotIndex] then return end
	if not Character then return end
	local points      = Character:GetComponent("Points")
	local progression = Character:GetComponent("Progression")
	local class       = Character:GetComponent("Class")
	local classtable  = class:GetClassTable()
	if not classtable then return end

	local Ability = classtable[map[slotIndex]]
	if not Ability then return end

	if CanUpgrade(progression, points, Ability) then
		points:SpendPoint(Ability, 1)
		points:ConfirmSpending()
	end

end

Events.Connect("Ability_Upgrade", UpgradeAbility)
