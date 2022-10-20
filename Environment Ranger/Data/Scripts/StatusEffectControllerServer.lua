local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local STATE_TRACKER_GROUP = script:GetCustomProperty("StateTrackerGroup"):WaitForObject()
local CHARACTER_STATE_TEMPLATE = script:GetCustomProperty("CharacterStateTemplate")

local playerSettingsInitialized = false

function OnPlayerDied(player)
	for i, _ in pairs(API_SE.GetStatusEffectsOnCharacter(player)) do
		API_SE.RemoveStatusEffect(player, i)
	end
end

function OnPlayerJoined(player)
	local stateTracker = World.SpawnAsset(CHARACTER_STATE_TEMPLATE, {parent = STATE_TRACKER_GROUP})
	stateTracker.name = API_SE.GetStateTrackerName(player)

	if not playerSettingsInitialized then
		API_SE.InitializePlayerSettings(player)
		playerSettingsInitialized = true
	end

	player.diedEvent:Connect(OnPlayerDied)
end

function OnPlayerLeft(player)
	API_SE.GetStateTracker(player):Destroy()
end

function OnNPCDied(npc)
	for i, _ in pairs(API_SE.GetStatusEffectsOnCharacter(npc)) do
		API_SE.RemoveStatusEffect(npc, i)
	end
end

function OnNPCCreated(npc, data)
	local stateTracker = World.SpawnAsset(CHARACTER_STATE_TEMPLATE, {parent = STATE_TRACKER_GROUP})
	stateTracker.name = API_SE.GetStateTrackerName(npc)
end

function OnNPCDestroyed(npc)
	API_SE.GetStateTracker(npc):Destroy()
end

function Tick(deltaTime)
	API_SE.Tick(deltaTime)
end

API_SE.InitializeStatusEffectController(STATE_TRACKER_GROUP)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
API_RE.Connect("NPC_Died", OnNPCDied)
API_RE.Connect("NPC_Created", OnNPCCreated)
API_RE.Connect("NPC_Destroyed", OnNPCDestroyed)

for npc, data in pairs(API_NPC.GetAllNPCData()) do
	OnNPCCreated(npc, data)
end
