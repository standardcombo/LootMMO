local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal})
}

modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Duration.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Heal.name].calculation = function(self, stats)
    return 2
end

local spawnVFX = script:GetCustomProperty('MageIcebergBreakBasic')

function OnGoingToTakeDamage(attackData)
    if attackData.tags and attackData.tags.id and attackData.tags.id == 'StatusEffect' then
        return
    end
    if attackData.damage.amount < 0 then
        return
    end

    if attackData.object == Equipment.owner then
        local BlockPercentage = 100
        attackData.damage.amount = attackData.damage.amount - (attackData.damage.amount * BlockPercentage)
    end
end

function Execute(self, stats)
    if self:GetCurrentPhase() == AbilityPhase.READY or self.owner.isDead then
        return
    end
    self.data.PlayerSettings = {}
    local mods = self:CalculateStats(stats) 
    self.data.PlayerSettings.movementControlMode = self.owner.movementControlMode
    self.data.PlayerSettings.maxJumpCount = self.owner.maxJumpCount

    self.owner:ResetVelocity()
    self.owner.movementControlMode = MovementMode.NONE
    self.owner.maxJumpCount = 0
    self.owner.serverUserData.DamageImmunity = true

    -- Spawn vfx
    local spawnPosition = self.owner:GetWorldPosition()
    spawnPosition.z = spawnPosition.z - 50
    local attachmentTemplate = spawnVFX
    self.data.CurrentIceCube = World.SpawnAsset(attachmentTemplate, {position = spawnPosition})

    local DamageRadius = 300
    self.data.CurrentIceCube:SetWorldScale(Vector3.New(CoreMath.Round(DamageRadius / 300, 3)))
    self.data.CurrentIceCube:AttachToPlayer(thisAbility.owner, 'root')
    goingToTakeDamageListener = Events.Connect('CombatWrapAPI.GoingToTakeDamage', OnGoingToTakeDamage)
    Timer = mods[MODIFIERS.Duration.name]
    damageTimer = 0
    Task.Wait(0.5)
    if
        thisAbility and Object.IsValid(thisAbility) and thisAbility.owner and Object.IsValid(thisAbility.owner) and
            not thisAbility.owner.isDead
     then
        BindingPressedEvent = thisAbility.owner.bindingPressedEvent:Connect(OnBindingPressed)
    end
end

function OnICEBERGCooldown(self, stats)
    local mods = self:CalculateStats(stats)

    local Cooldown = mods[MODIFIERS.Cooldown.name]
    Task.Spawn(
        function()
            if Object.IsValid(self) and self:GetCurrentPhase() == AbilityPhase.COOLDOWN then
                self:AdvancePhase()
            end
        end,
        Cooldown
    )
end

function OnBindingPressed(thisPlayer, binding)
    if CancelBindings[binding] then
        BreakIceCube(thisPlayer)
    end
end

function BreakIceCube(player)
    Timer = -1
    if BindingPressedEvent then
        BindingPressedEvent:Disconnect()
        BindingPressedEvent = nil
    end

    if goingToTakeDamageListener then
        goingToTakeDamageListener:Disconnect()
        goingToTakeDamageListener = nil
    end

    -- Spawn break vfx
    local breakTemplate = MAGE_ICEBERG_BREAK_BASIC
    World.SpawnAsset(breakTemplate, {position = player:GetWorldPosition()})

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

  

function Update(self, deltaTime)
    if Timer > 0 then
        Timer = Timer - deltaTime
        damageTimer = damageTimer - deltaTime
        if Timer < 0 and Object.IsValid(ICEBERG.owner) then
            BreakIceCube(ICEBERG.owner)
            return
        end
        local mods = CalculateStats({level = ICEBERG.owner:GetPrivateNetworkedData('Level')}) or {}

        local damageRadius = 300
        -- do damage every second
        if damageTimer < 0 then
            -- Damage enemies
            local DamageRadius = damageRadius
            local nearbyEnemies =
                COMBAT().FindInSphere(
                ICEBERG.owner:GetWorldPosition(),
                DamageRadius,
                {ignoreTeams = ICEBERG.owner.team, ignoreDead = true}
            )

            --CoreDebug.DrawSphere(ICEBERG.owner:GetWorldPosition(), DamageRadius, {duration = 1})
            for _, enemy in pairs(nearbyEnemies) do
                local dmg = Damage.New()
                dmg.amount = mods[MODIFIERS.Damage.name]
                dmg.reason = DamageReason.COMBAT
                dmg.sourcePlayer = ICEBERG.owner
                dmg.sourceAbility = ICEBERG

                local enemy = enemy
                if not enemy:IsA('Player') then
                    enemy = enemy:GetCustomProperty('Collider'):WaitForObject()
                end

                local attackData = {
                    object = enemy,
                    damage = dmg,
                    source = dmg.sourcePlayer,
                    position = nil,
                    rotation = nil,
                    tags = {id = 'Mage_T'}
                }
                COMBAT().ApplyDamage(attackData)
            end
            damageTimer = 1

            -- heal every second as
            local dmg = Damage.New()
            local heal = mods[MODIFIERS.Heal.name]
            dmg.amount = -heal
            dmg.reason = DamageReason.COMBAT
            dmg.sourcePlayer = ICEBERG.owner
            dmg.sourceAbility = ICEBERG

            local attackData = {
                object = ICEBERG.owner,
                damage = dmg,
                source = dmg.sourcePlayer,
                position = nil,
                rotation = nil,
                tags = {id = 'Mage_T'}
            }
            COMBAT().ApplyDamage(attackData)
        end
    end
end
