local local_player = Game.GetLocalPlayer()
local DESTROY_ME = script:GetCustomProperty("DestroyMe"):WaitForObject()
local TRIGGER = script.parent

if local_player:GetResource("WeaponStash") == 1 then
    DESTROY_ME:Destroy()
end

function OnInteracted(trigger, other)
	if other == local_player then
        TRIGGER.isInteractable = false
        DESTROY_ME:Destroy()
		Events.BroadcastToServer("StashCollect")
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)