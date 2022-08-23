-- find which player we are attached to
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()

Task.Wait()

local owner = ROOT.clientUserData.owner
local source = ROOT.clientUserData.source

local BEAMS = script:GetCustomProperty("Beams"):WaitForObject()
BEAMS.parent = World.GetRootObject()
BEAMS:SetTransform(Transform.New())

local beams = BEAMS:GetChildren()

local lastTickTime = time()

function Tick()
    local radius = 600
    local players = Game.FindPlayersInSphere(owner:GetWorldPosition(), radius, {ignorePlayers = owner, includeTeams = owner.team} )

    local srcPosition = script:GetWorldPosition()
    local fakeDamageTick = false

    if time()-lastTickTime > 1 then
        lastTickTime = time()
        fakeDamageTick = true
    end

    for i=1, math.max(#players, #beams) do
        local beam = BEAMS:GetChildren()[i]
        if i > #players then
            if Object.IsValid(beam) then
                beam:Stop()
            end
        else
            local zapPlayer = players[i]

            if Object.IsValid(beam) then
                beam:Play()
                local destPosition = zapPlayer:GetWorldPosition() + Vector3.UP * 50
                local delta = destPosition - srcPosition

                local transform = Transform.New(
                    Rotation.New(delta, Vector3.UP),
                    (destPosition + srcPosition)/2,
                    Vector3.FORWARD * delta.size / 100 + Vector3.UP * 1 )

                beam:SetTransform(transform)
            end

            if fakeDamageTick then
                if zapPlayer ~= LOCAL_PLAYER and (owner == LOCAL_PLAYER or LOCAL_PLAYER.id == source) then
                    Events.Broadcast("PlayerDamage", 15, owner:GetWorldPosition(), zapPlayer, LOCAL_PLAYER)
                end
            end
        end
    end

    if fakeDamageTick then
        if owner ~= LOCAL_PLAYER and (LOCAL_PLAYER.id == source) then
            --Events.Broadcast("PlayerDamage", 15, owner:GetWorldPosition(), owner, LOCAL_PLAYER)
        end
    end
end

script.destroyEvent:Connect(function()
    BEAMS:Destroy()
end
)