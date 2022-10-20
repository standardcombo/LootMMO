local VFX = script:GetCustomProperty("VFX")

local trigger = script.parent

function handleOverlap(thisTrigger, other)
  if other.name == "Pinball Ball" then
    Task.Wait(0.1)

    if Object.IsValid(other) then
      other.collision = Collision.FORCE_OFF

      if VFX then
        World.SpawnAsset(VFX, {position = thisTrigger:GetWorldPosition()})
      end
    end

    Task.Wait(0.1)

    if Object.IsValid(other) then
      Events.Broadcast("KillBall", other.clientUserData["Machine"], other.id)
    end
  end
end

trigger.beginOverlapEvent:Connect(handleOverlap)
