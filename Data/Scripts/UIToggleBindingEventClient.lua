local propAction = script:GetCustomProperty("Action")
local propUniqueID = script:GetCustomProperty("UniqueID")
local propResourceCheck = script:GetCustomProperty("ResourceCheck")
local propMinAllowedResource = script:GetCustomProperty("MinAllowedResource")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local canToggle = true

function OnActionPressed(whichPlayer, action)
	if (action == propAction) and whichPlayer == LOCAL_PLAYER then
		if propResourceCheck ~= "" and 
		whichPlayer:GetResource(propResourceCheck) < propMinAllowedResource then
			return
		end
		Events.Broadcast("ToggleUI", propUniqueID, canToggle)
	end
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == propUniqueID then
		if toggle then
			canToggle = false
		else
			canToggle = true
		end
	else
		canToggle = true
	end
end

Events.Connect("ToggleUI", OnToggleUI)

Input.actionPressedEvent:Connect(OnActionPressed)