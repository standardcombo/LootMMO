local SFX = script:GetCustomProperty("SFX")
local VFX = script:GetCustomProperty("VFX")

local trigger = script.parent
local destination = script:GetWorldPosition()

function handleBeginOverlap(thisTrigger, other)
  if other.name == "Pinball Ball" then

    if SFX then
      Events.Broadcast("PlaySound", SFX, {position = trigger:GetWorldPosition()})
    end

    if VFX then
      World.SpawnAsset(VFX, {position = destination})
    end

    Events.Broadcast("SpawnBall", other.clientUserData["Machine"], destination)
    Events.Broadcast("KillBall", other.clientUserData["Machine"], other.id)
  end
end

trigger.beginOverlapEvent:Connect(handleBeginOverlap)
