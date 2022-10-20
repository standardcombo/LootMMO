local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local EVENT_NAME = script:GetCustomProperty("EventName")

function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		API_RE.Broadcast(EVENT_NAME)
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
