local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local ActiveTraps = {}
local trapTemplate = script:GetCustomProperty('HunterBearTrapPlacementBasic')

function Execute()
    ActiveTraps = ActiveTraps or {}
    if not Object.IsValid(ABILITY) or not Object.IsValid(ABILITY) then
        return
    end
    local mod = ROOT.serverUserData.calculateModifier()
    local targetData = ABILITY:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local MaxTraps = 1
    if ActiveTraps == MaxTraps then
        local oldTrap = table.remove(ActiveTraps, 1)
        if Object.IsValid(oldTrap) then
            oldTrap:Destroy()
        end
    end

    local newTrap =
        World.SpawnAsset(
        trapTemplate,
        {position = position, rotation = rotation, networkContext = NetworkContextType.NETWORKED}
    )
    newTrap.lifeSpan = 20
    table.insert(ActiveTraps, newTrap)
    newTrap:SetCustomProperty('OwnerID', ABILITY.owner.id)
    newTrap:SetCustomProperty('Damage', mod['Damage'][1])
    newTrap:SetCustomProperty('IsCrit', mod['Damage'][2])
    newTrap:SetCustomProperty('Stun', mod['StunDuration'])
    newTrap:SetCustomProperty('Bleed', mod['Bleed'])
end

ABILITY.executeEvent:Connect(Execute)
