local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local UP_SFX = script:GetCustomProperty("UpSFX")
local DOWN_SFX = script:GetCustomProperty("DownSFX")
local LEFT = script:GetCustomProperty("Left")
local RIGHT = script:GetCustomProperty("Right")

local flipper = script.parent
local restingRotation = flipper:GetRotation()
local flipVector = TRIGGER:GetWorldTransform():GetForwardVector()
local force = 30
local upRotation = nil

if LEFT then
  upRotation = restingRotation - Rotation.New(0, 0, 40)
elseif RIGHT then
  upRotation = restingRotation - Rotation.New(0, 0, -40)
end

function Tick()
  local others = TRIGGER:GetOverlappingObjects()

  for _, other in ipairs(others) do
    if other.name == "Pinball Ball" then
      other:SetVelocity(flipVector * math.max(other:GetVelocity().size, force) * -1)
    end
  end
end

function flipUp(machineId)
  if not World.FindObjectById(machineId):IsAncestorOf(script) then return end

  Events.Broadcast("PlaySound", machineId, UP_SFX, {position = flipper:GetWorldPosition()})

  force = 300

  if LEFT then
    flipper:RotateTo(restingRotation - Rotation.New(0, 0, 40), 0.02, true)
  elseif RIGHT then
    flipper:RotateTo(restingRotation - Rotation.New(0, 0, -40), 0.02, true)
  end

  Task.Wait(0.1)

  force = 30
end

function flipDown(machineId)
  if not World.FindObjectById(machineId):IsAncestorOf(script) then return end

  Events.Broadcast("PlaySound", machineId, DOWN_SFX, {position = flipper:GetWorldPosition()})

  flipper:RotateTo(restingRotation, 0.02, true)
end

if LEFT then
  Events.Connect("LeftFlipUp", flipUp)
  Events.Connect("LeftFlipDown", flipDown)
end

if RIGHT then
  Events.Connect("RightFlipUp", flipUp)
  Events.Connect("RightFlipDown", flipDown)
end
