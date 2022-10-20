local LIGHTS = script:GetCustomProperty("Lights"):WaitForObject()
local EYES = script:GetCustomProperty("Eyes"):WaitForObject()
local CANNON = script:GetCustomProperty("PinballCannon"):WaitForObject()
local SFX = script:GetCustomProperty("SFX")

local trigger = script.parent
local cannonPos = CANNON:GetWorldPosition()
local animationTask = nil

function darkPirateMagic(ball)
  local machineId = ball.clientUserData["Machine"]

  ball.collision = Collision.FORCE_OFF

  Task.Wait(0.2)

  Events.Broadcast("DarkPirateMagic", machineId, cannonPos)

  Task.Wait()

  if Object.IsValid(ball) then
    Events.Broadcast("KillBall", machineId, ball.id)
  end

  Task.Wait(2)

  EYES.visibility = Visibility.INHERIT
  Events.Broadcast("PlaySound", machineId, SFX, {position = trigger:GetWorldPosition()})

  Task.Wait(8)

  LIGHTS.visibility = Visibility.INHERIT
  EYES.visibility = Visibility.FORCE_OFF
  Task.Wait(3)

  local ballsInMouth = true -- lol

  while ballsInMouth do
    ballsInMouth = false

    for _, other in ipairs(trigger:GetOverlappingObjects()) do
      if other.name  == "Pinball Ball" then
        ballsInMouth = true
        break
      end
    end

    Task.Wait(0.5)
  end

  Task.Wait(0.5)

  Events.Broadcast("ResetTeeth", machineId)
  cancelAnimation(machineId)
end

function handleGrab(thisTrigger, other)
  if animationTask then return end
  if other.name == "Pinball Ball" then
    animationTask = Task.Spawn(function() darkPirateMagic(other) end)
  end
end

function cancelAnimation(machineId)
  if not World.FindObjectById(machineId):IsAncestorOf(script) then return end

  if animationTask then
    animationTask:Cancel()
    animationTask = nil
  end

  LIGHTS.visibility = Visibility.INHERIT
  EYES.visibility = Visibility.FORCE_OFF
end

trigger.beginOverlapEvent:Connect(handleGrab)
Events.Connect("ResetBumpers", cancelAnimation)
