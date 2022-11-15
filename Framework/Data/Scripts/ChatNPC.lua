local TRIGGER = script.parent
local CHAT_ID = script:GetCustomProperty("ChatID")


function OnInteracted(trigger, other)
	if other:IsA("Player") then
        local state = tostring(other:GetResource(CHAT_ID))
		Events.Broadcast("Talking.Heads", CHAT_ID..state)
	end
end

function FlipInteraction()
    local bool = TRIGGER.isInteractable
    TRIGGER.isInteractable = not(bool)
end

TRIGGER.interactedEvent:Connect(OnInteracted)
Events.Connect("FlipInteraction", FlipInteraction)