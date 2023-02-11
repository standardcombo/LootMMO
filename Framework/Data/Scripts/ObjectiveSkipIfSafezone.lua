local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")


function VerifyConditionsForPlayer(player)
	if not player.serverUserData.safeZoneCount then return end
	if player.serverUserData.safeZoneCount <= 0 then return end

	local obj = _G.QuestController.GetQuestObjective(QUEST_ID, OBJECTIVE_INDEX)
	if obj then
		if _G.QuestController.IsActive(player, obj) then
			_G.QuestController.AdvanceObjective(player, QUEST_ID, OBJECTIVE_INDEX)
		end
	end
end


Game.playerJoinedEvent:Connect(function(player)
	player.privateNetworkedDataChangedEvent:Connect(VerifyConditionsForPlayer)
end)

