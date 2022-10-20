
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local IMPULSE_POWER = script:GetCustomProperty("ImpulsePower")
local VFX = script:GetCustomProperty("Vfx")

function OnBeginOverlap(theTrigger, player)
	if player:IsA("Player") then
		player:AddImpulse(Vector3.UP * player.mass * IMPULSE_POWER)
		local playerPos = player:GetWorldPosition()
		local lavaEffect = World.SpawnAsset(VFX, {position = playerPos})
		lavaEffect:AttachToPlayer(player, "root")
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)

