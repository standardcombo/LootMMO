 
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

local SpawnVfx = script:GetCustomProperty('WarriorStoneWallPlacementBasic')
function Execute()
    local thisAbility = ABILITY
    local player = ABILITY

    if not Object.IsValid(player) then
        return
    end

    local targetData = thisAbility:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local newObject =
        World.SpawnAsset(
        SpawnVfx,
        {position = position, rotation = rotation, networkContext = NetworkContextType.NETWORKED}
    )
    local newLifeSpan = ROOT.serverUserData.CalculateModifier('Duration')
    newObject.lifeSpan = newLifeSpan
    newObject:SetCustomProperty('lifeSpan', newLifeSpan)
end

ABILITY.executeEvent:Connect(Execute)
