-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local PORTAL_HOLOGRAM_ASSET = script:GetCustomProperty("PortalHologramAsset")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local WAIT_DURATION = .5
local DURATION = 2

local PORTAL_COOLDOWN = 5
local lastTime = time()
local currentId = nil

function Tick()
    if not currentId then return end
    if time() - lastTime > PORTAL_COOLDOWN then
        OnPortalHologram(currentId)
        lastTime = time()
    end
end

function OnPortalHologram(portalId, duration)
    local portalStats = API.GetStats(portalId)
    if not portalStats then return end

    local spawnPoint = portalStats.spawnPoint
    local triggerPos = portalStats.trigger:GetWorldPosition()
    triggerPos.z = spawnPoint:GetWorldPosition().z
    local walkDuration = DURATION

    if duration then
        walkDuration = duration - WAIT_DURATION
    end

    local instance = World.SpawnAsset(PORTAL_HOLOGRAM_ASSET, {
        position = spawnPoint:GetWorldPosition(), 
        rotation = spawnPoint:GetWorldRotation()})

    Task.Wait(WAIT_DURATION)
    instance:MoveTo(triggerPos, walkDuration)
    instance.animationStance = "unarmed_run_forward"
    instance.lifeSpan = walkDuration
    Task.Wait(walkDuration)
    Events.Broadcast("PortalEffect", nil, portalStats)
end

function OnPortalStats(newPortalId, prevPortalId)
    if newPortalId and currentId ~= newPortalId then
        lastTime = time()
    end
    currentId = newPortalId
end

Events.Connect("PortalHologram", OnPortalHologram)
Events.Connect("PortalStats", OnPortalStats)