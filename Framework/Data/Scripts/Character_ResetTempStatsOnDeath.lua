local EquipApi = _G["Character.EquipAPI"]


local function PLayerReset(player)
	local char = EquipApi.GetCurrentCharacter(player)
	if char then
		local stats = char:GetComponent("Stats")
		stats:ResetTempStats()
	end
end

local function PlayerJoined(player)
	player.diedEvent:Connect(PLayerReset)
end

Game.playerJoinedEvent:Connect(PlayerJoined)
