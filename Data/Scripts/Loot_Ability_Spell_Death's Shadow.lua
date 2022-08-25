local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end
local BeginningVFX = script:GetCustomProperty('AssassinDeathsShadowBeginningBasic')
local EndingVFX = script:GetCustomProperty('AssassinDeathsShadowEndingBasic')
local AttackVFX = script:GetCustomProperty('AssassinOrcDeathsShadowAttackBasic')
local TargetVFX = script:GetCustomProperty('AssassinOrcDeathsShadowAttackTarget')
local ASSASSIN_ORC_DEATHS_SHADOW_COSTUME_BASIC = script:GetCustomProperty('AssassinOrcDeathsShadowCostumeBasic')

local OriginalWalkSpeed = 800
local EventListeners = {}
local mods
function Attack()
    if not Object.IsValid(ABILITY) or not ABILITY.owner then
        return
    end

    World.SpawnAsset(
        AttackVFX,
        {position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
    )

    local spherePosition = ABILITY.owner:GetWorldPosition()
    local AttackRadius = mods['Range']
    local nearbyEnemies =
        COMBAT().FindInSphere(spherePosition, AttackRadius, {ignoreTeams = ABILITY.owner.team, ignoreDead = true})
    local dmg = Damage.New()
    dmg.amount = mods['Damage']
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = ABILITY.owner
    dmg.sourceAbility = ABILITY

    for _, enemy in pairs(nearbyEnemies) do
        World.SpawnAsset(TargetVFX, {position = enemy:GetWorldPosition()})
        local attackData = {
            object = enemy,
            damage = dmg,
            source = dmg.sourcePlayer,
            position = nil,
            rotation = nil,
            tags = {id = 'Assassin_E'}
        }
        COMBAT().ApplyDamage(attackData)
        warn('Apply stun')
    end
end

function OnPlayerDamaged(player, damage)
    if not player.isVisible and not player.isDead then
        DisableInvisility()
    end
end

function OnAbilityExecute(Ability)
    mods = ROOT.serverUserData.calculateModifier()
    World.SpawnAsset(
        BeginningVFX,
        {position = Ability.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
    )
    Ability.owner.isVisible = false
    ABILITY.serverUserData.OriginalStance = ABILITY.owner.animationStance
    ABILITY.owner.animationStance = 'unarmed_sit_chair_upright'
    warn('Remove all negative status effects')
    Ability.owner.maxWalkSpeed = OriginalWalkSpeed + mods['Speed']
    Task.Wait()
end

function DisableInvisility()
    if Object.IsValid(ABILITY) and ABILITY.owner then
        if not ABILITY.owner.isVisible then
            ABILITY.owner.animationStance = ABILITY.serverUserData.OriginalStance
            World.SpawnAsset(
                EndingVFX,
                {position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
            )
            ABILITY.owner.isVisible = true
        end
        ABILITY.owner.maxWalkSpeed = OriginalWalkSpeed
    end
end

function OnPlayerDied(player, _)
    DisableInvisility()
end
function OnAbilityInterrupt()
    DisableInvisility()
end

function OnAbilityRecover()
    Attack()

    DisableInvisility()
end

function OnPlayerRespawn(player)
    DisableInvisility()
end
function OnEquip(_, player)
    OriginalWalkSpeed = player.maxWalkSpeed
    table.insert(EventListeners, ABILITY.executeEvent:Connect(OnAbilityExecute))
    table.insert(EventListeners, ABILITY.interruptedEvent:Connect(OnAbilityInterrupt))
    table.insert(EventListeners, ABILITY.recoveryEvent:Connect(OnAbilityRecover))
    table.insert(EventListeners, player.diedEvent:Connect(OnPlayerDied))
    table.insert(EventListeners, player.damagedEvent:Connect(OnPlayerDamaged))
    table.insert(EventListeners, player.respawnedEvent:Connect(OnPlayerRespawn))
end

function OnUnequip(_, player)
    if not Object.IsValid(player) then
        return
    end
    DisableInvisility()
    for _, listener in ipairs(EventListeners) do
        listener:Disconnect()
    end
end

ROOT.equippedEvent:Connect(OnEquip)
ROOT.unequippedEvent:Connect(OnUnequip)
