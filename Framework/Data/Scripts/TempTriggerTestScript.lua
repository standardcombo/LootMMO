local TRIGGER = script.parent
local CHAT_ID = script:GetCustomProperty("ChatID")


function OnInteracted(trigger, other)
	if other:IsA("Player") then
        local state = tostring(other:GetResource(CHAT_ID))
		Events.Broadcast("Talking.Heads", CHAT_ID, state)
	end
end

function FlipInteraction()
    local bool = TRIGGER.isInteractable
    TRIGGER.isInteractable = not(bool)
end

TRIGGER.interactedEvent:Connect(OnInteracted)
Events.Connect("FlipInteraction", FlipInteraction)
TRIGGER.isInteractable = true
-- if Environment.IsClient() then
--     local CHARACTER = script:GetCustomProperty("NewSetUpCustomNPC"):WaitForObject()
--     local RepeatingTask = Task.Spawn(function()
--         if CHARACTER.visibility ~= Visibility.FORCE_OFF then
--             if TRIGGER.isInteractable == true then return end
--             TRIGGER.isInteractable = true
--         else
--             if TRIGGER.isInteractable == false then return end
--             TRIGGER.isInteractable = false
--         end
--     end)
--     RepeatingTask.repeatCount = -1
-- end
