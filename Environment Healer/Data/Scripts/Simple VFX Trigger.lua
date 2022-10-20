local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject(10)
local VFX_TEMPLATE = script:GetCustomProperty("VFXTemplate")

local trigger = nil
local vfx = nil

if Object.IsValid(TRIGGER) and TRIGGER:IsA("Trigger") then
  trigger = TRIGGER
else
  trigger = script.parent
end

function onBeginOverlap(thisTrigger, other)
	if other:IsA("Player") then

    if not Object.IsValid(vfx) then
      vfx = World.SpawnAsset(VFX_TEMPLATE, {position = other:GetWorldPosition()})

      if vfx.lifeSpan == 0 then vfx.lifeSpan = 5 end
    end
	end
end

trigger.beginOverlapEvent:Connect(onBeginOverlap)
