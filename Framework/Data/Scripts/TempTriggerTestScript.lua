local TRIGGER = script.parent
local CHARACTER = script:GetCustomProperty("NewSetUpCustomNPC"):WaitForObject()

local TIME = time()
function OnInteracted(trigger, other)
	if other:IsA("Player") then
        if time() - TIME <= 7 then return end
        TIME = time()
		Events.Broadcast("Talking.Heads", "TestingStuff")
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)

Task.Spawn(function()
    Task.Wait(2)
    CHARACTER.animationStance = "unarmed_idle_relaxed"
end)