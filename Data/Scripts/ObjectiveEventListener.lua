
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")
local EVENT_ID = script:GetCustomProperty("EventID")
local OBJECT_ID = script:GetCustomProperty("ObjectID")


function OnEvent(player, objectId)
	if OBJECT_ID ~= "" and objectId ~= OBJECT_ID then return end
	if not Object.IsValid(player) then
		warn("Invalid player in ObjectiveEventListener::OnEvent() "..QUEST_ID..","..OBJECTIVE_INDEX..","..OBJECT_ID)
		return
	end
	
	print("ObjectiveEventListener::OnEvent() "..player.name..","..QUEST_ID..","..OBJECTIVE_INDEX..","..OBJECT_ID)
	
	local obj = _G.QuestController.GetQuestObjective(QUEST_ID, OBJECTIVE_INDEX)
	if _G.QuestController.IsActive(player, obj) then
		_G.QuestController.AdvanceObjective(player, QUEST_ID, OBJECTIVE_INDEX)
	end
end

Events.Connect(EVENT_ID, OnEvent)

