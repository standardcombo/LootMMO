--[[
	Loot Ability Spell: Iceberg
	v1.0.1 - 2022/10/25
	by: blaking707, Luapi
]]

local MAGE_ABILITY_BREAK_BASIC = script:GetCustomProperty('MageIcebergBreakBasic')
local MAGE_ORC_ABILITY_ATTACHMENT_BASIC = script:GetCustomProperty('MageOrcIcebergAttachmentBasic')
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local spawnVFX = MAGE_ORC_ABILITY_ATTACHMENT_BASIC

local PlayerSettings
local CurrentIceCube
local goingToTakeDamageListener = nil
local mods
local isActive = false

function OnGoingToTakeDamage(attackData)
    if attackData.tags and attackData.tags.id and attackData.tags.id == 'StatusEffect' then
        return
    end
    if attackData.damage.amount < 0 then
        return
    end

    if attackData.object == ROOT.owner then
        local BlockPercentage = 100
        attackData.damage.amount = attackData.damage.amount - (attackData.damage.amount * BlockPercentage)
    end
end

function Execute()
    isActive = true
    local owner = ABILITY.owner
    if ABILITY:GetCurrentPhase() == AbilityPhase.READY or owner.isDead then
        return
    end
    PlayerSettings = {}
    mods = ROOT.serverUserData.CalculateAllModifiers()

    PlayerSettings.movementControlMode = owner.movementControlMode
    PlayerSettings.maxJumpCount = owner.maxJumpCount

    owner:ResetVelocity()
    owner.movementControlMode = MovementMode.NONE
    owner.maxJumpCount = 0
    owner.serverUserData.DamageImmunity = true

    local spawnPosition = owner:GetWorldPosition()
    spawnPosition.z = spawnPosition.z - 50
    local attachmentTemplate = spawnVFX
    CurrentIceCube =
        World.SpawnAsset(attachmentTemplate, {position = spawnPosition, networkContext = NetworkContextType.NETWORKED})

    local DamageRadius = 500
    CurrentIceCube:SetWorldScale(Vector3.New(CoreMath.Round(DamageRadius / 300, 3)))
    CurrentIceCube:AttachToPlayer(ABILITY.owner, 'root')
    goingToTakeDamageListener = _G.CombatEvents.goingToTakeDamageEvent:Connect(OnGoingToTakeDamage)
    Task.Wait(0.5)
end

function BreakIceCube(player)
    isActive = false
    if goingToTakeDamageListener then
        goingToTakeDamageListener:Disconnect()
        goingToTakeDamageListener = nil
    end

    -- Spawn break vfx
    local breakTemplate = MAGE_ABILITY_BREAK_BASIC
    World.SpawnAsset(
        breakTemplate,
        {position = player:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
    )

    -- Destroy attached iceberg
    if CurrentIceCube and Object.IsValid(CurrentIceCube) then
        CurrentIceCube:Detach()
        CurrentIceCube:Destroy()
        CurrentIceCube = nil
    end

    player.movementControlMode = PlayerSettings.movementControlMode
    player.maxJumpCount = PlayerSettings.maxJumpCount
    player.serverUserData.DamageImmunity = false
end

function Recovery()
    BreakIceCube(ABILITY.owner)
end

function Tick(deltaTime)
    if isActive then
        local damageRadius = 300
        local DamageRadius = damageRadius
        local nearbyEnemies =
            COMBAT().FindInSphere(
            ABILITY.owner:GetWorldPosition(),
            DamageRadius,
            {ignoreTeams = ABILITY.owner.team, ignoreDead = true}
        )

        for _, enemy in pairs(nearbyEnemies) do
            local dmg = Damage.New()
            dmg.amount = mods['Damage'][1]
            dmg.reason = DamageReason.COMBAT
            dmg.sourcePlayer = ABILITY.owner
            dmg.sourceAbility = ABILITY

            local enemy = enemy
            if not enemy:IsA('Player') then
                enemy = enemy:GetCustomProperty('Collider'):WaitForObject()
            end

            local IsCrit = mods['Damage'][2]
            local attackData = {
                object = enemy,
                damage = dmg,
                source = dmg.sourcePlayer,
                position = nil,
                rotation = nil,
                tags = {id = 'Mage_T', Critical = IsCrit}
            }
            COMBAT().ApplyDamage(attackData)
        end

        -- heal every second as
        local dmg = Damage.New()
        local heal = mods['Heal']
        dmg.amount = -heal
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = ABILITY.owner
        dmg.sourceAbility = ABILITY

        local attackData = {
            object = ABILITY.owner,
            damage = dmg,
            source = dmg.sourcePlayer,
            position = nil,
            rotation = nil,
            tags = {id = 'Mage_T'}
        }
        COMBAT().ApplyDamage(attackData)
        Task.Wait(1)
    end
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.recoveryEvent:Connect(Recovery)
ABILITY.interruptedEvent:Connect(Recovery)
