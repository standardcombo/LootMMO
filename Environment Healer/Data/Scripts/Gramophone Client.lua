local Utils = require(script:GetCustomProperty("Utils"))

local PLAYLIST = script:GetCustomProperty("Playlist"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local GRAMOPHONE_TRACK = script:GetCustomProperty("GramophoneTrack")
local GRAMOPHONE_PANEL = script:GetCustomProperty("GramophonePanel"):WaitForObject()
local TRACK_LIST = script:GetCustomProperty("TrackList"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()
local CURRENT_TRACK = script:GetCustomProperty("CurrentTrack"):WaitForObject()

local BUY_SFX = script:GetCustomProperty("BuySFX")
local PLAY_SFX = script:GetCustomProperty("PlaySFX")

local clientPlayer = Game.GetLocalPlayer()
local isMenuOpen = false

local playlist = PLAYLIST:GetChildren()
local trackList = nil
local isSongPlaying = false
local playPrice = 25

function initTrackList()
  for i, track in ipairs(playlist) do
    local trackListing = World.SpawnAsset(GRAMOPHONE_TRACK, {parent = TRACK_LIST})
    local buyButton = trackListing:FindChildByName("Buy")
    local playButton = trackListing:FindChildByName("Play")

    local price = track:GetCustomProperty("Price")

    trackListing.name = track.name
    trackListing.y = 10 * i + 80 * (i - 1)
    trackListing:FindChildByName("Title").text = track.name

    buyButton:FindChildByType("UIText").text = "Buy $"..price
    buyButton.clickedEvent:Connect(function()
      buyTrack(i)
    end)

    playButton:FindChildByType("UIText").text = "Play $"..playPrice
    playButton.clickedEvent:Connect(function()
      playTrack(i)
    end)

    trackListing.clientUserData["Price"] = price
  end

  trackList = TRACK_LIST:GetChildren()
  CURRENT_TRACK.text = "Nothing..."
end

initTrackList()

function showPanel(thisTrigger, player)
  if player ~= clientPlayer then return end

  UI.SetCanCursorInteractWithUI(true)
  UI.SetCursorVisible(true)

  GRAMOPHONE_PANEL.visibility = Visibility.INHERIT
  TRIGGER.collision = Collision.FORCE_OFF
  isMenuOpen = true

  Events.Broadcast("ShowMoney")
end

function hidePanel()
  UI.SetCanCursorInteractWithUI(false)
  UI.SetCursorVisible(false)

  GRAMOPHONE_PANEL.visibility = Visibility.FORCE_OFF
  TRIGGER.collision = Collision.FORCE_ON
  isMenuOpen = false

  Events.Broadcast("HideMoney")
end

function escapeHandler(thisPlayer, params)
  if thisPlayer == clientPlayer and isMenuOpen then
    params.openPauseMenu = false
    hidePanel()
  end
end

function buyTrack(trackNumber)
  local price = trackList[trackNumber].clientUserData["Price"]

  Utils.playSoundEffect(BUY_SFX)

  Utils.throttleToServer("BuyGramophoneTrack", playlist[trackNumber].name, price)
end

function playTrack(trackNumber)
  if isSongPlaying then return end

  Utils.playSoundEffect(PLAY_SFX)

  Utils.throttleToServer("PlayGramophoneTrack", playlist[trackNumber].name, playPrice)
end

function onPlayerPlayedTrack(player, trackName)
  local track = PLAYLIST:FindChildByName(trackName)

  track:Play()
  isSongPlaying = true

  CURRENT_TRACK.text = player.name.." - "..track.name

  if track.name == "Infinite Jest" then
    while track.pitch < 2000 do
      Task.Wait(1)
      track.pitch = track.pitch + 10
    end
  else
    while track.isPlaying do
      Task.Wait(1)
    end

    CURRENT_TRACK.text = "Nothing..."

    isSongPlaying = false
  end
end

function updateOwnedTracks(player, key)
  if player == clientPlayer and key == "OwnedTracks" then

    local money = player:GetResource("Money")
    local ownedTracks = player:GetPrivateNetworkedData("OwnedTracks")

    for _, trackName in ipairs(ownedTracks) do
      local track = TRACK_LIST:FindChildByName(trackName)
      local buyButton = track:FindChildByName("Buy")
      local playButton = track:FindChildByName("Play")

      buyButton.visibility = Visibility.FORCE_OFF
      playButton.visibility = Visibility.INHERIT
    end

    for i, track in ipairs(trackList) do
      local buyButton = track:FindChildByName("Buy")
      local playButton = track:FindChildByName("Play")

      if money < track.clientUserData["Price"] then
        buyButton.isInteractable = false
      else
        buyButton.isInteractable = true
      end

      if money < playPrice then
        playButton.isInteractable = false
      else
        playButton.isInteractable = true
      end
    end
  end
end

-- handler params: Player_player, table_parameters
Input.escapeHook:Connect(escapeHandler)

-- handler params: UIButton_button
CLOSE_BUTTON.clickedEvent:Connect(hidePanel)

-- handler params: Trigger_trigger, Player_player
TRIGGER.interactedEvent:Connect(showPanel)

-- handler params: Player_player, string_key
clientPlayer.privateNetworkedDataChangedEvent:Connect(updateOwnedTracks)

Events.Connect("PlayerPlayedTrack", onPlayerPlayedTrack)
