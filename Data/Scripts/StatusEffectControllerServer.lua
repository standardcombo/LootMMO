local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local STATE_TRACKER_GROUP = script:GetCustomProperty("StateTrackerGroup"):WaitForObject()
local PLAYER_STATE_TEMPLATE = script:GetCustomProperty("PlayerStateTemplate")

local playerSettingsInitialized = false
local AllPlayers = {}


function OnPlayerDied(player)
	for i, _ in pairs(API_SE.GetStatusEffectsOnPlayer(player)) do
		API_SE.RemoveStatusEffect(player, i)
	end
end

function OnPlayerLeft(player)
	local playerTracker = API_SE.GetStateTracker(player)
	if playerTracker and Object.IsValid(playerTracker) then
		playerTracker:Destroy()
	end
end

function OnPlayerJoined(player)
	if player:IsA("Damageable") and not player:IsA("Player") then
		player.destroyEvent:Connect(OnPlayerLeft)
	end
	local stateTracker = World.SpawnAsset(PLAYER_STATE_TEMPLATE, { parent = STATE_TRACKER_GROUP })
	stateTracker.name = API_SE.GetStateTrackerName(player)

	if not playerSettingsInitialized then
		API_SE.InitializePlayerSettings(player)
		playerSettingsInitialized = true
	end

	player.diedEvent:Connect(OnPlayerDied)
end

function UpdatePlayers()
	local players = Game.GetPlayers()
	local Damagable = World.FindObjectsByType("Damageable")

	for index, value in ipairs(Damagable) do
		table.insert(players, value)
	end

	local function NotInGame(player)
		for i = 1, #AllPlayers do
			if AllPlayers[i] == player then
				return false
			end
		end
		return true
	end

	for key, value in pairs(players) do
		if NotInGame(value) then
			OnPlayerJoined(value)
			table.insert(AllPlayers, value)
		end
	end

end

function Tick(deltaTime)
	API_SE.Tick(deltaTime)
	UpdatePlayers()
end

Game.playerLeftEvent:Connect(OnPlayerLeft)

API_SE.InitializeStatusEffectController(STATE_TRACKER_GROUP)
