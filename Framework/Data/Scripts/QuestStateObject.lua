
local ENABLED_BY_ACTIVE_QUEST_ID = script:GetCustomProperty("EnabledByActiveQuestId")
local ENABLED_BY_COMPLETED_QUEST_ID = script:GetCustomProperty("EnabledByCompletedQuestId")
local DISABLED_BY_ACTIVE_QUEST_ID = script:GetCustomProperty("DisabledByActiveQuestId")
local DISABLED_BY_COMPLETED_QUEST_ID = script:GetCustomProperty("DisabledByCompletedQuestId")
local OBJECT = script:GetCustomProperty("Object"):WaitForObject()
local SET_VISIBILITY = script:GetCustomProperty("SetVisibility")
local SET_COLLISION = script:GetCustomProperty("SetCollision")

local PLAYER = Game.GetLocalPlayer()


function UpdateState()
	if _G.QuestController.HasCompleted(PLAYER, DISABLED_BY_COMPLETED_QUEST_ID)
	or _G.QuestController.IsActive(PLAYER, DISABLED_BY_ACTIVE_QUEST_ID)
	then
		if SET_VISIBILITY then
			OBJECT.visibility = Visibility.FORCE_OFF
		end
		if SET_COLLISION then
			OBJECT.collision = Collision.FORCE_OFF
		end
		
	elseif _G.QuestController.HasCompleted(PLAYER, ENABLED_BY_COMPLETED_QUEST_ID)
	or _G.QuestController.IsActive(PLAYER, ENABLED_BY_ACTIVE_QUEST_ID)
	then
		if SET_VISIBILITY then
			OBJECT.visibility = Visibility.INHERIT
		end
		if SET_COLLISION then
			OBJECT.collision = Collision.INHERIT
		end
	end
end

Events.Connect("Quest.Changed", UpdateState)

