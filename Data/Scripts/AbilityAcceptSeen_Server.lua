local EquipApi = _G["Character.EquipAPI"]

local AcceptingValues = {
	[1] = true,
	[2] = true,
	[3] = true,
	[4] = true,
	[5] = true
}

local function Accept(player, i)
	if not AcceptingValues[i] then
		return
	end
	local Character = EquipApi.GetCurrentCharacter(player)
	if Character then
		local progression = Character:GetComponent("Progression")
		progression:SetProgression("AcceptSlot" .. i , true) 
	end
end

Events.ConnectForPlayer("AcceptSlot", Accept)
