
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")
local GEO_TO_HIDE = script:GetCustomProperty("GeoToHide"):WaitForObject()


function Show()
	GEO_TO_HIDE.visibility = Visibility.INHERIT
end

function Hide()
	GEO_TO_HIDE.visibility = Visibility.FORCE_OFF
end

Hide()

Task.Wait()

-- Register itself to the objective pickup system
_G.ObjectivePickup.Add(script)

