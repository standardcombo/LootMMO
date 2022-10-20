
local DAMAGEABLE = script:FindAncestorByType("DamageableObject")
local EVENT_ID = script:GetCustomProperty("EventID")
local DELAY = script:GetCustomProperty("Delay")

function OnDied()
	Task.Wait(DELAY)
	Events.Broadcast(EVENT_ID)
end

if EVENT_ID ~= nil and EVENT_ID ~= "" then
	DAMAGEABLE.diedEvent:Connect(OnDied)
end
