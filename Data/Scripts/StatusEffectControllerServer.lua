local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local STATE_TRACKER_GROUP = script:GetCustomProperty("StateTrackerGroup"):WaitForObject()
local PLAYER_STATE_TEMPLATE = script:GetCustomProperty("PlayerStateTemplate")

local playerSettingsInitialized = false

function OnPlayerDied(player)
	for i, _ in pairs(API_SE.GetStatusEffectsOnPlayer(player)) do
		API_SE.RemoveStatusEffect(player, i)
	end
end

function OnPlayerJoined(player)
	local stateTracker = World.SpawnAsset(PLAYER_STATE_TEMPLATE, {parent = STATE_TRACKER_GROUP})
	stateTracker.name = API_SE.GetStateTrackerName(player)

	if not playerSettingsInitialized then
		API_SE.InitializePlayerSettings(player)
		playerSettingsInitialized = true
	end

	player.diedEvent:Connect(OnPlayerDied)
end

function OnPlayerLeft(player)
	local playerTracker = API_SE.GetStateTracker(player)
	if playerTracker and Object.IsValid(playerTracker) then
		playerTracker:Destroy()
	end
end

function Tick(deltaTime)
	API_SE.Tick(deltaTime)
end

API_SE.InitializeStatusEffectController(STATE_TRACKER_GROUP)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
