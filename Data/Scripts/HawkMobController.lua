local AnimatedMesh = script:GetCustomProperty('AnimatedMesh'):WaitForObject()
local HawkRoot = script:GetCustomProperty('HawkRoot'):WaitForObject()
local AnimationStance = script:GetCustomProperty('AnimationStance')
local AttackSound = script:GetCustomProperty('AttackSound'):WaitForObject()
local Costume = script:GetCustomProperty('Costume'):WaitForObject()
local DestroyVFX = script:GetCustomProperty('DestroyVFX')
local OFFSET = script:GetCustomProperty('Offset'):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function GetCurrentState()
    return HawkRoot:GetCustomProperty('CurrentState')
end
local currentState = GetCurrentState()
function Setup()
    for _, attachment in ipairs(Costume:GetChildren()) do
        if attachment.name == 'VFX' then
            AnimatedMesh:AttachCoreObject(attachment, 'spine')
            if LOCAL_PLAYER.id == OwnerID then
                attachment.visibility = Visibility.FORCE_ON
            end
        else
            attachment.visibility = Visibility.FORCE_ON
            AnimatedMesh:AttachCoreObject(attachment, attachment.name)
        end
    end
    AnimatedMesh.animationStance = AnimationStance

    AnimatedMesh.parent = nil
    AnimatedMesh:Follow(OFFSET, 1400)
end
Setup()

function Attack()
    AnimatedMesh:PlayAnimation('unarmed_slash', {playbackRate = 0.8})
    AttackSound:Play()
end
function OnNetworkPropertyChanged(thisObject, name)
    if (name == 'CurrentState') then
        local isAttacking = thisObject:GetCustomProperty(name)
        local newState = GetCurrentState()

        if newState == 2 and currentState ~= 2 then
            Attack()
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

HawkRoot.destroyEvent:Connect(OnRootDestroyed)
HawkRoot.customPropertyChangedEvent:Connect(OnNetworkPropertyChanged)

function Tick()
    AnimatedMesh:RotateTo(HawkRoot:GetWorldRotation(), 0.1)
end
