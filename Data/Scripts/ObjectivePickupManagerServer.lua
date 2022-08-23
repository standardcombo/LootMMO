

function OnObjectivePickup(player, questId, objectiveIndex)
	print("ObjectivePickupManagerServer::OnObjectivePickup")
	
	_G.QuestController.AdvanceObjective(player, questId, objectiveIndex)
end

Events.ConnectForPlayer("ObjectivePickup", OnObjectivePickup)

