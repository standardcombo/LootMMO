local trigger = script.parent
local boostVector = trigger:GetWorldTransform():GetForwardVector() * -1
local FORCE = script:GetCustomProperty("Force")
local ALWAYS_BOOST = script:GetCustomProperty("AlwaysBoost")
local LIGHT = script:GetCustomProperty("Light")
local LIGHT_COLOR = script:GetCustomProperty("LightColor")
local SFX = script:GetCustomProperty("SFX")

if LIGHT then
  LIGHT = LIGHT:WaitForObject()
  if not LIGHT_COLOR then
    LIGHT_COLOR = Color.GREEN
  end
end

if LIGHT then LIGHT:SetColor(LIGHT_COLOR * 0.05) end
local lightsOn = false

function boostBall(ball, sfxObject)
  if not Object.IsValid(ball) or not trigger:IsOverlapping(ball) then
    if LIGHT and lightsOn then
      lightsOn = false
      LIGHT:SetColor(LIGHT_COLOR * 0.05)
    end

    if sfxObject and Object.IsValid(sfxObject) then
      sfxObject:FadeOut(0.5)
    end

    return
  end

  local ballVel = ball:GetVelocity()

  if ALWAYS_BOOST or ballVel.size < 0.01 then

    ball:SetVelocity(boostVector * FORCE)

  elseif (boostVector + ballVel:GetNormalized()).size > 1.25 then
    ball:SetVelocity(boostVector * math.max(FORCE, ballVel.size))

  else
    if sfxObject and Object.IsValid(sfxObject) then
      sfxObject:Stop()
    end

    return
  end

  if LIGHT and not lightsOn then
    lightsOn = true
    LIGHT:SetColor(LIGHT_COLOR * 5)
  end

  Task.Wait()
  boostBall(ball, sfxObject)
end

function handleBeginOverlap(thisTrigger, other)
  if other.name == "Pinball Ball" then
    local sfxObject = nil

    if SFX then
      sfxObject = World.SpawnAsset(SFX, {position = trigger:GetWorldPosition()})
      sfxObject.isTransient = true
      sfxObject.isOcclusionEnabled = false
      sfxObject.pitch = math.floor(FORCE * 2)
      sfxObject.volume = 0.3
      sfxObject:Play()
    end

    Task.Spawn(function() boostBall(other, sfxObject) end)
  end
end

trigger.beginOverlapEvent:Connect(handleBeginOverlap)
