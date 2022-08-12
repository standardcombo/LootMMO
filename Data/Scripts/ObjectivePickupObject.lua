
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")
local GEO_TO_HIDE = script:GetCustomProperty("GeoToHide"):WaitForObject()

GEO_TO_HIDE.visibility = Visibility.FORCE_OFF


Task.Wait()
_G.ObjectivePickup.Add(script)


function Show()
	GEO_TO_HIDE.visibility = Visibility.INHERIT
end

