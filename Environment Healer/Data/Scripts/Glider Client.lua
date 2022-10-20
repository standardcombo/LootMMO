local glider = script.parent.parent

local DEPLOY_SFX = glider:GetCustomProperty("DeploySFX")
local PACK_SFX = glider:GetCustomProperty("PackSFX")
local GLIDE_SFX_LOOP = glider:GetCustomProperty("GlideSFXLoop")

local LEFT_HAND_ANCHOR = script:GetCustomProperty("LeftHandAnchor"):WaitForObject()
local RIGHT_HAND_ANCHOR = script:GetCustomProperty("RightHandAnchor"):WaitForObject()

local GLIDE_ABILITY = script:GetCustomProperty("GlideAbility"):WaitForObject()

local deploySfx = nil
local packSfx = nil
local glideSfxLoop = nil

if DEPLOY_SFX then
  deploySfx = World.SpawnAsset(DEPLOY_SFX, {parent = script})
  deploySfx.isOcclusionEnabled = false
end

if PACK_SFX then
  packSfx = World.SpawnAsset(PACK_SFX, {parent = script})
end

if GLIDE_SFX_LOOP then
  glideSfxLoop = World.SpawnAsset(GLIDE_SFX_LOOP, {parent = script})
  glideSfxLoop.isAutoRepeatEnabled = true
  glideSfxLoop.volume = 0.6
end

function onGliderDeployed(thisAbility)
  if not Object.IsValid(glider) then return end

  if LEFT_HAND_ANCHOR then
    for i, anchor in ipairs(thisAbility.owner:GetIKAnchors()) do
      if anchor.anchorType == IKAnchorType.LEFT_HAND then anchor:Deactivate() end
    end

    LEFT_HAND_ANCHOR:Activate(thisAbility.owner)
  end

  if RIGHT_HAND_ANCHOR then
    for i, anchor in ipairs(thisAbility.owner:GetIKAnchors()) do
      if anchor.anchorType == IKAnchorType.RIGHT_HAND then anchor:Deactivate() end
    end

    RIGHT_HAND_ANCHOR:Activate(thisAbility.owner)
  end

  if deploySfx then deploySfx:Play() end
  if glideSfxLoop then glideSfxLoop:FadeIn(0.5) end

  Events.Broadcast("GliderDeployed", thisAbility.owner)
  thisAbility.owner.clientUserData["Gliding"] = true
end

function onGliderPackedUp(thisAbility)
  if not Object.IsValid(glider) then return end

  if LEFT_HAND_ANCHOR then LEFT_HAND_ANCHOR:Deactivate() end
  if RIGHT_HAND_ANCHOR then RIGHT_HAND_ANCHOR:Deactivate() end

  if packSfx then packSfx:Play() end
  if glideSfxLoop then glideSfxLoop:FadeOut(0.2) end

  Events.Broadcast("GliderPackedUp", thisAbility.owner)
  thisAbility.owner.clientUserData["Gliding"] = false
end

-- handler params: Ability_ability
GLIDE_ABILITY.castEvent:Connect(onGliderDeployed)
GLIDE_ABILITY.interruptedEvent:Connect(onGliderPackedUp)
