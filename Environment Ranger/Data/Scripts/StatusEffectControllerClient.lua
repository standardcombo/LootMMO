local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_E = require(script:GetCustomProperty("APIEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local STATE_TRACKER_GROUP = script:GetCustomProperty("StateTrackerGroup"):WaitForObject()

local EFFECT_FADE_OUT_TIME = 0.6
local EFFECT_DESTROY_DELAY = 3.0

local effectObjects = {}		-- Player -> index -> int

function OnPlayerJoined(player)
	effectObjects[player] = {}
end

function OnPlayerLeft(player)
	for _, effectObject in pairs(effectObjects[player]) do
		if Object.IsValid(effectObject) then
			API_E.FadeOutEffect(effectObject)
		end
	end

	effectObjects[player] = nil
end

function OnNPCCreated(npc, data)
	effectObjects[npc] = {}
end

function OnNPCDestroyed(npc)
	for _, effectObject in pairs(effectObjects[npc]) do
		if Object.IsValid(effectObject) then
			API_E.FadeOutEffect(effectObject)
		end
	end

	effectObjects[npc] = nil
end

function UpdateEffectObjects(character, data)
	local effects = API_SE.GetStatusEffectsOnCharacter(character)

	for i = 1, API_SE.MAX_STATUS_EFFECTS do
		local effectObject = effectObjects[character][i]

		if effects[i] and not effectObject then
			local statusEffectData = API_SE.STATUS_EFFECT_DEFINITIONS[effects[i].name]

			if statusEffectData.effectTemplate then
				effectObjects[character][i] = World.SpawnAsset(statusEffectData.effectTemplate)

				if character:IsA("Player") then
					effectObjects[character][i]:AttachToPlayer(character, "root")
				elseif data.animatedMesh then
					data.animatedMesh:AttachCoreObject(effectObjects[character][i], "root")
				else
					effectObjects[character][i].parent = character
				end
			end
		elseif not effects[i] and effectObject then
			if Object.IsValid(effectObject) then
				API_E.FadeOutEffect(effectObject)
			end

			effectObjects[character][i] = nil
		end
	end
end

function Tick(deltaTime)
	for _, player in pairs(Game.GetPlayers()) do
		UpdateEffectObjects(player)
	end

	for npc, data in pairs(API_NPC.GetAllNPCData()) do
		UpdateEffectObjects(npc, data)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
API_RE.Connect("NPC_Created", OnNPCCreated)
API_RE.Connect("NPC_Destroyed", OnNPCDestroyed)
API_SE.InitializeStatusEffectController(STATE_TRACKER_GROUP)

for npc, data in pairs(API_NPC.GetAllNPCData()) do
	OnNPCCreated(npc, data)
end
