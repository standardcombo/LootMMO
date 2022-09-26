local TELEPORT_FX = script:GetCustomProperty('TeleportFX')
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
function Execute()
    local player = ABILITY.owner

    if not Object.IsValid(player) then
        return
    end

    local Direction = player:GetWorldRotation() * Vector3.FORWARD
    Direction.z = 0
    local playerpos = player:GetWorldPosition() + Vector3.UP * 50
    local EndPosition = playerpos + Direction * 1000
    local hit = World.Spherecast(playerpos, EndPosition, 100, {ignorePlayers = true})
    if hit then
        EndPosition = hit:GetImpactPosition()
    end

    player:SetWorldPosition(EndPosition)
    World.SpawnAsset(TELEPORT_FX, {position = EndPosition, networkContext = NetworkContextType.NETWORKED})
end

ABILITY.executeEvent:Connect(Execute)
