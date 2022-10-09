local EquipAPI = _G["Character.EquipAPI"]
local PotionApi = _G["Potions.Equipment"]

local function EquipPotion(player, slot, potionName)
	if not PotionApi.GetEntry(potionName) then return end
	if type(slot) ~= "number" then return end
 
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not Character then
		return
	end

	local Potion = Character:GetComponent("Potions")
	Potion:SetEquipped(potionName, slot)
end

local function UnequipPotion(player, slot)
	if type(slot) ~= "number" then return end
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not Character then
		return
	end

	local Potion = Character:GetComponent("Potions")
	Potion:SetUnequipped(slot)
end

Events.ConnectForPlayer("EquipPotion", EquipPotion)
Events.ConnectForPlayer("UnequipPotion", UnequipPotion)
