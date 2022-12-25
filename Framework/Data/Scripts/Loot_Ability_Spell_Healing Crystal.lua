 

local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local healingCrystal = script:GetCustomProperty('HealerOrcHealingCrystalPlacementBasic')
local DEFAULT_Radius = 500

function Execute()
    local player = ABILITY.owner

    if not Object.IsValid(player) then
        return
    end

    local thisAbility = ABILITY
    local targetData = thisAbility:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local newObject =
        World.SpawnAsset(
        healingCrystal,
        {position = position, rotation = rotation, networkContext = NetworkContextType.NETWORKED}
    )
    local radius = ROOT.serverUserData.CalculateModifier('Radius')
    newObject:SetWorldScale(Vector3.New(CoreMath.Round(radius / DEFAULT_Radius, 3)))
    newObject:SetCustomProperty('Heal', ROOT.serverUserData.CalculateModifier('Heal'))
    newObject:SetCustomProperty('Ability', ABILITY)
    newObject.lifeSpan = ROOT.serverUserData.CalculateModifier('Duration')
end
ABILITY.executeEvent:Connect(Execute)
