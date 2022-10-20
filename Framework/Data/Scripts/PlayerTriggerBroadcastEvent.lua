
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local EVENT_ID = script:GetCustomProperty("EventID")
local ADDITIONAL_PARAM = script:GetCustomProperty("AdditionalParam")

TRIGGER.beginOverlapEvent:Connect(function(trigger, player)
	if player:IsA("Player") then
		Events.Broadcast(EVENT_ID, player, ADDITIONAL_PARAM)
	end
end)

