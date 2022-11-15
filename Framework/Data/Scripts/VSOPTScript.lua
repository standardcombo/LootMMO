local TRIGGER = script.parent
local TIME = time()


function OnInteracted(trigger, other)
	if other:IsA("Player") then
        if time() - TIME <= 7 then return end
        TIME = time()
        local Data = other:GetPrivateNetworkedData("VSR")
        if Data == nil then Data = "-" end
        if Data == "-" then
		    Events.Broadcast("Talking.Heads", "VS+")
        elseif Data == "+" then
            Events.Broadcast("Talking.Heads", "VS-")
        end
	end
end

function FlipInteraction()
    local bool = TRIGGER.isInteractable
    TRIGGER.isInteractable = not(bool)
end

TRIGGER.interactedEvent:Connect(OnInteracted)
Events.Connect("FlipInteraction", FlipInteraction)