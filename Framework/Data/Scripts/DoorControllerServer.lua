--[[
Copyright 2021 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]


local propDoorController = script:GetCustomProperty("DoorController"):WaitForObject()

local propOpenOffset = propDoorController:GetCustomProperty("OpenOffset")
local propOpenRotation = propDoorController:GetCustomProperty("OpenRotation")
local propTimeToOpen = propDoorController:GetCustomProperty("TimeToOpen")
local propStartOpen = propDoorController:GetCustomProperty("StartOpen")
local propFlipRotationBasedOnSide = propDoorController:GetCustomProperty("FlipRotationBasedOnSide")
local propRequireInteraction = propDoorController:GetCustomProperty("RequireInteraction")
local propTriggerCanCloseDoor = propDoorController:GetCustomProperty("TriggerCanCloseDoor")
local propOpenInteractionLabel = propDoorController:GetCustomProperty("OpenInteractionLabel")
local propCloseInteractionLabel = propDoorController:GetCustomProperty("CloseInteractionLabel")
local propAutoCloseTime = propDoorController:GetCustomProperty("AutoCloseTime")
local propDoorGeometry = propDoorController:GetCustomProperty("DoorGeometry"):WaitForObject()
local propDoorTrigger = propDoorController:GetCustomProperty("DoorTrigger"):WaitForObject()
local propResetOnRoundStart = propDoorController:GetCustomProperty("ResetOnRoundStart")

if propDoorGeometry == nil then
  warn("DoorControllerServer: You need to set the door geometry")
  return
end

if propDoorTrigger == nil then
  warn("DoorControllerServer: You need to set a door trigger")
  return
end

local closedPosition = propDoorGeometry:GetPosition()
local closedRotation = propDoorGeometry:GetRotation()
local openPosition = closedPosition + propOpenOffset
local openRotation = closedRotation + propOpenRotation
local reversedOpenRotation = closedRotation - propOpenRotation
local currentDoorState
local updateTask = nil
local transitionStartTime = -1

script:SetNetworkedCustomProperty("OpenPosition", openPosition)
script:SetNetworkedCustomProperty("ClosedPosition", closedPosition)
script:SetNetworkedCustomProperty("OpenRotation", openRotation)
script:SetNetworkedCustomProperty("ClosedRotation", closedRotation)
script:SetNetworkedCustomProperty("ReversedOpenRotation", reversedOpenRotation)

local DoorState = {
  Closed = 1,
  Open = 2,
  Closing = 3,
  Opening = 4
}


function Setup()
  if propRequireInteraction then
    if not propDoorTrigger.isInteractable then
      propDoorTrigger.isInteractable = true
    end
    propDoorTrigger.interactedEvent:Connect(OnInteraction)
  else
    if propDoorTrigger.isInteractable then
      propDoorTrigger.isInteractable = false
    end
    propDoorTrigger.beginOverlapEvent:Connect(OnTriggerOverlap)
  end

  ResetDoor()

  if propResetOnRoundStart then
    Game.roundStartEvent:Connect(ResetDoor)
  end
end



function ResetDoor()
  if propStartOpen then
    propDoorGeometry:SetPosition(openPosition)
    propDoorGeometry:SetRotation(openRotation)
    if propDoorTrigger.interactionLabel ~= propCloseInteractionLabel then
      propDoorTrigger.interactionLabel = propCloseInteractionLabel
    end
    currentDoorState = DoorState.Open
  else
    propDoorGeometry:SetPosition(closedPosition)
    propDoorGeometry:SetRotation(closedRotation)
    if propDoorTrigger.interactionLabel ~= propOpenInteractionLabel then
      propDoorTrigger.interactionLabel = propOpenInteractionLabel
    end
    currentDoorState = DoorState.Closed
  end
end


function OnInteraction(trigger, player)
  ActivateDoor(player)
end

function OnTriggerOverlap(trigger, other)
  if other:IsA("Player") then
    ActivateDoor(other)
  end
end

-- Helper function for logic we're going to use a lot.
function CancelUpdateTask()
  if updateTask ~= nil then
    updateTask:Cancel()
    updateTask = nil
  end
end


function IsOverlappingPlayers(trigger)
  for _, p in pairs(Game.GetPlayers()) do
    if propDoorTrigger:IsOverlapping(p) then return true end
  end
  return false
end


function OpeningTask(transitionTime)
  Task.Wait(transitionTime)

  currentDoorState = DoorState.Open
  if propAutoCloseTime > 0 then
    Task.Wait(propAutoCloseTime)
    while IsOverlappingPlayers(propDoorTrigger) do
      Task.Wait(1)
    end

    local transitionTime = propTimeToOpen
    if IsMidTransition() then
      transitionTime = time() - transitionStartTime
    end
    
    CloseDoor(transitionTime)
    if IsMidTransition() then
      transitionStartTime = time() - (propTimeToOpen - transitionTime)
    else
      transitionStartTime = time()
    end
  end
end

function ClosingTask(transitionTime)
  Task.Wait(transitionTime)
  currentDoorState = DoorState.Closed
end

function IsMidTransition()
  return currentDoorState == DoorState.Closing or
      currentDoorState == DoorState.Opening
end

function GetRotationDirection(player)
  if not propFlipRotationBasedOnSide then return openRotation end

  local geoQuaternion = Quaternion.New(propDoorGeometry:GetWorldRotation())
  local relativeX = geoQuaternion:GetForwardVector()
  local playerOffset = player:GetWorldPosition() - propDoorGeometry:GetWorldPosition()

  -- Figure out which direction is away from the player
  if playerOffset .. relativeX > 0 then
    return openRotation
  else
    return reversedOpenRotation
  end
end


function OpenDoor(transitionTime, player)
  local rotation = propOpenRotation
  if player ~= nil then rotation = GetRotationDirection(player) end
  propDoorGeometry:RotateTo(rotation, transitionTime, true)
  propDoorGeometry:MoveTo(openPosition, transitionTime, true)
  if propDoorTrigger.interactionLabel ~= propCloseInteractionLabel then
    propDoorTrigger.interactionLabel = propCloseInteractionLabel
  end
  currentDoorState = DoorState.Opening
  CancelUpdateTask()
  updateTask = Task.Spawn(function () OpeningTask(transitionTime) end)
end

function CloseDoor(transitionTime)
  propDoorGeometry:RotateTo(closedRotation, transitionTime, true)
  propDoorGeometry:MoveTo(closedPosition, transitionTime, true)
  currentDoorState = DoorState.Closing
  if propDoorTrigger.interactionLabel ~= propOpenInteractionLabel then
    propDoorTrigger.interactionLabel = propOpenInteractionLabel
  end
  CancelUpdateTask()
  updateTask = Task.Spawn(function () ClosingTask(transitionTime) end)
end


function ActivateDoor(player)
  local transitionTime = propTimeToOpen
  if IsMidTransition() then
    transitionTime = time() - transitionStartTime
    transitionStartTime = (time() + transitionTime) - propTimeToOpen
  end

  if currentDoorState == DoorState.Closed or
      currentDoorState == DoorState.Closing then
    OpenDoor(transitionTime, player)
  elseif (currentDoorState == DoorState.Open or
      currentDoorState == DoorState.Opening)
      and (propRequireInteraction or propTriggerCanCloseDoor) then
    CloseDoor(transitionTime)
  end

  if IsMidTransition() then
    transitionStartTime = time() - (propTimeToOpen - transitionTime)
  else
    transitionStartTime = time()
  end
end


Setup()