local button = script.parent
local propSound = script:GetCustomProperty("Sound")
local propHoverSound = script:GetCustomProperty("HoverSound")

function OnClicked()
	if propSound then
		World.SpawnAsset(propSound)
	end
end
function OnHovered()
	if propHoverSound then
		World.SpawnAsset(propHoverSound)
	end
end

button.clickedEvent:Connect(OnClicked)
button.hoveredEvent:Connect(OnHovered)
