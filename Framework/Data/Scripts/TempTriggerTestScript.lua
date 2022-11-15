local TRIGGER = script.parent
-- putting this in local so it fires the two events at the same time
-- 1 is client and will fire off the talking heads
-- 2nd is server, which will be an empty broadcast, but it will allow the quest system to listen for particular talking head events, possibly

function OnInteracted(trigger, other)
	if other:IsA("Player") then
		Events.Broadcast("Talking.Heads", "TestingStuff")
	end
end

function FlipInteraction()
    local bool = TRIGGER.isInteractable
    TRIGGER.isInteractable = not(bool)
end

TRIGGER.interactedEvent:Connect(OnInteracted)
Events.Connect("FlipInteraction", FlipInteraction)

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
