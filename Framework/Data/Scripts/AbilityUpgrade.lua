local EVENT_ABILITY_UPGRADE = "Ability_Upgrade"

local EquipAPI = _G["Character.EquipAPI"]
local ClassApi = _G["Character.Classes"]


local function CheckPlayer(player)
	return Object.IsValid(player) and player:IsA("Player")
end

local function CanUpgrade(progression, points, abilityId)
	local abilityPoints = points:GetSpentPoints(abilityId)
	if abilityPoints >= 11 then return false end
	
	local abilityStudyLevel = progression:GetProgressionKey(abilityId)
	if type(abilityStudyLevel) ~= "number" then
		abilityStudyLevel = 0
	end
	if abilityPoints >= 3 * (abilityStudyLevel + 1) then
		return false
	end
	return true
end

function UpgradeAbility(player, slotIndex)
	if not CheckPlayer(player) then
		return
	end
	slotIndex = tonumber(slotIndex)
	if slotIndex < 1 or slotIndex > 5 then return end
	
	local character = EquipAPI.GetCurrentCharacter(player)
	if not character then return end
	
	local points      = character:GetComponent("Points")
	local progression = character:GetComponent("Progression")
	local class       = character:GetComponent("Class")
	local classtable  = class:GetClassTable()
	if not classtable then return end

	local abilityId = classtable["Ability"..slotIndex]
	if not abilityId then return end

	if CanUpgrade(progression, points, abilityId) then
		points:SpendPoint(abilityId, 1)
		points:ConfirmSpending()
	end
end

Events.Connect(EVENT_ABILITY_UPGRADE, UpgradeAbility)
