
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local COLLIDER = script:GetCustomProperty("Collider"):WaitForObject()

local OPEN_DELAY = 5

local isOpen = false

function Open()
	if isOpen then return end
	isOpen = true
	
	Task.Wait(OPEN_DELAY)
	
	COLLIDER.collision = Collision.FORCE_OFF
end

TRIGGER.beginOverlapEvent:Connect(function(trigger, player)
	if isOpen then return end
	if not player:IsA("Player") then return end
	
	Task.Wait()
	if not Object.IsValid(player) then return end
	
	if player:GetResource("Keys") > 0
	and not isOpen
	then
		player:RemoveResource("Keys", 1)
		Open()
	end
end)

