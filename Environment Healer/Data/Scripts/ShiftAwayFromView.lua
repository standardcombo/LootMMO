
local OBJECT_TO_SHIFT = script:GetCustomProperty("ObjectToShift"):WaitForObject()
local REFERENCE_OBJECT = script:GetCustomProperty("ReferenceObject"):WaitForObject()
local DISTANCE = script:GetCustomProperty("Distance")

local player = Game.GetLocalPlayer()

function Tick()
	local pos = REFERENCE_OBJECT:GetWorldPosition()
	--local viewForward = Quaternion.New(player:GetViewWorldRotation()):GetForwardVector()
	local viewForward = (pos - player:GetViewWorldPosition()):GetNormalized()
	pos = pos + viewForward * DISTANCE
	OBJECT_TO_SHIFT:SetWorldPosition(pos)
end