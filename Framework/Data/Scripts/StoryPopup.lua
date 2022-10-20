
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local MODAL = script:GetCustomProperty("ModalPopup"):WaitForObject()
MODAL = MODAL.context


function OnInteracted(trigger, player)
	MODAL.Show()
	TRIGGER.isInteractable = false
end

TRIGGER.interactedEvent:Connect(OnInteracted)


function OnModalHidden(modal)
	if modal == MODAL then
		TRIGGER.isInteractable = true
	end
end

Events.Connect("ModalHidden", OnModalHidden)

