 
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local ImpulsAmount = 140000
local lifeSpan = 5
local SPAWN_VFX = script:GetCustomProperty('Spawn_VFX')

function AddImpulse(player)
    local impulseVector

    if player then
        local forwardVector = player:GetWorldRotation() * Vector3.FORWARD
        local oppositeVector = -forwardVector
        oppositeVector.z = 1
        impulseVector = oppositeVector * ImpulsAmount
    end
    player:ResetVelocity()
    player:AddImpulse(impulseVector)
end

function Cast(thisAbility)
    if not thisAbility.owner.isGrounded then
        thisAbility:Interrupt()
    end
end

function Execute()
    local mod = ROOT.serverUserData.calculateModifier()
    local owner = ABILITY.owner
    local targetPosition = owner:GetWorldPosition()
    local targetRotation = Rotation.ZERO

    AddImpulse(owner)

    local hitResult = World.Raycast(targetPosition, targetPosition - Vector3.New(0, 0, 5000), {ignorePlayers = true})
    if hitResult then
        targetPosition = hitResult:GetImpactPosition()
        targetRotation = Rotation.New(Vector3.FORWARD, hitResult:GetImpactNormal())
    else
        targetPosition.z = targetPosition.z - 100
    end

    local ImpulseRadius = 200
    local vfxScale = Vector3.New(CoreMath.Round(ImpulseRadius / 50, 3))

    local trapTemplate = SPAWN_VFX
    local newTrap =
        World.SpawnAsset(
        trapTemplate,
        {
            position = targetPosition,
            rotation = targetRotation,
            scale = vfxScale,
            networkContext = NetworkContextType.NETWORKED
        }
    )
    newTrap.lifeSpan = lifeSpan
    newTrap:SetCustomProperty('lifeSpan', newTrap.lifeSpan)

    local nearbyEnemies =
        Game.FindPlayersInCylinder(owner:GetWorldPosition(), ImpulseRadius, {ignoreTeams = owner.team})
    local bleedStatus = nil
    local slowStatus = nil

    for _, enemy in pairs(nearbyEnemies) do
        warn('apply bleed')
        warn('apply slow')
    end
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.castEvent:Connect(Cast)