local GRAB_TRIGGER = script:GetCustomProperty("GrabTrigger"):WaitForObject()

function letGo(player)
  player.serverUserData["Climbing"] = false

  Events.Broadcast("StoppedClimbing", player)

  player.isMovementEnabled = true
  player:SetVelocity(Vector3.UP * 1000)
  player:DisableRagdoll()
end

function grabLedge(player)
  if not Object.IsValid(player) then return end

  player.serverUserData["Gliding"] = false
  player.serverUserData["Climbing"] = true

  player.isMovementEnabled = false
  player:EnableRagdoll("left_hip", 0.5)
  player:EnableRagdoll("right_hip", 0.5)

  local jumpEvent = nil
  local knockedOffEvent = nil

  jumpEvent = player.bindingPressedEvent:Connect(function(thisPlayer, keyCode)
    if thisPlayer == player and thisPlayer.serverUserData["Climbing"] == true and keyCode == "ability_extra_17" then
      letGo(player)

      jumpEvent:Disconnect()
      knockedOffEvent:Disconnect()
    end
  end)

  knockedOffEvent = Events.Connect("StopClimbing", function(thisPlayer)
    letGo(player)

    jumpEvent:Disconnect()
    knockedOffEvent:Disconnect()
  end)
end

function onBeginOverlap(thisTrigger, other)
	if other:IsA("Player") then
    local ledgeHeight = GRAB_TRIGGER:GetWorldPosition().z

    while Object.IsValid(other) and (other.isGrounded or other:GetWorldPosition().z > ledgeHeight - 50) or other:GetVelocity().z > 0 do
      Task.Wait()
      if not thisTrigger:IsOverlapping(other) then return end
    end

    if Object.IsValid(other) and not other.isGrounded and not other.isDead then
      Task.Wait()
      grabLedge(other)
    end
	end
end

GRAB_TRIGGER.beginOverlapEvent:Connect(onBeginOverlap)
