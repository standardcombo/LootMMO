
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECT = script:GetCustomProperty("Object"):WaitForObject()
local SET_VISIBILITY = script:GetCustomProperty("SetVisibility")
local SET_COLLISION = script:GetCustomProperty("SetCollision")

local PLAYER = Game.GetLocalPlayer()


function UpdateState()
	if _G.QuestController.HasCompleted(PLAYER, QUEST_ID) then
		if SET_VISIBILITY then
			OBJECT.visibility = Visibility.INHERIT
		end
		if SET_COLLISION then
			OBJECT.collision = Collision.INHERIT
		end
	else
		if SET_VISIBILITY then
			OBJECT.visibility = Visibility.FORCE_OFF
		end
		if SET_COLLISION then
			OBJECT.collision = Collision.FORCE_OFF
		end
	end
end

Events.Connect("Quest_Changed", UpdateState)

