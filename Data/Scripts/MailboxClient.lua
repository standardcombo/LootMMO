
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local MODAL = script:GetCustomProperty("ModalPopup"):WaitForObject()
MODAL = MODAL.context


function OnInteracted(trigger, player)
	TRIGGER.isInteractable = false
	
	MODAL.Show()
	
	Events.BroadcastToServer("MailboxOpened", player)
end

TRIGGER.interactedEvent:Connect(OnInteracted)


function OnModalHidden(modal)
	if modal == MODAL then
		local player = Game.GetLocalPlayer()
		Events.BroadcastToServer("MailboxClosed", player)
		
		Task.Wait(0.5)
		TRIGGER.isInteractable = true
	end
end

Events.Connect("ModalHidden", OnModalHidden)