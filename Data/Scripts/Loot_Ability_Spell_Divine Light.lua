 
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local activateVFX = script:GetCustomProperty('HealerOrcDivineLightActiveBasic')
local ImpulseAmount = 14000

function AddImpulseToPlayer(ABILITY, player)
    local directionVector = player:GetWorldPosition() - ABILITY.owner:GetWorldPosition()
    directionVector = directionVector / directionVector.size
    directionVector.z = 0.5
    local impulseVector = directionVector * ImpulseAmount

    player:ResetVelocity()
    player:AddImpulse(impulseVector)
end

function Execute()
    if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
        return
    end
    local mod = ROOT.serverUserData.calculateModifier()
    local newObject =
        World.SpawnAsset(
        activateVFX,
        {position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
    )

    local StunRadius = mod[ "Radius"]
    local nearbyEnemies =
        Game.FindPlayersInCylinder(ABILITY.owner:GetWorldPosition(), StunRadius, {ignoreTeams = ABILITY.owner.team})

    ImpulseAmount = ImpulseAmount

    warn('Add Status effect blind and speed')
    local statusEffects = {}
    local status = statusEffects.BLIND
    local speedStatus = statusEffects.SPEED
    local healAmmount = mod['Heal']

    ABILITY.owner.hitPoints = CoreMath.Clamp(ABILITY.owner.hitPoints + healAmmount, ABILITY.owner.maxHitPoints)

    for _, enemy in pairs(nearbyEnemies) do
        AddImpulseToPlayer(ABILITY, enemy)
    end
end
ABILITY.executeEvent:Connect(Execute)
