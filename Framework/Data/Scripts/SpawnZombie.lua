local FRANKEN_ZOMBIE = script:GetCustomProperty("FrankenZombie")

local function Spawn(other)
    local playerPos = other:GetWorldPosition()
    local playerBackward = -(other:GetWorldTransform():GetForwardVector())
    local spawnDistance = 300
    local zombiePos = playerPos + playerBackward * spawnDistance
    World.SpawnAsset(FRANKEN_ZOMBIE, {position = zombiePos})
end

Events.ConnectForPlayer("SpawnZombie", Spawn)