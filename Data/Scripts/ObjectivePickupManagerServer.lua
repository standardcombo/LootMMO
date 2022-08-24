

function OnObjectivePickup(player, questId, objectiveIndex)
	print("ObjectivePickupManagerServer::OnObjectivePickup() "..player.name..","..questId..","..objectiveIndex)
	
	_G.QuestController.AdvanceObjective(player, questId, objectiveIndex)
end

Events.ConnectForPlayer("ObjectivePickup", OnObjectivePickup)

