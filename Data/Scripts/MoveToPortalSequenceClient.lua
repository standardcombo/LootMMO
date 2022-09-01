local LOCAL_PLAYER = Game.GetLocalPlayer()
local PORTAL_EFFECT = script:GetCustomProperty("PortalEffect")
local STOP_THRESHOLD = 120*120

local SEQUENCE_DURATION = 7
local PORTAL_EFFECT_DURATION = .25
local MIN_EMISSIVE_BOOST = 1.8
local MAX_EMISSIVE_BOOST = 50

local lastTime = time()
local portalEffects = {}
local portalPos = nil
local currentEntranceTrigger = nil

function Tick(deltaTime)
    if #portalEffects == 0 then return end

    for index, data in ipairs(portalEffects) do
        if data.currentCount == 1 then
            table.remove(portalEffects, index)
            return
        end
        local lerpSpeed = deltaTime / PORTAL_EFFECT_DURATION
        
        if data.revert then
            data.t = data.t - lerpSpeed
        else
            data.t = data.t + lerpSpeed
        end

        if data.t > 1 then
            data.revert = true
            data.t = 1

        elseif data.t < 0 then
            data.currentCount = data.currentCount + 1
            data.t = 0
            data.revert = false
        end
        
        data.portalEntranceVFX:SetSmartProperty("Emissive Boost", CoreMath.Lerp(MIN_EMISSIVE_BOOST, MAX_EMISSIVE_BOOST, data.t))
    end
end

function GetDistanceBetweenPlayers(player1, player2)
    return (player2:GetWorldPosition() - player1:GetWorldPosition()).size
end

function LerpRotation(from, to, t)
    local fromQuat = Quaternion.New(from)
    local toQuat = Quaternion.New(to)
    return Rotation.New(Quaternion.Slerp(fromQuat, toQuat, t))
end

function OnMovementHook(player, params)
    if portalPos then
        local playerPos = LOCAL_PLAYER:GetWorldPosition()
        local direction = portalPos - playerPos
        if direction.sizeSquared < STOP_THRESHOLD then
            portalPos = nil
        elseif time() - lastTime > SEQUENCE_DURATION then
            portalPos = nil
        else
            direction = direction * Vector3.New(1, 1, 0)
            params.direction = direction:GetNormalized()
        end
        local t = CoreMath.Lerp(0, 1, (time() - lastTime) / 0.25)
        if t < 1 then
            local entranceTriggerRot = currentEntranceTrigger:GetWorldRotation()
            entranceTriggerRot.x = 0
            LOCAL_PLAYER:SetLookWorldRotation(LerpRotation(LOCAL_PLAYER:GetLookWorldRotation(), entranceTriggerRot, t))
        end
    else
        portalPos = nil
    end
end

function OnPortalSequence(player, stats)
    if player == LOCAL_PLAYER then
        portalPos = stats.trigger:GetWorldPosition()
        currentEntranceTrigger = stats.entranceTrigger
        lastTime = time()
    end
end

function OnPortalEffect(player, stats)
    if player and player ~= LOCAL_PLAYER and GetDistanceBetweenPlayers(LOCAL_PLAYER, player) > 4000 then
        return
    end
    table.insert(portalEffects, {
        portalEntranceVFX = stats.portalEntranceVFX,
        revert = false,
        t = 0,
        currentCount = 0
    })

    -- Assumes this template to have lifespan
    World.SpawnAsset(PORTAL_EFFECT, {position = stats.portalEntranceVFX:GetWorldPosition()})
end

LOCAL_PLAYER.movementHook:Connect(OnMovementHook)
Events.Connect("PortalEffect", OnPortalEffect)
Events.Connect("PortalSequence", OnPortalSequence)