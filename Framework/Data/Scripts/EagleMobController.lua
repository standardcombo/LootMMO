local AnimatedMesh = script:GetCustomProperty('AnimatedMesh'):WaitForObject()
local EagleRoot = script:GetCustomProperty('EagleRoot'):WaitForObject()
local AnimationStance = script:GetCustomProperty('AnimationStance')
local AttackSound = script:GetCustomProperty('AttackSound'):WaitForObject()
local Costume = script:GetCustomProperty('Costume'):WaitForObject()
local DestroyVFX = script:GetCustomProperty('DestroyVFX')
local OFFSET = script:GetCustomProperty('Offset'):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local STATE_SLEEPING = 0
local STATE_ENGAGING = 1
local STATE_ATTACK_CAST = 2
local STATE_ATTACK_RECOVERY = 3
local STATE_PATROLLING = 4
local STATE_LOOKING_AROUND = 5
local STATE_DEAD_1 = 6
local STATE_DEAD_2 = 7
local STATE_DISABLED = 8
local STATE_STUNNED = 9
local STATE_TELEPORTING = 10

function GetCurrentState()
    return EagleRoot:GetCustomProperty('CurrentState')
end
local currentState = GetCurrentState()
function Setup()
    for _, attachment in ipairs(Costume:GetChildren()) do
        if attachment.name == 'VFX' then
            AnimatedMesh:AttachCoreObject(attachment, 'spine')
            -- if LOCAL_PLAYER.id == OwnerID then
            --     attachment.visibility = Visibility.FORCE_ON
            -- end
        else
            AnimatedMesh:AttachCoreObject(attachment, attachment.name)
        end
        attachment.visibility = Visibility.FORCE_ON
    end
    AnimatedMesh.animationStance = AnimationStance

    AnimatedMesh.parent = World.GetRootObject()
    AnimatedMesh:Follow(OFFSET, 1400)
end
Setup()

function Attack()
    AnimatedMesh:PlayAnimation('unarmed_slash', {playbackRate = 0.8})
    AttackSound:Play()
end

function TeleportToOwner()
    if Object.IsValid(AnimatedMesh) then
        World.SpawnAsset(DestroyVFX, {position = AnimatedMesh:GetWorldPosition()})
        AnimatedMesh:StopMove()
        AnimatedMesh:SetWorldPosition(EagleRoot:GetWorldPosition())
        World.SpawnAsset(DestroyVFX, {position = AnimatedMesh:GetWorldPosition()})
        AnimatedMesh:Follow(OFFSET, 1400)
    end
end

function OnNetworkPropertyChanged(thisObject, name)
    if (name == 'CurrentState') then
        local isAttacking = thisObject:GetCustomProperty(name)
        local newState = GetCurrentState()
        if newState == currentState then return end

        if newState == STATE_ATTACK_CAST and currentState ~= STATE_ATTACK_CAST then
            Attack()
        elseif newState == STATE_TELEPORTING then
            TeleportToOwner()
        end
        currentState = newState
    end
end

function OnRootDestroyed(thisObject)
    if Object.IsValid(AnimatedMesh) then
        World.SpawnAsset(DestroyVFX, {position = AnimatedMesh:GetWorldPosition()})
        Task.Wait()
        AnimatedMesh:Destroy()
    end
end

EagleRoot.destroyEvent:Connect(OnRootDestroyed)
EagleRoot.customPropertyChangedEvent:Connect(OnNetworkPropertyChanged)

function Tick()
    AnimatedMesh:RotateTo(EagleRoot:GetWorldRotation(), 0.1)
end
