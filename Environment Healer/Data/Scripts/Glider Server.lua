local GLIDE_ABILITY = script:GetCustomProperty("GlideAbility"):WaitForObject()

local glider = script.parent

function onEquipped(thisEquipment, player)
  glider.visibility = Visibility.FORCE_OFF
  glider:SetScale(Vector3.ONE * 0.1)
  player.shouldFlipOnMultiJump = true
  player.maxJumpCount = 2

  player.bindingPressedEvent:Connect(onBindingPressed)
end

function checkLanded(player, defaultGravity, defaultJumpVel, defaultStance)
  while Object.IsValid(player) and player.serverUserData["Gliding"] and not player.isGrounded and not player.isMounted do
    Task.Wait()
  end

  if not Object.IsValid(player) then return end

  player.gravityScale = defaultGravity
  player.jumpVelocity = defaultJumpVel

  if defaultStance == "" then
    player.animationStance =  "unarmed_stance"
  else
    player.animationStance = defaultStance
  end

  player:DisableRagdoll()
  player.serverUserData["Gliding"] = false

  for _, eq in ipairs(player:GetEquipment()) do
    if eq.socket == "right_prop" or eq.socket == "left_prop" then
      eq.visibility = Visibility.INHERIT
    end
  end

  if not Object.IsValid(glider) then return end

  GLIDE_ABILITY:Interrupt()

  glider:StopScale()
  glider:ScaleTo(Vector3.ONE * 0.1, 0.15)

  Task.Wait(0.15)

  if player.serverUserData["Gliding"] or not Object.IsValid(player) or not Object.IsValid(glider) then return end

  Events.Broadcast("GliderPackedUp", player)

  glider.visibility = Visibility.FORCE_OFF
end

function onBindingPressed(player, keyCode)
  if not Object.IsValid(glider) then return end

  if player.isJumping and keyCode == "ability_extra_17" then
    if player.serverUserData["Gliding"] then
      player.serverUserData["Gliding"] = false
    else
      local defaultGravity = player.gravityScale
      local defaultJumpVel = player.jumpVelocity
      local defaultStance = player.animationStance
      player.serverUserData["Gliding"] = true

      player:SetMounted(false)
      player.gravityScale = defaultGravity / 4
      player.jumpVelocity = 200 * defaultGravity
      player.animationStance = "unarmed_carry_score_card"
      -- player:EnableRagdoll("right_hip", 0.3)
      -- player:EnableRagdoll("left_hip", 0.3)

      for _, eq in ipairs(player:GetEquipment()) do
        if eq.socket == "right_prop" or eq.socket == "left_prop" then
          eq.visibility = Visibility.FORCE_OFF
        end
      end

      GLIDE_ABILITY:Activate()

      Events.Broadcast("GliderDeployed", player)

      glider.visibility = Visibility.INHERIT
      glider:StopScale()
      glider:ScaleTo(Vector3.ONE, 0.2)

      checkLanded(player, defaultGravity, defaultJumpVel, defaultStance)
    end
  end
end

function onUnequipped(thisEquipment, player)
  player.serverUserData["Gliding"] = false
  thisEquipment:Destroy()
end

glider.unequippedEvent:Connect(onUnequipped)

-- handler params: Equipment_equipment, Player_player
glider.equippedEvent:Connect(onEquipped)
