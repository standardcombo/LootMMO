local BALL = script:GetCustomProperty("PinballBall")
local SPAWN_POINT = script:GetCustomProperty("RespawnPoint"):WaitForObject():GetWorldPosition()
local TILT_RESPAWN = script:GetCustomProperty("TiltRespawn"):WaitForObject():GetWorldPosition()
local DEFAULT_MUSIC = script:GetCustomProperty("Music"):WaitForObject()
local BONUS_MUSIC = script:GetCustomProperty("ExtremeMusic"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local LETTERS = script:GetCustomProperty("Letters"):WaitForObject()
local SAFETY_BUMPER = script:GetCustomProperty("SafetyBumper"):WaitForObject()
local SAFETY_BUMPER_SFX = script:GetCustomProperty("SafetyBumperSFX")
local CANNON_VFX = script:GetCustomProperty("CannonVFX")
local PLUNGER = script:GetCustomProperty("Plunger"):WaitForObject()
local PLUNGER_SFX = script:GetCustomProperty("PlungerSFX")
local UI_CONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local INSERT_COIN_SFX = script:GetCustomProperty("InsertCoinSFX")
local GAME_OVER_SFX = script:GetCustomProperty("GameOverSFX")
local LIGHTS = script:GetCustomProperty("Lights"):WaitForObject()
local LAUNCH_BOOSTER = script:GetCustomProperty("LaunchBooster"):WaitForObject()
local CANT_AFFORD_SFX = script:GetCustomProperty("CantAffordSFX")

local thisMachine = script.parent.parent
local MUSIC_WHILE_IDLE = thisMachine:GetCustomProperty("MusicWhileIdle")
local HIGH_SCORE_LEADERBOARD = thisMachine:GetCustomProperty("HighScoreLeaderboard")
local CHARGE_RESOURCE_TO_PLAY = thisMachine:GetCustomProperty("ChargeResourceToPlay")
local RESOURCE_COST = thisMachine:GetCustomProperty("ResourceCost")

-- UI Stuff
local UIBalls = UI_CONTAINER:FindDescendantByName("Balls")
local UIScore = UI_CONTAINER:FindDescendantByName("Score")
local UIMessage = UI_CONTAINER:FindDescendantByName("Message")
local UICoin = UI_CONTAINER:FindDescendantByName("Coin")
local UICursor = UI_CONTAINER:FindDescendantByName("Cursor")
local UIPointer = UI_CONTAINER:FindDescendantByName("Pointer")
local UIPlayButton = UI_CONTAINER:FindDescendantByName("Play Button")
local UIPlayButtonGlow = UIPlayButton:FindDescendantByName("Glow")
local UIQuitButton = UI_CONTAINER:FindDescendantByName("Quit Button")
local UIControlsPanel = UI_CONTAINER:FindDescendantByName("Controls Panel")
local UIControlsShowHide = UIControlsPanel:FindDescendantByName("Show Hide")

local currentPlayer = nil
local hasLeaderboard = false

local ballsActive = 0
local activeBalls = {}
local ballsLeft = 0
local score = 0
local bonusActive = false
local specialEvent = false
local gameInstance = 0

local bindingPressedEvent = nil
local bindingReleasedEvent = nil
local insertCoinEvent = nil
local quitGameEvent = nil
local messageTask = nil
local UIAnimationTask = nil

function handleBindingPressed(player, keyCode)
  -- print(keyCode)

  -- MOUSE1
  if keyCode == "ability_primary" then
    UIPointer.rotationAngle = 356
  end

  -- LSHIFT / A / LEFT
  if keyCode == "ability_extra_12" or keyCode == "ability_extra_30" or keyCode == "ability_extra_48" then
    Events.Broadcast("LeftFlipUp", thisMachine.id)
  end

  -- RSHIFT / D / RIGHT
  if keyCode == "ability_extra_13" or keyCode == "ability_extra_32" or keyCode == "ability_extra_49" then
    Events.Broadcast("RightFlipUp", thisMachine.id)
  end

  -- SPACE / W / UP
  if keyCode == "ability_extra_17" or keyCode == "ability_extra_21" or keyCode == "ability_extra_46" then
    if ballsActive > 0 or ballsLeft == 0 or specialEvent then return end
    LAUNCH_BOOSTER.collision = Collision.FORCE_OFF
    ballsLeft = ballsLeft - 1
    spawnBall(thisMachine.id, SPAWN_POINT)
    updateUI()
    hideControls()

    playSound(thisMachine.id, PLUNGER_SFX, {position = PLUNGER:GetWorldPosition(), pitch = 300, volume = 0.3})

    PLUNGER:MoveTo(Vector3.FORWARD * 5, 0.4, true)

    Task.Wait(0.6)

    PLUNGER:MoveTo(Vector3.ZERO, 0.02, true)
    LAUNCH_BOOSTER.collision = Collision.FORCE_ON

    Task.Wait(3)

    -- LAUNCH_BOOSTER.collision = Collision.FORCE_OFF
  end
end

function handleBindingReleased(player, keyCode)
  -- MOUSE1
  if keyCode == "ability_primary" then
    UIPointer.rotationAngle = 0
  end

  -- LSHIFT / A / LEFT
  if keyCode == "ability_extra_12" or keyCode == "ability_extra_30" or keyCode == "ability_extra_48" then
    Events.Broadcast("LeftFlipDown", thisMachine.id)
  end

  -- RSHIFT / D / RIGHT
  if keyCode == "ability_extra_13" or keyCode == "ability_extra_32" or keyCode == "ability_extra_49" then
    Events.Broadcast("RightFlipDown", thisMachine.id)
  end
end

function spawnBall(machineId, spawnPos)
  if machineId ~= thisMachine.id then return end

  -- in case something goes wrong like the ball gets stuck
  spawnPos = spawnPos or TILT_RESPAWN + (Vector3.New(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)) / 10)

  local ball = World.SpawnAsset(BALL, {position = spawnPos, scale = script.parent.parent:GetWorldScale() * 0.03})

  ball.clientUserData["Machine"] = thisMachine.id
  ballsActive = ballsActive + 1
  activeBalls[ball.id] = ball
end

function killBall(machineId, ballId)
  if machineId ~= thisMachine.id then return end

  activeBalls[ballId]:Destroy()
  activeBalls[ballId] = nil

  -- it just helps prevent desyncs
  local ballCounter = 0

  for key, aBall in pairs(activeBalls) do
    ballCounter = ballCounter + 1
  end

  ballsActive = ballCounter

  if ballsActive == 0 and ballsLeft == 0 and not specialEvent then
    gameOver()
  end
end

function initGame(machineId, player)
  if machineId ~= thisMachine.id then return end

  currentPlayer = player
  gameInstance = gameInstance + 1
  player.isVisibleToSelf = false
  player:SetOverrideCamera(CAMERA, 0.5)
  UI_CONTAINER.visibility = Visibility.INHERIT
  LAUNCH_BOOSTER.collision = Collision.FORCE_OFF

  UI.SetCanCursorInteractWithUI(true)
  resetMachineState()
  showControls()

  for _, eq in ipairs(player:GetAttachedObjects()) do
    if eq.isClientOnly then
      eq.visibility = Visibility.FORCE_OFF
    end
  end

  playMusic(thisMachine.id, {track = DEFAULT_MUSIC, volume = 0.4})

  bindingPressedEvent = player.bindingPressedEvent:Connect(handleBindingPressed)
  bindingReleasedEvent = player.bindingReleasedEvent:Connect(handleBindingReleased)
  insertCoinEvent = UIPlayButton.clickedEvent:Connect(insertCoin)
  quitGameEvent = UIQuitButton.clickedEvent:Connect(quitGame)
  UIControlsShowHide.hoveredEvent:Connect(showControls)
  UIControlsShowHide.unhoveredEvent:Connect(startHidingTimer)

  Task.Spawn(cursorUpdateLoop)
end

function insertCoin()
  if CHARGE_RESOURCE_TO_PLAY ~= "" and RESOURCE_COST > 0 then
    local playerMoney = currentPlayer:GetResource(CHARGE_RESOURCE_TO_PLAY)

    if playerMoney < RESOURCE_COST then
      showMessage(thisMachine.id, "NOT ENOUGH", string.upper(CHARGE_RESOURCE_TO_PLAY), 3)
      playSound(thisMachine.id, CANT_AFFORD_SFX, {position = script:GetWorldPosition()})
      return
    else
      Events.BroadcastToServer("ChargeResource", currentPlayer)
    end
  end

  UIPlayButton.isInteractable = false
  UIPlayButtonGlow.visibility = Visibility.FORCE_OFF
  UICoin.visibility = Visibility.FORCE_OFF
  UIPointer.visibility = Visibility.INHERIT
  clearMessage()
  stopMusic(thisMachine.id)
  playSound(thisMachine.id, INSERT_COIN_SFX, {position = script:GetWorldPosition()})

  local thisInstance = gameInstance

  Task.Wait(3)

  if not Object.IsValid(currentPlayer) or ballsLeft > 0 or gameInstance ~= thisInstance then return end

  hideControls()
  playMusic(thisMachine.id, {track = DEFAULT_MUSIC, volume = 0.4})
  score = 0
  ballsLeft = 3
  updateUI()
end

function gameOver()
  Task.Wait(1)

  stopMusic(thisMachine.id)
  LIGHTS.visibility = Visibility.FORCE_OFF
  playSound(thisMachine.id, GAME_OVER_SFX, {position = script:GetWorldPosition()})
  showMessage(thisMachine.id, "GAME OVER", "PLAY AGAIN?", 3)
  LAUNCH_BOOSTER.collision = Collision.FORCE_OFF

  Task.Wait(4)
  if not currentPlayer or not Object.IsValid(currentPlayer) then return end

  LIGHTS.visibility = Visibility.INHERIT
  resetMachineState()
end

function resetMachineState()
  for _, aBall in pairs(activeBalls) do
    if aBall and Object.IsValid(aBall) then aBall:Destroy() end
  end

  if hasLeaderboard and score > 0 then
    Events.BroadcastToServer("SubmitHighScore", thisMachine.id, currentPlayer, score)
  end

  activeBalls = {}
  ballsActive = 0
  score = 0
  ballsLeft = 0
  specialEvent = false
  UIPlayButton.isInteractable = true
  UIPlayButtonGlow.visibility = Visibility.INHERIT
  UICoin.visibility = Visibility.INHERIT
  UIPointer.visibility = Visibility.FORCE_OFF
  LIGHTS.visibility = Visibility.INHERIT

  if CHARGE_RESOURCE_TO_PLAY ~= "" and RESOURCE_COST > 0 then
    showMessage(thisMachine.id, "INSERT "..RESOURCE_COST, string.upper(CHARGE_RESOURCE_TO_PLAY))
  else
    showMessage(thisMachine.id, "INSERT COIN")
  end

  playMusic(thisMachine.id, {track = DEFAULT_MUSIC, volume = 0.4})
  Events.Broadcast("ResetBumpers", thisMachine.id)
  Task.Spawn(resetSafetyBumper)

  updateUI()
end

function quitGame()
  if currentPlayer and Object.IsValid(currentPlayer) then
    currentPlayer.isVisibleToSelf = true
    currentPlayer:ClearOverrideCamera(0.5)
    UI.SetCanCursorInteractWithUI(false)
    UI_CONTAINER.visibility = Visibility.FORCE_OFF
    bindingPressedEvent:Disconnect()
    bindingReleasedEvent:Disconnect()
    insertCoinEvent:Disconnect()
    quitGameEvent:Disconnect()
    clearMessage()

    for _, eq in ipairs(currentPlayer:GetAttachedObjects()) do
      if eq.isClientOnly then
        eq.visibility = Visibility.INHERIT
      end
    end
  end

  resetMachineState()

  if MUSIC_WHILE_IDLE then
    playMusic(thisMachine.id, {track = DEFAULT_MUSIC, volume = 0.2})
  else
    stopMusic(thisMachine.id)
  end

  Events.BroadcastToServer("QuitPinball", thisMachine.id, currentPlayer)

  currentPlayer = nil
end

-- AUDIO

local currentMusic = DEFAULT_MUSIC
local musicPlaying = false

function playMusic(machineId, options)
  if machineId ~= thisMachine.id then return end
  options = options or {}

  local shouldPlay = true

  if specialEvent then
    shouldPlay = false
  end

  if shouldPlay and musicPlaying and options.track == currentMusic then
    shouldPlay = false
  end

  if shouldPlay and musicPlaying and not options.track then
    shouldPlay = false
  end

  if options.track and options.track ~= currentMusic then

    if musicPlaying and shouldPlay then
      stopMusic(machineId)
    end

    currentMusic = options.track
  end

  if options.volume then
    currentMusic.volume = options.volume
  end

  if shouldPlay then
    currentMusic:Play()
    musicPlaying = true
  end
end

function stopMusic(machineId)
  if machineId ~= thisMachine.id then return end

  currentMusic:Stop()
  musicPlaying = false
end

function playSound(machineId, sound, options)
  if machineId ~= thisMachine.id or not sound then return end
  options = options or {}

  local sfx = World.SpawnAsset(sound)

  if options.position then
    sfx:SetWorldPosition(options.position)
  elseif sfx:IsA("Audio") or sfx:IsA("SmartAudio") then
    sfx.isSpatializationEnabled = false
    sfx.isAttenuationEnabled = false
  end

  if sfx:IsA("Folder") or sfx:IsA("NetworkContext") then
    if sfx.lifeSpan == 0 then
      sfx.lifeSpan = 10
    end
  else
    sfx.isTransient = true
    sfx.isOcclusionEnabled = false
    sfx.pitch = options.pitch or 0
    sfx.volume = options.volume or 0.4
    sfx:Play()
  end
end

Events.Connect("PlayMusic", playMusic)
Events.Connect("StopMusic", stopMusic)
Events.Connect("PlaySound", playSound)

-- SPECIAL EVENTS

local letters = LETTERS:GetChildren()
local lettersIlluminated = 0

function handleMapHit(machineId)
  if machineId ~= thisMachine.id then return end
  if lettersIlluminated == 4 then return end

  lettersIlluminated = lettersIlluminated + 1
  letters[lettersIlluminated]:SetColor(Color.RED * 100)

  if lettersIlluminated == 4 then
    bonusActive = true
    SAFETY_BUMPER:FindChildByName("Light"):SetColor(Color.RED * 100)
    SAFETY_BUMPER.collision = Collision.FORCE_ON

    playSound(machineId, SAFETY_BUMPER_SFX, {position = SAFETY_BUMPER:GetWorldPosition()})
    playMusic(machineId, {track = BONUS_MUSIC, volume = 0.5})

    Task.Spawn(function()
      Task.Wait(30)

      resetSafetyBumper()
    end)

    SAFETY_BUMPER:MoveTo(SAFETY_BUMPER:GetPosition() + Vector3.UP * 4, 3, true)
    SAFETY_BUMPER:RotateTo(Rotation.New(0, 0, 120), 1, true)

    Task.Wait(1)

    SAFETY_BUMPER:RotateTo(Rotation.New(0, 0, 240), 1, true)

    Task.Wait(1)

    SAFETY_BUMPER:RotateTo(Rotation.New(0, 0, 360), 1, true)
  end
end

function resetSafetyBumper()
  for _, letter in ipairs(letters) do
    letter:SetColor(Color.RED * 0.01)
  end

  lettersIlluminated = 0

  if not bonusActive then return end

  bonusActive = false

  playMusic(thisMachine.id, {track = DEFAULT_MUSIC})
  playSound(thisMachine.id, SAFETY_BUMPER_SFX, {position = SAFETY_BUMPER:GetWorldPosition()})

  SAFETY_BUMPER:FindChildByName("Light"):SetColor(Color.RED * 0.01)
  SAFETY_BUMPER.collision = Collision.FORCE_OFF

  SAFETY_BUMPER:MoveTo(SAFETY_BUMPER:GetPosition() - Vector3.UP * 4, 3, true)
  SAFETY_BUMPER:RotateTo(Rotation.New(0, 0, 240), 1, true)

  Task.Wait(1)

  SAFETY_BUMPER:RotateTo(Rotation.New(0, 0, 120), 1, true)

  Task.Wait(1)

  SAFETY_BUMPER:RotateTo(Rotation.New(0, 0, 0), 1, true)
end

function multiballCannon(machineId, spawnPos)
  if machineId ~= thisMachine.id then return end
  specialEvent = true

  LIGHTS.visibility = Visibility.FORCE_OFF
  stopMusic(machineId)

  Task.Wait(5)
  if not Object.IsValid(currentPlayer) or not specialEvent then return end

  showMessage(machineId, "MULTIBALL", "", 3)

  World.SpawnAsset(CANNON_VFX, {position = spawnPos, rotation = thisMachine:GetWorldRotation()})
  spawnBall(machineId, spawnPos + Vector3.RIGHT * math.random(-3, 3))

  Task.Wait(1.2)

  if not Object.IsValid(currentPlayer) or not specialEvent then return end
  World.SpawnAsset(CANNON_VFX, {position = spawnPos, rotation = thisMachine:GetWorldRotation()})
  spawnBall(machineId, spawnPos + Vector3.RIGHT * math.random(-3, 3))

  Task.Wait(1.2)

  if not Object.IsValid(currentPlayer) or not specialEvent then return end
  World.SpawnAsset(CANNON_VFX, {position = spawnPos, rotation = thisMachine:GetWorldRotation()})
  spawnBall(machineId, spawnPos + Vector3.RIGHT * math.random(-3, 3))

  Task.Wait(2.6)

  specialEvent = false
  playMusic(machineId)
end

Events.Connect("StartPinball", initGame)
Events.Connect("SpawnBall", spawnBall)
Events.Connect("KillBall", killBall)
Events.Connect("MapHit", handleMapHit)
Events.Connect("DarkPirateMagic", multiballCannon)

-- UI

function cursorUpdateLoop()
  if not Object.IsValid(currentPlayer) then return end

  local cursorPos = UI.GetCursorPosition()

  UICursor.x = cursorPos.x
  UICursor.y = cursorPos.y

  Task.Wait()

  cursorUpdateLoop()
end

function formatInt(amount)
  local formatted = math.floor(amount)
  local k

  while k ~= 0 do
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
  end

  return formatted
end

function updateUI()
  UIBalls.text = tostring(ballsLeft)
  UIScore.text = formatInt(score)
end

function addPoints(machineId, points)
  if machineId ~= thisMachine.id then return end
  score = score + points

  updateUI()
end

function showMessage(machineId, message1, message2, times)
  if machineId ~= thisMachine.id then return end

  message1 = tostring(message1)
  message2 = message2 or ""
  message2 = tostring(message2)

  blinks = 1

  function blinkMessage()
    UIMessage.text = message1

    Task.Wait(0.8)

    UIMessage.text = message2

    Task.Wait(0.8)

    if not times or blinks < times then
      blinks = blinks + 1
      blinkMessage()
    else
      UIMessage.text = ""
    end
  end

  if messageTask then
    messageTask:Cancel()
  end

  messageTask = Task.Spawn(blinkMessage)
end

function clearMessage()
  if messageTask then
    messageTask:Cancel()
  end

  UIMessage.text = ""
end

function animatePanelHeight(panel, toHeight, speed)

  function tickHeight()
    if math.abs(panel.height - toHeight) <= speed then
      panel.height = toHeight
      return
    elseif panel.height > toHeight then
      panel.height = panel.height - speed
    elseif
      panel.height < toHeight then
      panel.height = panel.height + speed
    end

    Task.Wait()

    tickHeight()
  end

  if UIAnimationTask then
    UIAnimationTask:Cancel()
  end

  UIAnimationTask = Task.Spawn(tickHeight)
end

local hidingTimerTask = nil

function startHidingTimer()
  if hidingTimerTask then
    hidingTimerTask:Cancel()
  end

  hidingTimerTask = Task.Spawn(function()

    Task.Wait(3)

    hideControls()
  end)
end

function showControls()

  if hidingTimerTask then
    hidingTimerTask:Cancel()
  end

  animatePanelHeight(UIControlsPanel, 495, 25)
end

function hideControls()
  animatePanelHeight(UIControlsPanel, 105, 25)
end

function initLeaderboard()
  if not HIGH_SCORE_LEADERBOARD.isAssigned then return end
  hasLeaderboard = true
end

Events.Connect("AddPoints", addPoints)
Events.Connect("ShowMessage", showMessage)

if MUSIC_WHILE_IDLE then
  Task.Wait(1)
  playMusic(thisMachine.id, {track = DEFAULT_MUSIC, volume = 0.2})
end

for i = 1, 30 do
  if Leaderboards.HasLeaderboards() then
    initLeaderboard()
    break
  else
    Task.Wait(1)
  end
end
