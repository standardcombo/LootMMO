local TRIGGER = script.parent
local CHAT_ID = script:GetCustomProperty("ChatID")


function OnInteracted(trigger, other)
	if other:IsA("Player") then
        --local state = tostring(other:GetResource(CHAT_ID))
        -- I change it for this dupe script, so that the demon in the tavern, doesn't change what he's saying.
		Events.Broadcast("Talking.Heads", "Demon0")
	end
end

function FlipInteraction()
    local bool = TRIGGER.isInteractable
    TRIGGER.isInteractable = not(bool)
end

TRIGGER.interactedEvent:Connect(OnInteracted)
Events.Connect("FlipInteraction", FlipInteraction)
TRIGGER.isInteractable = true
