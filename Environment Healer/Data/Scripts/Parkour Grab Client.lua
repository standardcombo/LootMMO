local GRAB_TRIGGER = script:GetCustomProperty("GrabTrigger"):WaitForObject()
local IK_ANCHORS = script:GetCustomProperty("IKAnchors")

function grabLedge(player)
  if not Object.IsValid(player) then return end

  for i, anchor in ipairs(player:GetIKAnchors()) do
    if anchor.anchorType == IKAnchorType.LEFT_HAND or anchor.anchorType == IKAnchorType.RIGHT_HAND or anchor.anchorType == IKAnchorType.PELVIS then
      anchor:Deactivate()
    end
  end

  local ikAnchors = World.SpawnAsset(IK_ANCHORS, {parent = script.parent})

  ikAnchors:SetWorldPosition(player:GetWorldPosition())
  ikAnchors:SetPosition(Vector3.New(ikAnchors:GetPosition().x, 0, 0))

  local leftHand = ikAnchors:FindDescendantByName("Left Hand")
  local rightHand = ikAnchors:FindDescendantByName("Right Hand")
  local pelvis = ikAnchors:FindDescendantByName("Pelvis")

  if _G.IkStack then
    _G.IkStack.Add(player, leftHand)
    _G.IkStack.Add(player, rightHand)
    _G.IkStack.Add(player, pelvis)
  else
    leftHand:Activate(player)
    rightHand:Activate(player)
    pelvis:Activate(player)
  end

  local letGoEvent = nil

  -- handler params: Player_player, MovementMode_newMovementMode, MovementMode_previousMovementMode
  letGoEvent = player.movementModeChangedEvent:Connect(function(thisPlayer, newMode, oldMode)

    if oldMode == MovementMode.NONE then
      if _G.IkStack then
	    _G.IkStack.Remove(player, leftHand)
	    _G.IkStack.Remove(player, rightHand)
	    _G.IkStack.Remove(player, pelvis)
      else
        leftHand:Deactivate()
        rightHand:Deactivate()
        pelvis:Deactivate()
      end
      
      ikAnchors:Destroy()
      letGoEvent:Disconnect()
    end
  end)
end

function onBeginOverlap(thisTrigger, other)
	if other:IsA("Player") then

    local ledgeHeight = GRAB_TRIGGER:GetWorldPosition().z
    local grabbedEvent = nil

    -- handler params: Player_player, MovementMode_newMovementMode, MovementMode_previousMovementMode
    grabbedEvent = other.movementModeChangedEvent:Connect(function(thisPlayer, newMode, oldMode)
      grabbedEvent:Disconnect()

      if newMode == MovementMode.NONE then

        if Object.IsValid(other) and other:GetWorldPosition().z < ledgeHeight - 50 then
          grabLedge(other)
        end
      end
    end)
	end
end

GRAB_TRIGGER.beginOverlapEvent:Connect(onBeginOverlap)
