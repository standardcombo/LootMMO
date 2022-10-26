Events.ConnectForPlayer("Talking.Heads.Resource", function(player, key, amount)
	if(amount < 0) then
		player:RemoveResource(key, amount)
	else
		player:AddResource(key, amount)
	end
end)
