local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local STATE_TRACKER_GROUP = script:GetCustomProperty("StateTrackerGroup"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local EFFECT_FADE_OUT_TIME = 0.6

local effectObjects = {} -- Player -> index -> int
local AllPlayers = {}

function FadeOutEffect(effectObject)
	for _, object in pairs(effectObject:FindDescendantsByType("Audio")) do
		object:FadeOut(EFFECT_FADE_OUT_TIME)
	end

	for _, object in pairs(effectObject:FindDescendantsByType("SmartAudio")) do
		object:FadeOut(EFFECT_FADE_OUT_TIME)
	end

	for _, object in pairs(effectObject:FindDescendantsByType("Vfx")) do
		object:ScaleTo(Vector3.ZERO, EFFECT_FADE_OUT_TIME)
	end

	Task.Wait(EFFECT_FADE_OUT_TIME)

	if Object.IsValid(effectObject) then
		effectObject:Destroy()
	end
end

function OnPlayerLeft(player)
	for _, effectObject in pairs(effectObjects[player]) do
		if Object.IsValid(effectObject) then
			FadeOutEffect(effectObject)
		end
	end

	effectObjects[player] = nil
end

function OnPlayerJoined(player)
	effectObjects[player] = {}
	if not player:IsA("Player") then
		player.destroyEvent:Connect(OnPlayerLeft)
	end
end

function UpdatePlayers()
	local players = Game.GetPlayers() --_G["standardcombo.Combat.Wrap"].GetAll()
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
	UpdatePlayers()
	for _, player in ipairs(AllPlayers) do
		if Object.IsValid(player) then
			local effects = API_SE.GetStatusEffectsOnPlayer(player)

			for i = 1, API_SE.MAX_STATUS_EFFECTS do
				local effectObject = effectObjects[player][i]

				if effects[i] and not effectObject then
					local statusEffectData = API_SE.STATUS_EFFECT_DEFINITIONS[effects[i].name]
					effectObjects[player][i] = World.SpawnAsset(statusEffectData.effectTemplate)
					if player:IsA("Player") then
						effectObjects[player][i]:AttachToPlayer(player, "root")
					else
						effectObjects[player][i]:SetWorldPosition(player:GetWorldPosition())
						effectObjects[player][i]:SetWorldRotation(player:GetWorldRotation())
						effectObjects[player][i]:Follow(player,600)
						effectObjects[player][i].clientUserData.parent = player
					end
					effectObjects[player][i].clientUserData.owner = player -- added so a status template can know the player its attached to
					effectObjects[player][i].clientUserData.source = effects[i].source

					if effects[i].name == "Blind" and effects[i].source and player == LOCAL_PLAYER and
						effects[i].source ~= LOCAL_PLAYER.id then
						local blind = effectObjects[player][i]:GetCustomProperty("Blind"):WaitForObject()
						blind:SetSmartProperty("Hold Duration", effects[i].duration)
						blind:Play()
					end
				elseif not effects[i] and effectObject then
					if Object.IsValid(effectObject) then
						FadeOutEffect(effectObject)
					end

					effectObjects[player][i] = nil
				end
			end
		end
	end
end

Game.playerLeftEvent:Connect(OnPlayerLeft)
API_SE.InitializeStatusEffectController(STATE_TRACKER_GROUP)
