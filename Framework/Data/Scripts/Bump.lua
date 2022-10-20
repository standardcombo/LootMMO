local LIGHT = script:GetCustomProperty("Light")
local SFX = script:GetCustomProperty("SFX")
local VFX = script:GetCustomProperty("VFX")
local FORCE = script:GetCustomProperty("Force")
local RANDOMNESS = script:GetCustomProperty("Randomness")
local DESTRUCTIBLE = script:GetCustomProperty("Destructible")
local EVENT_ON_BUMP = script:GetCustomProperty("EventOnBump")
local RESET_ON_EVENT = script:GetCustomProperty("ResetOnEvent")
local POINTS = script:GetCustomProperty("Points")

if LIGHT then
  LIGHT = LIGHT:WaitForObject()
end

local DING = script:GetCustomProperty("Ding")
local trigger = script.parent
local triggerPos = trigger:GetWorldPosition()

function handleBump(thisTrigger, other)
  if other.name == "Pinball Ball" then
    -- print("BWONK")
    local ding = World.SpawnAsset(DING, {position = triggerPos})

    local ballPos = other:GetWorldPosition()
    local ballAngularVel = other:GetAngularVelocity()

    -- local reverseVelocity = other:GetVelocity():GetNormalized() * -FORCE + Vector3.UP * 20
    local reverseVelocity = (ballPos - triggerPos):GetNormalized() * FORCE
    reverseVelocity.z = 20


    other:StopMove()
    other:SetVelocity(Rotation.New(0, 0, math.random(-RANDOMNESS * 100, RANDOMNESS * 100) / 100) * reverseVelocity)
    other:SetAngularVelocity(ballAngularVel * -1)
    other:SetLocalAngularVelocity(ballAngularVel * -1)

    if EVENT_ON_BUMP then
      Events.Broadcast(EVENT_ON_BUMP, other.clientUserData["Machine"])
    end

    Events.Broadcast("AddPoints", other.clientUserData["Machine"], POINTS or 100)

    if SFX then
      local sfx = World.SpawnAsset(SFX, {position = triggerPos})
      sfx.isTransient = true
      sfx.isOcclusionEnabled = false
      sfx.volume = 0.4
      sfx:Play()
    end

    if VFX then
      local vfx = World.SpawnAsset(VFX, {position = triggerPos, scale = Vector3.ONE * thisTrigger:GetWorldScale().size / 4})

      if not vfx:IsA("Folder") and not vfx:IsA("NetworkContext") then
        vfx.lifeSpan = 5
        vfx:Play()
      end
    end

    if LIGHT then
      LIGHT.visibility = Visibility.FORCE_ON
      Task.Wait(0.1)
      LIGHT.visibility = Visibility.FORCE_OFF
    end

    if DESTRUCTIBLE then
      trigger.collision = Collision.FORCE_OFF
      trigger.parent.visibility = Visibility.FORCE_OFF
    end
  end
end

function resetBumper(machine)
  if not World.FindObjectById(machine):IsAncestorOf(script) then return end

  trigger.collision = Collision.FORCE_ON
  trigger.parent.visibility = Visibility.INHERIT
end

trigger.beginOverlapEvent:Connect(handleBump)

if DESTRUCTIBLE then
  Events.Connect("ResetBumpers", resetBumper)

  if RESET_ON_EVENT then
    Events.Connect(RESET_ON_EVENT, resetBumper)
  end
end
