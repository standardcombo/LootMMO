
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local LOCK = script:GetCustomProperty("Lock"):WaitForObject()
local GATE = script:GetCustomProperty("Gate"):WaitForObject()
local LOCK_SFX = script:GetCustomProperty("LockSFX"):WaitForObject()
local GATE_SFX = script:GetCustomProperty("GateSFX"):WaitForObject()
local GATE_END_SFX = script:GetCustomProperty("GateEndSFX"):WaitForObject()

local LOCK_DISAPPEAR_DELAY = 0.6
local OPEN_DELAY = 4

local isOpen = false

function Open()
	if isOpen then return end
	isOpen = true
	
	LOCK.visibility = Visibility.FORCE_OFF
	
	LOCK_SFX:Play()
	
	Task.Wait(LOCK_DISAPPEAR_DELAY)
	
	local gateLowerDuration = OPEN_DELAY - LOCK_DISAPPEAR_DELAY
	
	local pos = GATE:GetWorldPosition()
	pos = pos - Vector3.New(0, 0, 1000)
	GATE:MoveTo(pos, gateLowerDuration)
	
	GATE_SFX:Play()
	Task.Wait(gateLowerDuration)
	GATE_SFX:Stop()
	GATE_END_SFX:Play()
end

TRIGGER.beginOverlapEvent:Connect(function(trigger, player)
	if isOpen then return end
	if not player:IsA("Player") then return end
	
	if player:GetResource("Keys") > 0 then
		Open()
	end
end)

