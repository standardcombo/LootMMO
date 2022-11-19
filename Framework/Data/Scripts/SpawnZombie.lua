local FRANKEN_ZOMBIE = script:GetCustomProperty("FrankenZombie")
local zombieTable = {}
local listeners = {}

local function Spawn(other)
    local playerPos = other:GetWorldPosition()
    local playerBackward = -(other:GetWorldTransform():GetForwardVector())
    local spawnDistance = 300
    local zombiePos = playerPos + playerBackward * spawnDistance
    local zombie = World.SpawnAsset(FRANKEN_ZOMBIE, {position = zombiePos})
    local zombieData = {other, zombie}
    table.insert(zombieTable, zombieData)
    local listenerData = {other, other.diedEvent:Connect(OnPlayerDied)}
    table.insert(listeners, listenerData)
end

function OnPlayerDied(player, damage)
    for index, value in ipairs(listeners) do
        if value[1] == player then
            value[2]:Disconnect()
            table.remove(listeners, index)
        end
    end
    for index, value in ipairs(zombieTable) do
        if value[1] == player then
            if Object.IsValid(value[2]) then
                value[2]:SetWorldPosition(Vector3.New(9999,9999,9999))
                value[2]:Destroy()
                table.remove(zombieTable, index)
            end
        end
    end
    player:SetResource("Greeter", 1)
end

Events.ConnectForPlayer("SpawnZombie", Spawn)