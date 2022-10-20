local EquipAPI = _G["Character.EquipAPI"]

 

local function UpdateStatsOnPoints(character, stats)

end
 
local function CharacterEquipped(character, player)
	local points = character:GetComponent("Points")
	local stats = character:GetComponent("Stats")

	UpdateStatsOnPoints(points, stats)
	points.spentChangedEvent:Connect(function()
		UpdateStatsOnPoints(character, stats)
	end)
end

EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
