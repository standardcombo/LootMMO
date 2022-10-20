local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_T = require(script:GetCustomProperty("APITargeting"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local TSU = require(script:GetCustomProperty("TalentSelectorUtility"))

local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local FRAME_TEMPLATE = script:GetCustomProperty("FrameTemplate")
local STATUS_EFFECT_TEMPLATE = script:GetCustomProperty("StatusEffectTemplate")
local NPC_ICON = script:GetCustomProperty("NPCIcon")
local ENEMY_HEALTH_BAR_COLOR = script:GetCustomProperty("EnemyHealthBarColor")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local MAX_RANGE = 3000.0

local targetFrame = nil
local targetTargetFrame = nil
local partyFrames = {}		-- player -> frame
local partyArray = {}		-- index -> player, for positioning

function GetTargetTarget()
	local target = API_T.GetTarget(LOCAL_PLAYER)

	if target then
		if target:IsA("Player") then
			return API_T.GetTarget(target)
		else
			return API_NPC.GetTarget(target)
		end
	end
end

function OnFrameClick(frameData)
	local target = API_T.GetTarget(LOCAL_PLAYER)
	local targetTarget = GetTargetTarget()

	-- One frame wait so this happens after we target an enemy if they are behind the frame
	Task.Wait()

	-- We have to set it back, because we just clicked in space and it got cleared
	if frameData == targetFrame then
		if Object.IsValid(target) and not target.isDead then
			API_T.TrySetTarget(target, false)
		end
	elseif frameData == targetTargetFrame then
		if Object.IsValid(targetTarget) and not targetTarget.isDead then
			API_T.TrySetTarget(targetTarget, false)
		end
	else
		for player, data in pairs(partyFrames) do
			if frameData == data then
				if Object.IsValid(player) and not player.isDead then
					API_T.TrySetTarget(player, false)
				end
				
				return
			end
		end
	end
end

function CreateFrame()
	local data = {}
	data.frame = World.SpawnAsset(FRAME_TEMPLATE, {parent = CONTAINER})
	data.frame.visibility = Visibility.FORCE_OFF
	data.statusEffects = {}

	local statusEffectsRoot = data.frame:GetCustomProperty("StatusEffectsRoot"):WaitForObject()
	for i = 1, API_SE.MAX_STATUS_EFFECTS do
		data.statusEffects[i] = World.SpawnAsset(STATUS_EFFECT_TEMPLATE, { parent = statusEffectsRoot })
		data.statusEffects[i].visibility = Visibility.FORCE_OFF
		data.statusEffects[i].x = 67 + 20 * i
		data.statusEffects[i].y = -2
	end

	local hitButton = data.frame:GetCustomProperty("HitButton"):WaitForObject()
	hitButton.clickedEvent:Connect(function() OnFrameClick(data) end)

	return data
end

function SetFramePosition(data, x, y)
	data.frame.x = 20 + (x - 1) * 305
	data.frame.y = 20 + (y - 1) * 45
end

function DestroyFrame(data)
	data.frame:Destroy()
end

function OnPlayerJoined(player)
	if player == LOCAL_PLAYER then
		return
	end

	partyFrames[player] = CreateFrame()

	for i = 2, 16 do
		if not partyArray[i] then
			partyArray[i] = player
			SetFramePosition(partyFrames[player], 1, i)
			return
		end
	end
end

function OnPlayerLeft(player)
	DestroyFrame(partyFrames[player])
	partyFrames[player] = nil

	for i = 2, 16 do
		if partyArray[i] == player then
			for j = i + 1, 16 do
				if not partyArray[j] then
					partyArray[j - 1] = nil
					break
				end

				partyArray[j - 1] = partyArray[j]
				SetFramePosition(partyFrames[partyArray[j]], 1, j - 1)
			end

			return
		end
	end
end

-- if character is nil, we just hide the frame
function UpdateFrame(data, character)
	if not character or not Object.IsValid(character) then
		data.frame.visibility = Visibility.FORCE_OFF
	else
		data.frame.visibility = Visibility.INHERIT
		local fillColor = Color.GRAY
		local nameText = ""
		local hitPoints = nil
		local healthFraction = nil

		if character:IsA("Player") then
			nameText = character.name

			if character.isDead then
				nameText = nameText .. " (Dead)"
			end

			hitPoints = character.hitPoints
			healthFraction = hitPoints / character.maxHitPoints
			data.frame:GetCustomProperty("Icon"):WaitForObject():SetImage(character)
			local talentTreeName = TSU.GetPlayerTreeName(character)

			if talentTreeName and talentTreeName ~= "" then
				local talentTreeData = TSU.TALENT_TREE_DATA[talentTreeName]
				
				if talentTreeData then
					fillColor = talentTreeData.primaryColor
				end
			end
		else
			local npcData = API_NPC.GetAllNPCData()[character]
			nameText = npcData.name

			if API_NPC.IsDead(character) then
				nameText = nameText .. " (Dead)"
			end
			
			hitPoints = API_NPC.GetHitPoints(character)
			healthFraction = hitPoints / API_NPC.GetMaxHitPoints(character)
			data.frame:GetCustomProperty("Icon"):WaitForObject():SetImage(NPC_ICON)
			fillColor = ENEMY_HEALTH_BAR_COLOR
		end

		local distance = (character:GetWorldPosition() - LOCAL_PLAYER:GetWorldPosition()).size
		local progressBar = data.frame:GetCustomProperty("ProgressBar"):WaitForObject()
		local hitButton = data.frame:GetCustomProperty("HitButton"):WaitForObject()
		local outOfRange = data.frame:GetCustomProperty("OutOfRange"):WaitForObject()

		fillColor = Color.New(fillColor)
		fillColor.a = 0.9
		progressBar:SetFillColor(fillColor)

		-- Show the out-of-range indicator when appropriate.
		if distance > MAX_RANGE then
			outOfRange.visibility = Visibility.INHERIT
		else
			outOfRange.visibility = Visibility.FORCE_OFF
		end

		data.frame:GetCustomProperty("Name"):WaitForObject().text = nameText
		data.frame:GetCustomProperty("HitPoints"):WaitForObject().text = string.format("%d", math.floor(hitPoints))
		data.frame:GetCustomProperty("ProgressBar"):WaitForObject().progress = healthFraction

		-- Level
		if character:IsA("Player") then
			if character.clientUserData.statSheet then	-- If stats aren't ready, they will be soon
				local levelstring = tostring(character.clientUserData.statSheet:GetLevel())
				data.frame:GetCustomProperty("LevelText"):WaitForObject().text = levelstring
			end
		else
			local npcData = API_NPC.GetAllNPCData()[character]
			local levelstring = tostring(npcData.level)
			data.frame:GetCustomProperty("LevelText"):WaitForObject().text = levelstring
		end

		-- Status Effects
		for i = 1, API_SE.MAX_STATUS_EFFECTS do
			data.statusEffects[i].visibility = Visibility.FORCE_OFF
		end

		for i, statusEffectData in pairs(API_SE.GetStatusEffectsOnCharacter(character)) do
			data.statusEffects[i].visibility = Visibility.INHERIT
			local effectData = API_SE.STATUS_EFFECT_DEFINITIONS[statusEffectData.name]
			data.statusEffects[i]:GetCustomProperty("Icon"):WaitForObject():SetImage(effectData.icon)
		end

		-- Aggro
		data.frame:GetCustomProperty("AggroBorder"):WaitForObject().visibility = Visibility.FORCE_OFF

		for _, npc in pairs(API_NPC.GetAwakeNPCs()) do
			if API_NPC.GetTarget(npc) == character then
				data.frame:GetCustomProperty("AggroBorder"):WaitForObject().visibility = Visibility.INHERIT
				break
			end
		end
	end
end

function Tick(deltaTime)
	UpdateFrame(targetFrame, API_T.GetTarget(LOCAL_PLAYER))
	UpdateFrame(targetTargetFrame, GetTargetTarget())

	for player, data in pairs(partyFrames) do
		UpdateFrame(data, player)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

partyFrames[LOCAL_PLAYER] = CreateFrame()
targetFrame = CreateFrame()
targetTargetFrame = CreateFrame()
SetFramePosition(partyFrames[LOCAL_PLAYER], 1, 1)
SetFramePosition(targetFrame, 2, 1)
SetFramePosition(targetTargetFrame, 3, 1)
