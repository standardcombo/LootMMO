Events.ConnectForPlayer("Talking.Heads.Resource", function(player, key, amount)
	if(amount < 0) then
		player:RemoveResource(key, amount)
	else
		player:AddResource(key, amount)
	end
end)

Events.ConnectForPlayer("ChatToQuest", function(player, QuestID, Start)
	local API = _G.QuestController
	if Start then
		if not API.HasCompleted(player, QuestID) then
			API.ActivateForPlayer(player, QuestID)
		end
	else
		local quests = API.GetActiveObjectives(player)
		for key, value in pairs(quests) do
			local quest = API.GetQuest(QuestID)
			if quest then
				local obj = quest.objectives[1]
				if value == obj then
					API.AdvanceObjective(player, QuestID, 1)
				end
			end
		end
	end
end)
