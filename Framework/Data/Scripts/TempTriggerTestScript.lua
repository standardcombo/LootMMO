local TRIGGER = script.parent


-- putting this in local so it fires the two events at the same time
-- 1 is client and will fire off the talking heads
-- 2nd is server, which will be an empty broadcast, but it will allow the quest system to listen for particular talking head events, possibly
local TIME = time()
function OnInteracted(trigger, other)
	if other:IsA("Player") then
        if time() - TIME <= 7 then return end
        TIME = time()
		Events.Broadcast("Talking.Heads", "TestingStuff")
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)

if Environment.IsClient() then
    local CHARACTER = script:GetCustomProperty("NewSetUpCustomNPC"):WaitForObject()
    local RepeatingTask = Task.Spawn(function()
        if CHARACTER.visibility ~= Visibility.FORCE_OFF then
            if TRIGGER.isInteractable == true then return end
            TRIGGER.isInteractable = true
        else
            if TRIGGER.isInteractable == false then return end
            TRIGGER.isInteractable = false
        end
    end)
    RepeatingTask.repeatCount = -1 
end
