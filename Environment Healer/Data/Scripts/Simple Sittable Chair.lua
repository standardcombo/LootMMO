local SITTING_STANCE = script:GetCustomProperty("SittingStance")
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local sittingPlayer = nil
local previousStance = nil

function standUp()
	while Object.IsValid(sittingPlayer) and not sittingPlayer.isAccelerating and not sittingPlayer.isJumping do
    Task.Wait(0.25)
	end

  TRIGGER.collision = Collision.INHERIT

  if not Object.IsValid(sittingPlayer) then return end

  sittingPlayer.animationStance = previousStance
  sittingPlayer = nil
end

function sitDown(thisTrigger, other)
	if other:IsA("Player") and not Object.IsValid(sittingPlayer) and not other.serverUserData["Gliding"] then
    previousStance = other.animationStance

    if previousStance == "" then
      previousStance = "unarmed_idle_relaxed_look_around"
    end

    other:SetWorldTransform(Transform.New(TRIGGER:GetWorldRotation(), script:GetWorldPosition(), Vector3.ONE))
    other.animationStance = SITTING_STANCE
    sittingPlayer = other
    TRIGGER.collision = Collision.FORCE_OFF

    Task.Spawn(standUp)
	end
end

TRIGGER.interactedEvent:Connect(sitDown)
