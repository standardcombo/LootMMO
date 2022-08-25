local TELEPORT_FX = script:GetCustomProperty('TeleportFX')
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
function Execute()
    local player = ABILITY.owner

    if not Object.IsValid(player) then
        return
    end

    local targetData = ABILITY:GetTargetData()
    local position = targetData:GetHitPosition()

    player:SetWorldPosition(position + Vector3.New(0, 0, 180))
    World.SpawnAsset(TELEPORT_FX, {position = position, networkContext = NetworkContextType.NETWORKED})
end

ABILITY.executeEvent:Connect(Execute)
