local InfoHoverButton = script:GetCustomProperty("InfoHoverButton"):WaitForObject()
local InfoPanel = script:GetCustomProperty("InfoPanel"):WaitForObject()
local propHoverSFX = script:GetCustomProperty("HoverSFX")

function OnHovered(whichButton)
	InfoPanel.visibility = Visibility.INHERIT
	if propHoverSFX then
		World.SpawnAsset(propHoverSFX)
	end
end

function OnUnhovered(whichButton)
	InfoPanel.visibility = Visibility.FORCE_OFF
end

InfoPanel.visibility = Visibility.FORCE_OFF

InfoHoverButton.hoveredEvent:Connect(OnHovered)
InfoHoverButton.unhoveredEvent:Connect(OnUnhovered)
