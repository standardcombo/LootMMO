
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local IK_ANCHOR = script:GetCustomProperty("IKAnchor"):WaitForObject()

function OnInteracted(trigger, player)
	IK_ANCHOR.parent:SetWorldRotation(player:GetWorldRotation())
	IK_ANCHOR.parent = nil
	_G.IkStack.Add(player, IK_ANCHOR)
	Task.Wait(0.2)
	Events.BroadcastToServer("PickupItem", SERVER_SCRIPT)
	Task.Wait(0.05)
	_G.IkStack.Remove(player, IK_ANCHOR)
	Task.Wait(0.1)
	IK_ANCHOR:Destroy()
end

TRIGGER.interactedEvent:Connect(OnInteracted)

--script.destroyEvent:Connect(function()
--	_G.IkStack.Remove(player, IK_ANCHOR)
--end)