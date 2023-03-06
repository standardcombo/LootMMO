
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECT = script:GetCustomProperty("Object"):WaitForObject()
local SET_VISIBILITY = script:GetCustomProperty("SetVisibility")
local SET_COLLISION = script:GetCustomProperty("SetCollision")
local HIDE_INSTEAD_OF_SHOW = script:GetCustomProperty("HideInsteadOfShow")

local PLAYER = Game.GetLocalPlayer()


function UpdateState()
	if _G.QuestController.HasCompleted(PLAYER, QUEST_ID) then
		if SET_VISIBILITY then
			if HIDE_INSTEAD_OF_SHOW then
				OBJECT.visibility = Visibility.FORCE_OFF
			else
				OBJECT.visibility = Visibility.INHERIT
			end
		end
		if SET_COLLISION then
			if HIDE_INSTEAD_OF_SHOW then
				OBJECT.collision = Collision.FORCE_OFF
			else
				OBJECT.collision = Collision.INHERIT
			end
		end
	else
		if SET_VISIBILITY then
			if HIDE_INSTEAD_OF_SHOW then
				OBJECT.visibility = Visibility.INHERIT
			else
				OBJECT.visibility = Visibility.FORCE_OFF
			end
		end
		if SET_COLLISION then
			if HIDE_INSTEAD_OF_SHOW then
				OBJECT.collision = Collision.INHERIT
			else
				OBJECT.collision = Collision.FORCE_OFF
			end
		end
	end
end

Events.Connect("Quest.Changed", UpdateState)

