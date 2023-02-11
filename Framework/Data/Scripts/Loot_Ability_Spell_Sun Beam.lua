 
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local projectileVFX = script:GetCustomProperty('HealerOrcSunBeamProjectileBasic')

function Execute()
    local player = ROOT.owner
    local SpecialAbility = ABILITY
    if SpecialAbility:GetCurrentPhase() == AbilityPhase.READY then
        return
    end

    local SPEED = ROOT.serverUserData.CalculateModifier('Speed')
    local RANGE = ROOT.serverUserData.CalculateModifier('Range')
    local MOVE_DURATION = RANGE / SPEED
    local LIFE_SPAN = MOVE_DURATION + 5

    -- Get the velocity vecotr based on the player's forward vector
    local LookRotation = player:GetLookWorldRotation()
    local LookQuaternion = Quaternion.New(LookRotation)
    local ForwardVector = LookQuaternion:GetForwardVector() * Vector3.New(1, 1, 0)
    local VelocityVector = ForwardVector * SPEED

    local WorldPosition = player:GetWorldPosition() + (ForwardVector * 200)

    local newProjectile =
        World.SpawnAsset(projectileVFX, {position = WorldPosition, networkContext = NetworkContextType.NETWORKED})
    newProjectile:SetCustomProperty('damage', ROOT.serverUserData.CalculateModifier('Damage'))
    newProjectile:SetCustomProperty('heal', ROOT.serverUserData.CalculateModifier('Heal'))
    newProjectile:SetCustomProperty('ability', SpecialAbility)

    local ViewRotation = SpecialAbility.owner:GetViewWorldRotation()
    ViewRotation.x = 0
    ViewRotation.y = 0
    newProjectile:SetWorldRotation(ViewRotation)
    newProjectile:MoveContinuous(VelocityVector)
    newProjectile.lifeSpan = LIFE_SPAN
end

ABILITY.executeEvent:Connect(Execute)
