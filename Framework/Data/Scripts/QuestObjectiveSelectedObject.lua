
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")
local OBJECT = script:GetCustomProperty("Object"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()
local myObjective = nil


function OnObjectiveSelected(obj)
	if obj.index == OBJECTIVE_INDEX
	and obj.questId == QUEST_ID then
		OBJECT.visibility = Visibility.INHERIT
		myObjective = obj
	else
		OBJECT.visibility = Visibility.FORCE_OFF
		myObjective = nil
	end
end

Events.Connect("Quest.ObjectiveSelected", OnObjectiveSelected)


function UpdateState()
	if not myObjective 
	or not myObjective.isSelected
	or not _G.QuestController.IsActive(PLAYER, myObjective) then
		OBJECT.visibility = Visibility.FORCE_OFF
		myObjective = nil
	end
end

Events.Connect("Quest.Changed", UpdateState)

