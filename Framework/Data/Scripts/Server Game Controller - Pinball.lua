--[[
  ------------------
  Pirate Pinball - Server Game Controller
  v1.0.1 - 2022/10/28
  by: varglbargl
  Modified by: Luapi
  ------------------
]]

local PLAY_TRIGGER = script:GetCustomProperty("PlayTrigger"):WaitForObject()
local LEFT_HAND_ANCHOR = script:GetCustomProperty("LeftHandAnchor"):WaitForObject()
local RIGHT_HAND_ANCHOR = script:GetCustomProperty("RightHandAnchor"):WaitForObject()
local PELVIS_ANCHOR = script:GetCustomProperty("PelvisAnchor"):WaitForObject()
local LEFT_FOOT_ANCHOR = script:GetCustomProperty("LeftFootAnchor"):WaitForObject()
local RIGHT_FOOT_ANCHOR = script:GetCustomProperty("RightFootAnchor"):WaitForObject()
local SCORE_DISPLAY = script:GetCustomProperty("ScoreDisplay"):WaitForObject()
local NAME_DISPLAY = script:GetCustomProperty("NameDisplay"):WaitForObject()

local thisMachine = script.parent

local HIGH_SCORE_LEADERBOARD = thisMachine:GetCustomProperty("HighScoreLeaderboard")
local CHARGE_RESOURCE_TO_PLAY = thisMachine:GetCustomProperty("ChargeResourceToPlay")
local RESOURCE_COST = thisMachine:GetCustomProperty("ResourceCost")

local currentPlayer = nil
local hasLeaderboard = false

function handleInteracted(_, player)
  PLAY_TRIGGER.isInteractable = false
  PLAY_TRIGGER:ForceReplication()

  player:SetWorldRotation(Rotation.New(0, 0, 180) * PLAY_TRIGGER:GetWorldRotation())
  player.isMovementEnabled = false
  player:SetMounted(false)
  player:SetWorldPosition(PLAY_TRIGGER:GetWorldPosition())
  LEFT_HAND_ANCHOR:Activate(player)
  RIGHT_HAND_ANCHOR:Activate(player)
  LEFT_FOOT_ANCHOR:Activate(player)
  RIGHT_FOOT_ANCHOR:Activate(player)
  PELVIS_ANCHOR:Activate(player)

  for _, eq in ipairs(player:GetEquipment()) do
    if eq.socket == "right_prop" or eq.socket == "left_prop" then
      eq.visibility = Visibility.FORCE_OFF
    end
  end

  for _, ability in ipairs(player:GetAbilities()) do --Disable all abilities during pinball
    player.serverUserData[ability] = ability.isEnabled
    ability.isEnabled = false
  end

  player.serverUserData.isInvulnerable = true

  Events.BroadcastToPlayer(player, "StartPinball", thisMachine.id, player)
  currentPlayer = player
  
  Events.Broadcast("Quest.Pinball", player, "GameStart")
end

function handleQuit(machineId, player)
  if machineId ~= thisMachine.id then return end

  if player and Object.IsValid(player) then
    player.isMovementEnabled = true
    LEFT_HAND_ANCHOR:Deactivate()
    RIGHT_HAND_ANCHOR:Deactivate()
    LEFT_FOOT_ANCHOR:Deactivate()
    RIGHT_FOOT_ANCHOR:Deactivate()
    PELVIS_ANCHOR:Deactivate()

    for _, eq in ipairs(player:GetEquipment()) do
      if eq.socket == "right_prop" or eq.socket == "left_prop" then
        eq.visibility = Visibility.INHERIT
      end
    end

    for _, ability in ipairs(player:GetAbilities()) do --Re-enable all abilities
      ability.isEnabled = player.serverUserData[ability]
      player.serverUserData[ability] = nil
    end

    player.serverUserData.isInvulnerable = false
  end

  PLAY_TRIGGER.isInteractable = true
  PLAY_TRIGGER:ForceReplication()
  
  if player.serverUserData.hasSubmittedPinballHighscore then
    Events.Broadcast("Quest.Pinball", player, "GameOver")
  end
end

function handlePlayerLeft(player)
  if player == currentPlayer then
    PLAY_TRIGGER.isInteractable = true
    PLAY_TRIGGER:ForceReplication()
  end
end

function formatInt(amount)
  local formatted = math.floor(amount)
  local k

  while k ~= 0 do
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
  end

  return formatted
end

function initLeaderboard()
  if not HIGH_SCORE_LEADERBOARD.isAssigned then return end
  hasLeaderboard = true

  updateHighScore()
end

function updateHighScore()
  local highScoreLeaderboard = Leaderboards.GetLeaderboard(HIGH_SCORE_LEADERBOARD, LeaderboardType.GLOBAL)
  local highScore = highScoreLeaderboard[1]

  if not highScore then return end

  SCORE_DISPLAY.text = formatInt(highScore.score)
  NAME_DISPLAY.text = highScore.name
  SCORE_DISPLAY:ForceReplication()
  NAME_DISPLAY:ForceReplication()
end

function submitHighScore(machineId, player, score)
  player.serverUserData.hasSubmittedPinballHighscore = true
  
  if not hasLeaderboard or machineId ~= thisMachine.id then return end

  Leaderboards.SubmitPlayerScore(HIGH_SCORE_LEADERBOARD, player, score)

  Task.Wait()

  updateHighScore()
end

function chargeResource(player)
  player:RemoveResource(CHARGE_RESOURCE_TO_PLAY, RESOURCE_COST)
end

PLAY_TRIGGER.interactedEvent:Connect(handleInteracted)
Game.playerLeftEvent:Connect(handlePlayerLeft)

Events.Connect("QuitPinball", handleQuit)
Events.Connect("SubmitHighScore", submitHighScore)
Events.Connect("ChargeResource", chargeResource)

for i = 1, 30 do
  if Leaderboards.HasLeaderboards() then
    initLeaderboard()
    break
  else
    Task.Wait(1)
  end
end
