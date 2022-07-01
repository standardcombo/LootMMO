
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local GEO_ROOT = script:GetCustomProperty("GeoRoot"):WaitForObject()
local LID = script:GetCustomProperty("Lid"):WaitForObject()
local SFX = script:GetCustomProperty("SFX"):WaitForObject()

local isOpen = false

function Open()
	if isOpen then return end
	isOpen = true
	
	SFX:Play()
	LID:RotateTo(Rotation.New(-135, 0, 180), 0.25, true)
end

TRIGGER.interactedEvent:Connect(function(trigger, player)
	Open()
end)

