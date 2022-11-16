local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

function OnEndOverlap(trigger, other)
	if other:IsA("Player") then

	end
end

function OnInteracted(trigger, other)
	if other:IsA("Player") then
        Events.Broadcast("Talking.Heads", "Welcome")
	end
end

TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
TRIGGER.interactedEvent:Connect(OnInteracted)