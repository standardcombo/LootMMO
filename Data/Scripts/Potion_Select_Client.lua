local PotionApi = _G["Potions.Equipment"]

local function SetPotion(PotionName, slot)
	if not PotionApi.GetEntry(PotionName) then
		return
	end
	if not slot then return end

	Events.BroadcastToServer('EquipPotion', slot, PotionName)
end

local function UnequipPotion(slot)
	if not slot then return end
	Events.BroadcastToServer("UnequipPotion", slot)
end

Events.Connect("EquipPotion", SetPotion)
Events.Connect("UnequipPotion", UnequipPotion)
