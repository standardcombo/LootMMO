--[[
	Equipment Cleanup on Leave
	v1.0
	by: standardcombo
	
	Detects players leaving the game. Destroys all equipment on them.
	
	To prevent some equipment from being destroyed this way, add to
	them a custom property named "DontDestroy" (bool) = True.
]]

Game.playerLeftEvent:Connect(function(player)
	local playerEquipment = player:GetEquipment()
	
	for _,equipment in ipairs(playerEquipment) do
		if Object.IsValid(equipment) 
		and not equipment:GetCustomProperty("DontDestroy") then
			equipment:Destroy()
		end
	end
end)

