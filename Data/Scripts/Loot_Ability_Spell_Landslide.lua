local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.BashRadius.name] = setmetatable({}, {__index = MODIFIERS.BashRadius})
}
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.BashRadius.name].calculation = function(self, stats)
    return 2
end
local OwnerImpulseAmount = 150000
local DEFAULT_Stun = {duration = 4.0, damage = 0, multiplier = 0}
local PlayerVFX = nil
local DashImpulseVector = nil
local TriggerEventConnection = nil

local AttachedFX = nil
local bashVFX = nil

function AddImpulseToPlayer(self, player)
    local mod = self:CalculateStats(self)
    warn('Apply effect stun')

    -- Do damage
    local dmgAmount = mod[MODIFIERS.Damage.name]
    local dmg = Damage.New(dmgAmount)
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = self.owner
    dmg.sourceAbility = self

    local attackData = {
        object = player,
        damage = dmg,
        source = dmg.sourcePlayer,
        position = nil,
        rotation = nil,
        tags = {id = 'Warrior_R'}
    }
    COMBAT().ApplyDamage(attackData)
end

function OnBeginOverlap(thisTrigger, other)
    if (other:IsA('Player') or other.name == 'Collider') and other.team ~= SpecialAbility.owner.team then
        AddImpulseToPlayer(self, other)
    end
end

local function DashOn(self)
    if self and Object.IsValid(self:GetCurrentAbility()) and self:GetCurrentPhase() == AbilityPhase.READY then
        return
    end
    self.data.originalPlayerSettings = {}
    self.data.originalPlayerSettings.BrakingDecelerationWalking = self.owner.brakingDecelerationWalking
    self.data.originalPlayerSettings.AnimationStance = self.owner.animationStance

    self.owner.movementControlMode = MovementMode.NONE
    self.owner.animationStance = '1hand_melee_shield_block'
    self.owner.groundFriction = 0
    self.owner.brakingDecelerationWalking = 0

    local directionVector = self.owner:GetWorldRotation() * Vector3.FORWARD
    self.data.DashImpulseVector = directionVector * OwnerImpulseAmount

    local attachmentTemplate = PlayerVFX.Attachment
    AttachedFX = META_AP().SpawnAsset(attachmentTemplate, {position = SpecialAbility.owner:GetWorldPosition()})
    AttachedFX:AttachToPlayer(SpecialAbility.owner, 'root')

    for _, other in ipairs(Trigger:GetOverlappingObjects()) do
        if other:IsA('Player') then
            AddImpulseToPlayer(self, other)
        end
    end

    TriggerEventConnection = Trigger.beginOverlapEvent:Connect(OnBeginOverlap)
end
local function DashOff(self)
    if TriggerEventConnection then
        TriggerEventConnection:Disconnect()
    end

    if Object.IsValid(AttachedFX) then
        AttachedFX:Destroy()
    end

    if self and Object.IsValid(self) and originalPlayerSettings ~= {} then
        self.owner.brakingDecelerationWalking = originalPlayerSettings.BrakingDecelerationWalking
        self.owner.animationStance = originalPlayerSettings.AnimationStance
        self.owner.groundFriction = 8
        self.owner.movementControlMode = MovementControlMode.LOOK_RELATIVE
    end
end

function ToggleDash(self, mode)
    if mode then
        DashOn(self)
    else
        DashOff(self)
    end
    self.data.isDashing = mode
end

function Cast(self)
    if not self.owner.isGrounded then
        self:Interrupt()
    end
end

function Execute(self)
    ToggleDash(self, true)
end

function OnInterrupted(self)
    if self.data.isDashing then
        ToggleDash(self, false)
    end
end

function Cooldown(self)
    ToggleDash(self, false)

    local bashTemplate = bashVFX
    World.SpawnAsset(bashTemplate, {position = self.owner:GetWorldPosition(), rotation = self.owner:GetWorldRotation()})

    local sphereRadius = nil
    local nearbyEnemies =
        Game.FindPlayersInSphere(self.owner:GetWorldPosition(), sphereRadius, {ignoreTeams = self.owner.team})
    for _, enemy in pairs(nearbyEnemies) do
        AddImpulseToPlayer(self, enemy)
    end
end

function OnUnequip(equipment, player)
    if TriggerEventConnection then
        TriggerEventConnection:Disconnect()
    end
    if Object.IsValid(AttachedFX) then
        AttachedFX:Destroy()
    end

    player.movementControlMode = MovementControlMode.LOOK_RELATIVE
    player.groundFriction = 8
    player.brakingDecelerationWalking = 1000
end

function Update(self, deltaTime)
    if Object.IsValid(self:GetCurrentAbility()) and Object.IsValid(self.owner) then
        self.owner:AddImpulse(DashImpulseVector * (deltaTime * 10))
    end
end
