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

local propDoorGeometry = propDoorController:GetCustomProperty("DoorGeometry"):WaitForObject()


if propDoorGeometry == nil then
  return
end

local propOpeningSFX = script:GetCustomProperty("OpeningSFX"):WaitForObject()
local propFullyOpenSFX = script:GetCustomProperty("FullyOpenSFX"):WaitForObject()
local propClosingSFX = script:GetCustomProperty("ClosingSFX"):WaitForObject()
local propFullyClosedSFX = script:GetCustomProperty("FullyClosedSFX"):WaitForObject()
local propServerScript = script:GetCustomProperty("ServerScript"):WaitForObject()



function Compare(r1, r2, errorBounds)
  return math.abs(r1.x - r2.x) < errorBounds and 
         math.abs(r1.y - r2.y) < errorBounds and
         math.abs(r1.z - r2.z) < errorBounds
end

function RotEq_old(r1, r2)
  RotEq2(r1, r2)
  return Compare(r1, r2, 1)
end

function RotEq(r1, r2)
  local v1 = r1 * Vector3.ONE
  local v2 = r2 * Vector3.ONE
  return Compare(v1, v2, 0.1, debug)
end

function RotNotEq(r1, r2, debug)
  return not RotEq(r1, r2, debug)
end


function VecEq(r1, r2)
  return Compare(r1, r2, 0.1)
end

function VecNotEq(r1, r2)
  return not Compare(r1, r2, 0.1)
end



Task.Wait()
local closedPosition = propServerScript:GetCustomProperty("ClosedPosition")
local closedRotation = propServerScript:GetCustomProperty("ClosedRotation")
local openPosition = propServerScript:GetCustomProperty("OpenPosition")
local openRotation = propServerScript:GetCustomProperty("OpenRotation")
local reversedOpenRotation = propServerScript:GetCustomProperty("ReversedOpenRotation")
local currentDoorState
local updateTask = nil
local transitionStartTime = -1


local DoorState = {
  Closed = 1,
  Open = 2,
  Closing = 3,
  Opening = 4
}


if propStartOpen then
  currentDoorState = DoorState.Open
else
  currentDoorState = DoorState.Closed
end


function Tick(deltaTime)
  local currentPosition = propDoorGeometry:GetPosition()
  local currentRotation = propDoorGeometry:GetRotation()

  if currentDoorState == DoorState.Open
      and (VecNotEq(currentPosition, openPosition) or (RotNotEq(currentRotation, openRotation) and RotNotEq(currentRotation, reversedOpenRotation))) then
    if propClosingSFX then propClosingSFX:Play() end
    currentDoorState = DoorState.Closing

  elseif currentDoorState == DoorState.Closed 
      and (VecNotEq(currentPosition, closedPosition) or RotNotEq(currentRotation, closedRotation)) then
    if propOpeningSFX then propOpeningSFX:Play() end
    currentDoorState = DoorState.Opening

  elseif (currentDoorState == DoorState.Opening or currentDoorState == DoorState.Closing)
      and ((VecEq(currentPosition, openPosition) or VecEq(currentPosition, closedPosition)) and 
        (RotEq(currentRotation, openRotation) or RotEq(currentRotation, reversedOpenRotation) or RotEq(currentRotation, closedRotation))) then
    if propClosingSFX then propClosingSFX:Stop() end
    if propOpeningSFX then propOpeningSFX:Stop() end

    if VecEq(currentPosition, openPosition) and (RotEq(currentRotation, openRotation) or RotEq(currentRotation, reversedOpenRotation)) then
      currentDoorState = DoorState.Open
      if propFullyOpenSFX then propFullyOpenSFX:Play() end
    elseif VecEq(currentPosition, closedPosition) and RotEq(currentRotation, closedRotation) then
      currentDoorState = DoorState.Closed
      if propFullyClosedSFX then propFullyClosedSFX:Play() end
    end
  end
end