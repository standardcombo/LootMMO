local button = script.parent
local propUniqueID = script:GetCustomProperty("UniqueID")
local propOpen = script:GetCustomProperty("Open")

function OnClicked(whichButton)
	Events.Broadcast("ToggleUI", propUniqueID, propOpen)
end

button.clickedEvent:Connect(OnClicked)
