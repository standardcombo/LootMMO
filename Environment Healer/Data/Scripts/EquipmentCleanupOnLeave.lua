
Game.playerLeftEvent:Connect(function(player)
	for _,equipment in ipairs(player:GetEquipment()) do
		if Object.IsValid(equipment) then
			equipment:Destroy()
		end
	end
end)