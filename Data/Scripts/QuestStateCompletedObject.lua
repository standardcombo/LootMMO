
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECT = script:GetCustomProperty("Object"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()


function UpdateState()
	if _G.QuestController.HasCompleted(PLAYER, QUEST_ID) then
		OBJECT.visibility = Visibility.INHERIT
	else
		OBJECT.visibility = Visibility.FORCE_OFF
	end
end

Events.Connect("Quest_Changed", UpdateState)

