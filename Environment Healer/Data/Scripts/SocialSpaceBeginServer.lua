
local PLAYER_SETTINGS = script:GetCustomProperty("PlayerSettings"):WaitForObject()

Events.ConnectForPlayer("JoinSocial", function(player)
	if Object.IsValid(player) then
		PLAYER_SETTINGS:ApplyToPlayer(player)
		
		local spawnPoints = World.FindObjectsByType("PlayerStart")
		for i = #spawnPoints, 1, -1 do
			local point = spawnPoints[i]
			if point.key ~= "Social" then
				table.remove(spawnPoints, i)
			end
		end
		
		local randomIndex = math.random(1, #spawnPoints)
		local point = spawnPoints[randomIndex]
		
		player:Spawn({
			position = point:GetWorldPosition(), 
			rotation = point:GetWorldRotation()
		})
	end
end)
