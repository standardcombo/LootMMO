--[[
Copyright 2019-2020 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local API_A = require(script:GetCustomProperty("APIAbility"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_T = require(script:GetCustomProperty("APITargeting"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local NAMEPLATE_TEMPLATE = script:GetCustomProperty("NameplateTemplate")
local STATUS_EFFECT_TEMPLATE = script:GetCustomProperty("StatusEffectTemplate")

-- User exposed properties
local SHOW_NAMES = COMPONENT_ROOT:GetCustomProperty("ShowNames")
local SHOW_HEALTHBARS = COMPONENT_ROOT:GetCustomProperty("ShowHealthbars")
local SHOW_ON_SELF = COMPONENT_ROOT:GetCustomProperty("ShowOnSelf")
local SHOW_ON_TEAMMATES = COMPONENT_ROOT:GetCustomProperty("ShowOnTeammates")
local MAX_DISTANCE_ON_TEAMMATES = COMPONENT_ROOT:GetCustomProperty("MaxDistanceOnTeammates")
local SHOW_ON_ENEMIES = COMPONENT_ROOT:GetCustomProperty("ShowOnEnemies")
local MAX_DISTANCE_ON_ENEMIES = COMPONENT_ROOT:GetCustomProperty("MaxDistanceOnEnemies")
local SHOW_ON_DEAD_PLAYERS = COMPONENT_ROOT:GetCustomProperty("ShowOnDeadPlayers")
local SCALE = COMPONENT_ROOT:GetCustomProperty("Scale")
local TARGET_SCALE_MULTIPLIER = COMPONENT_ROOT:GetCustomProperty("TargetScaleMultiplier")
local SHOW_NUMBERS = COMPONENT_ROOT:GetCustomProperty("ShowNumbers")
local ANIMATE_CHANGES = COMPONENT_ROOT:GetCustomProperty("AnimateChanges")
local CHANGE_ANIMATION_TIME = COMPONENT_ROOT:GetCustomProperty("ChangeAnimationTime")

-- User exposed properties (colors)
local FRIENDLY_NAME_COLOR = COMPONENT_ROOT:GetCustomProperty("FriendlyNameColor")
local ENEMY_NAME_ASLEEP_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyNameAsleepColor")
local ENEMY_NAME_READY_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyNameReadyColor")
local ENEMY_NAME_COMBAT_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyNameCombatColor")
local ENEMY_NAME_AGGRO_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyNameAggroColor")
local BORDER_COLOR = COMPONENT_ROOT:GetCustomProperty("BorderColor")
local BORDER_AGGRO_COLOR = COMPONENT_ROOT:GetCustomProperty("BorderAggroColor")
local BACKGROUND_COLOR = COMPONENT_ROOT:GetCustomProperty("BackgroundColor")
local FRIENDLY_HEALTH_COLOR = COMPONENT_ROOT:GetCustomProperty("FriendlyHealthColor")
local ENEMY_HEALTH_ASLEEP_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyHealthAsleepColor")
local ENEMY_HEALTH_READY_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyHealthReadyColor")
local ENEMY_HEALTH_COMBAT_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyHealthCombatColor")
local DAMAGE_CHANGE_COLOR = COMPONENT_ROOT:GetCustomProperty("DamageChangeColor")
local HEAL_CHANGE_COLOR = COMPONENT_ROOT:GetCustomProperty("HealChangeColor") 
local HEALTH_NUMBER_COLOR = COMPONENT_ROOT:GetCustomProperty("HealthNumberColor") 

-- Check user properties
if MAX_DISTANCE_ON_TEAMMATES < 0.0 then
    warn("MaxDistanceOnTeammates cannot be negative")
    MAX_DISTANCE_ON_TEAMMATES = 0.0
end

if MAX_DISTANCE_ON_ENEMIES < 0.0 then
    warn("MaxDistanceOnEnemies cannot be negative")
    MAX_DISTANCE_ON_ENEMIES = 0.0
end

if SCALE <= 0.0 then
    warn("Scale must be positive")
    SCALE = 1.0
end

if CHANGE_ANIMATION_TIME <= 0.0 then
    warn("ChangeAnimationTime must be positive")
    CHANGE_ANIMATION_TIME = 1.0
end

--Constants
-- In units of scale
local BORDER_WIDTH = 0.02
local NAMEPLATE_LAYER_THICKNESS = 0.01			-- To force draw order
local HEALTHBAR_WIDTH = 1.5
local HEALTHBAR_HEIGHT = 0.14
local STATUS_EFFECT_X_STEP = nil		-- Defined when we spawn a panel and see its size

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Variables
local nameplates = {}

function CreateNameplate(character, data)
	assert(character:IsA("Player") or data)
	local nameplateRoot = World.SpawnAsset(NAMEPLATE_TEMPLATE)
	nameplateRoot.visibility = Visibility.FORCE_OFF

	nameplates[character] = {}
	nameplates[character].templateRoot = nameplateRoot
	nameplates[character].borderPiece = nameplateRoot:GetCustomProperty("BorderPiece"):WaitForObject()
	nameplates[character].backgroundPiece = nameplateRoot:GetCustomProperty("BackgroundPiece"):WaitForObject()
	nameplates[character].healthPiece = nameplateRoot:GetCustomProperty("HealthPiece"):WaitForObject()
	nameplates[character].changePiece = nameplateRoot:GetCustomProperty("ChangePiece"):WaitForObject()
	nameplates[character].levelBackgroundPiece = nameplateRoot:GetCustomProperty("LevelBackgroundPiece"):WaitForObject()
	nameplates[character].healthText = nameplateRoot:GetCustomProperty("HealthText"):WaitForObject()
	nameplates[character].nameText = nameplateRoot:GetCustomProperty("NameText"):WaitForObject()
	nameplates[character].levelText = nameplateRoot:GetCustomProperty("LevelText"):WaitForObject()

	-- Cast Bar
	nameplates[character].castBarGroup = nameplateRoot:GetCustomProperty("CastBarGroup"):WaitForObject()
	nameplates[character].castBorderPiece = nameplateRoot:GetCustomProperty("CastBorderPiece"):WaitForObject()
	nameplates[character].castBackgroundPiece = nameplateRoot:GetCustomProperty("CastBackgroundPiece"):WaitForObject()
	nameplates[character].castProgressPiece = nameplateRoot:GetCustomProperty("CastProgressPiece"):WaitForObject()
	nameplates[character].castNameText = nameplateRoot:GetCustomProperty("CastNameText"):WaitForObject()

	nameplates[character].castBarGroup.visibility = Visibility.FORCE_OFF
	nameplates[character].castBorderPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH + 2.0 * BORDER_WIDTH, HEALTHBAR_HEIGHT + 2.0 * BORDER_WIDTH))
	nameplates[character].castBorderPiece:SetPosition(Vector3.New(-3.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, -100.0 * (HEALTHBAR_HEIGHT + BORDER_WIDTH)))
	nameplates[character].castBorderPiece:SetColor(BORDER_COLOR)
	nameplates[character].castBackgroundPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH, HEALTHBAR_HEIGHT))
	nameplates[character].castBackgroundPiece:SetPosition(Vector3.New(-2.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, -100.0 * (HEALTHBAR_HEIGHT + BORDER_WIDTH)))
	nameplates[character].castBackgroundPiece:SetColor(BACKGROUND_COLOR)
	nameplates[character].castNameText:SetPosition(Vector3.New(50.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, -100.0 * (HEALTHBAR_HEIGHT + BORDER_WIDTH)))		-- Text must be 50 units ahead as it doesn't have thickness

	nameplates[character].statusEffectIcons = {}
	nameplates[character].panel = nameplateRoot:GetCustomProperty("Panel"):WaitForObject()
	nameplates[character].container = nameplateRoot:GetCustomProperty("Container"):WaitForObject()

	-- UI parented to a player doesn't display, so we stick them in the nameplate folder
	nameplates[character].container.parent = COMPONENT_ROOT

	if not STATUS_EFFECT_X_STEP then
		STATUS_EFFECT_X_STEP = nameplates[character].panel.width / API_SE.MAX_STATUS_EFFECTS
	end

	for i = 1, API_SE.MAX_STATUS_EFFECTS do
		local iconTemplate = World.SpawnAsset(STATUS_EFFECT_TEMPLATE, {parent = nameplates[character].panel})
		iconTemplate.visibility = Visibility.FORCE_OFF
		iconTemplate.x = STATUS_EFFECT_X_STEP * (i - (API_SE.MAX_STATUS_EFFECTS + 1) / 2)
		iconTemplate.y = 0
		nameplates[character].statusEffectIcons[i] = iconTemplate
	end

	-- For animating changes. Each change clobbers the previous state.
	nameplates[character].lastHealthFraction = 1.0
	nameplates[character].lastHealthTime = 0.0
	nameplates[character].lastFrameHealthFraction = 1.0

	-- Setup static properties
	if character:IsA("Player") then
		nameplateRoot:AttachToPlayer(character, "nameplate")
	elseif data then
		if data.animatedMesh then
			data.animatedMesh:AttachCoreObject(nameplateRoot, "root")
			nameplates[character].animatedMesh = data.animatedMesh

			-- Bigger enemies need a bigger gap before their nameplate
			nameplateRoot:SetPosition(Vector3.UP * (data.capsuleHeight * 1.1 / data.animatedMesh:GetWorldScale().z + 20.0))
		else
			nameplateRoot.parent = character
			nameplateRoot:SetPosition(Vector3.UP * (data.capsuleHeight * 1.1 + 20.0))
		end
	end

	-- Static properties on pieces
	nameplates[character].borderPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH + 2.0 * BORDER_WIDTH, HEALTHBAR_HEIGHT + 2.0 * BORDER_WIDTH))
	nameplates[character].borderPiece:SetPosition(Vector3.New(-3.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, 0.0))
	nameplates[character].borderPiece:SetColor(BORDER_COLOR)
	nameplates[character].backgroundPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH, HEALTHBAR_HEIGHT))
	nameplates[character].backgroundPiece:SetPosition(Vector3.New(-2.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, 0.0))
	nameplates[character].backgroundPiece:SetColor(BACKGROUND_COLOR)
	nameplates[character].levelBackgroundPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_HEIGHT + 2.0 * BORDER_WIDTH, HEALTHBAR_HEIGHT + 2.0 * BORDER_WIDTH))
	nameplates[character].levelBackgroundPiece:SetPosition(Vector3.New(-3.0 * NAMEPLATE_LAYER_THICKNESS, 50.0 * (HEALTHBAR_WIDTH + HEALTHBAR_HEIGHT + 4.0 * BORDER_WIDTH), 0.0))
	nameplates[character].levelBackgroundPiece:SetColor(BORDER_COLOR)
	nameplates[character].healthText:SetPosition(Vector3.New(50.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, 0.0))		-- Text must be 50 units ahead as it doesn't have thickness
	nameplates[character].healthText:SetColor(HEALTH_NUMBER_COLOR)
	nameplates[character].levelText:SetPosition(Vector3.New(50.0 * NAMEPLATE_LAYER_THICKNESS, 50.0 * (HEALTHBAR_WIDTH + HEALTHBAR_HEIGHT + 4.0 * BORDER_WIDTH), 0.0))

	if character:IsA("Player") then
		nameplates[character].nameText.text = character.name
	elseif data then
		nameplates[character].nameText.text = data.name
	end

	nameplates[character].borderPiece.visibility = Visibility.FORCE_OFF
	nameplates[character].backgroundPiece.visibility = Visibility.FORCE_OFF
	nameplates[character].healthPiece.visibility = Visibility.FORCE_OFF
	nameplates[character].changePiece.visibility = Visibility.FORCE_OFF
	nameplates[character].healthText.visibility = Visibility.FORCE_OFF
	nameplates[character].nameText.visibility = Visibility.FORCE_OFF

	if SHOW_HEALTHBARS then
		nameplates[character].borderPiece.visibility = Visibility.INHERIT
		nameplates[character].backgroundPiece.visibility = Visibility.INHERIT
		nameplates[character].healthPiece.visibility = Visibility.INHERIT

		if ANIMATE_CHANGES then
			nameplates[character].changePiece.visibility = Visibility.INHERIT
		end

		if SHOW_NUMBERS then
			nameplates[character].healthText.visibility = Visibility.INHERIT
		end
	end

	if SHOW_NAMES then
		nameplates[character].nameText.visibility = Visibility.INHERIT
	end
end

-- nil OnPlayerJoined(Player)
-- Creates a nameplate for the local player to see the target player's status
function OnPlayerJoined(player)
	CreateNameplate(player)
end

-- nil OnPlayerLeft(Player)
-- Destroy their nameplate
function OnPlayerLeft(player)
	nameplates[player].container:Destroy()
	nameplates[player].templateRoot:Destroy()
	nameplates[player] = nil
end

function OnNPCCreated(npc, data)
	CreateNameplate(npc, data)
end

function OnNPCDestroyed(npc)
	nameplates[npc].container:Destroy()
	-- AnimatedMeshes destroy their attachments when destroyed, so we don't need to
	nameplates[npc] = nil
end

-- bool IsNameplateVisible(Player)
-- Can we see this player's nameplate given team and distance properties?
function IsNameplateVisible(character)
	if not SHOW_ON_DEAD_PLAYERS then
		if character:IsA("Player") and character.isDead then
			return false
		end

		if not character:IsA("Player") and API_NPC.IsDead(character) then
			return false
		end
	end

	if character == LOCAL_PLAYER then
		return SHOW_ON_SELF
	end

	-- Special casing this for Boss Fight, all NPCs are enemy
	-- 0 distance is special, and means we always display them
	if not character:IsA("Player") or Teams.AreTeamsEnemies(character.team, LOCAL_PLAYER.team) then
		if SHOW_ON_ENEMIES and not API_NPC.IsAsleep(character) then
			local distance = (character:GetWorldPosition() - LOCAL_PLAYER:GetWorldPosition()).size

			if MAX_DISTANCE_ON_ENEMIES == 0.0 or distance <= MAX_DISTANCE_ON_ENEMIES then
				return true
			end
		end
	else
		if SHOW_ON_TEAMMATES then
			local distance = (character:GetWorldPosition() - LOCAL_PLAYER:GetWorldPosition()).size

			if MAX_DISTANCE_ON_TEAMMATES == 0.0 or distance <= MAX_DISTANCE_ON_TEAMMATES then
				return true
			end
		end
	end

	return false
end

-- nil RotateNameplate(CoreObject)
-- Called every frame to make nameplates align with the local view
function RotateNameplate(nameplate)
	local quat = Quaternion.New(LOCAL_PLAYER:GetViewWorldRotation())
	quat = quat * Quaternion.New(Vector3.UP, 180.0)
	nameplate.templateRoot:SetWorldRotation(Rotation.New(quat))
end

-- nil OnAbilityInterrupted(player)
-- Handle interrupted abilities with proper ui
function OnAbilityInterrupted(player)
	local nameplate = nameplates[player]
	nameplate.castBarGroup.visibility = Visibility.INHERIT
    nameplate.castProgressPiece:SetColor(Color.RED)
    nameplate.castNameText.text = "Cast Interrupted"
    nameplate.interruptTime = os.clock()
end

-- nil Tick(float)
-- Update dynamic properties (ex. team, health, and health animation) of every nameplate
function Tick(deltaTime)
	local npcData = API_NPC.GetAllNPCData()

	-- Update all nameplates
	for character, nameplate in pairs(nameplates) do
		-- We calculate visibility every frame to handle when teams change
		local visible = IsNameplateVisible(character)

		if not visible then
			nameplate.templateRoot.visibility = Visibility.FORCE_OFF
			nameplate.container.visibility = Visibility.FORCE_OFF
		else
			nameplate.templateRoot.visibility = Visibility.FORCE_ON		-- Some animated meshes are hidden and replaced by costumes
			nameplate.container.visibility = Visibility.INHERIT
			RotateNameplate(nameplate)

			-- Update cast bar
			if character:IsA("Player") then
				nameplate.castBarGroup.visibility = Visibility.FORCE_OFF

			    if nameplate.interruptTime then
					nameplate.castBarGroup.visibility = Visibility.INHERIT

			        if nameplate.interruptTime + 0.5 < os.clock() then
			            nameplate.interruptTime = nil
			        end
			    else
	    			local castData = API_A.GetPlayerCastData(character)

				    if castData then
				        local totalTime = API_A.GetAbilityCastDuration(LOCAL_PLAYER, castData.abilityName)
				        local remainingTime = castData.startTime + totalTime - os.clock()
						nameplate.castBarGroup.visibility = Visibility.INHERIT
	                    local castProgress = CoreMath.Clamp(1.0 - remainingTime / totalTime, 0.0, 1.0)
						local castProgressPieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 - castProgress)
						nameplate.castProgressPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH * castProgress, HEALTHBAR_HEIGHT))
						nameplate.castProgressPiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, castProgressPieceOffset, -100.0 * (HEALTHBAR_HEIGHT + BORDER_WIDTH)))
	        			nameplate.castProgressPiece:SetColor(Color.YELLOW)
	                    nameplate.castNameText.text = castData.abilityName
			        end
			    end
		    end

			-- Update scale for target
			local scale = SCALE

			if API_T.GetTarget(LOCAL_PLAYER) == character then
				scale = scale * TARGET_SCALE_MULTIPLIER
			end

			nameplate.templateRoot:SetScale(Vector3.New(scale))

			-- Update status effects
			local nameplatePosition = nameplate.templateRoot:GetWorldPosition()
			local nameplateUp = nameplate.templateRoot:GetWorldRotation() * Vector3.UP
			local characterScale = character:GetWorldScale().z

			if nameplate.animatedMesh then
				characterScale = nameplate.animatedMesh:GetWorldScale().z
			end

			local statusEffectPosition = nameplatePosition + nameplateUp * (BORDER_WIDTH + HEALTHBAR_HEIGHT) * 115.0 * scale * characterScale
			local screenPosition = UI.GetScreenPosition(statusEffectPosition)
			local targetDistance = LOCAL_PLAYER:GetViewWorldRotation() * Vector3.FORWARD .. (nameplatePosition - LOCAL_PLAYER:GetViewWorldPosition())

			if targetDistance > 0.0 and screenPosition then
				local statusEffects = API_SE.GetStatusEffectsOnCharacter(character)
				
				nameplate.panel.visibility = Visibility.INHERIT
				nameplate.panel.x = screenPosition.x
				nameplate.panel.y = screenPosition.y
				local uiScale = math.min(10.0, 250.0 / targetDistance) * scale * characterScale

				for i = 1, API_SE.MAX_STATUS_EFFECTS do
					local data = statusEffects[i]
					local iconTemplate = nameplate.statusEffectIcons[i]

					if data then
						local icon = iconTemplate:GetCustomProperty("Icon"):WaitForObject()
						local timeText = iconTemplate:GetCustomProperty("TimeText"):WaitForObject()

						-- Apply scale
						iconTemplate.x = uiScale * STATUS_EFFECT_X_STEP * (i - (API_SE.MAX_STATUS_EFFECTS + 1) / 2) * 1.5
						iconTemplate.y = uiScale * -20.0
						iconTemplate.width = math.floor(uiScale * 80.0)
						iconTemplate.height = math.floor(uiScale * 80.0)
						timeText.height = math.floor(uiScale * 100.0)
						timeText.fontSize = uiScale * 50.0

						local effectData = API_SE.STATUS_EFFECT_DEFINITIONS[data.name]
						iconTemplate.visibility = Visibility.INHERIT
						icon:SetImage(effectData.icon)

						if effectData.duration then
							local timeLeft = data.startTime + effectData.duration - time()

							if timeLeft > 180.0 then
								timeText.text = string.format("%dm", math.max(0.0, timeLeft // 60.0))
							else
								timeText.text = string.format("%.1f", math.max(0.0, timeLeft))
							end
						else
							timeText.text = ""
						end
					else
						iconTemplate.visibility = Visibility.FORCE_OFF
					end
				end
			else
				nameplate.panel.visibility = Visibility.FORCE_OFF
			end

			if SHOW_HEALTHBARS then
				local hitPoints = nil
				local maxHitPoints = nil

				if character:IsA("Player") then
					hitPoints = character.hitPoints
					maxHitPoints = character.maxHitPoints
				else
					hitPoints = API_NPC.GetHitPoints(character)
					maxHitPoints = API_NPC.GetMaxHitPoints(character)
				end

				local healthFraction = hitPoints / maxHitPoints
				local visibleHealthFraction = healthFraction			-- For animating changes

				-- Set size and position of change piece
				if ANIMATE_CHANGES then
					local timeSinceChange = CoreMath.Clamp(os.clock() - nameplate.lastHealthTime, 0.0, CHANGE_ANIMATION_TIME)
					local timeScale = 1.0 - timeSinceChange / CHANGE_ANIMATION_TIME
					local changeFraction = timeScale * (nameplate.lastHealthFraction - healthFraction)
					nameplate.changePiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH * math.abs(changeFraction), HEALTHBAR_HEIGHT))

					if changeFraction == 0.0 then
						nameplate.changePiece.visibility = Visibility.FORCE_OFF
					else
						nameplate.changePiece.visibility = Visibility.INHERIT

						if changeFraction > 0.0 then		-- Character took damage
							local changePieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 - changeFraction) - 100.0 * HEALTHBAR_WIDTH * healthFraction
							nameplate.changePiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, changePieceOffset, 0.0))
							nameplate.changePiece:SetColor(DAMAGE_CHANGE_COLOR)
						else								-- Character was healed	
							visibleHealthFraction = visibleHealthFraction + changeFraction
							local changePieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 + changeFraction) - 100.0 * HEALTHBAR_WIDTH * visibleHealthFraction
							nameplate.changePiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, changePieceOffset, 0.0))
							nameplate.changePiece:SetColor(HEAL_CHANGE_COLOR)
						end
					end

					-- Detect health changes to set the animation state
					if healthFraction ~= nameplate.lastFrameHealthFraction then
						-- If you just respawned, don't show it like a big heal
						if nameplate.lastFrameHealthFraction == 0.0 then
							nameplate.lastHealthTime = 0.0
							nameplate.lastHealthFraction = healthFraction
						else
							nameplate.lastHealthTime = os.clock()
							nameplate.lastHealthFraction = nameplate.lastFrameHealthFraction
						end
						
						nameplate.lastFrameHealthFraction = healthFraction
					end
				end

				-- Set size and position of health bar
				local healthPieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 - visibleHealthFraction)
				nameplate.healthPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH * visibleHealthFraction, HEALTHBAR_HEIGHT))
				nameplate.healthPiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, healthPieceOffset, 0.0))

				-- Update hit point number
				if SHOW_NUMBERS then
					nameplate.healthText.text = string.format("%.0f / %.0f", hitPoints, maxHitPoints)
				end

				-- Update Level
				if character:IsA("Player") then
					if character.clientUserData.statSheet then	-- If stats aren't ready, they will be soon
						nameplate.levelText.text = tostring(character.clientUserData.statSheet:GetLevel())
					end
				else
					nameplate.levelText.text = tostring(API_NPC.GetAllNPCData()[character].level)
				end

				nameplate.borderPiece:SetColor(BORDER_COLOR)

				-- Do we have aggro
				if not character:IsA("Player") and API_NPC.GetTarget(character) == LOCAL_PLAYER then
					nameplate.borderPiece:SetColor(BORDER_AGGRO_COLOR)
				end
			end

			-- Update name and health color based on teams and state
			if SHOW_NAMES then
				local nameColor = nil
				local healthColor = nil

				if character:IsA("Player") then
					nameColor = FRIENDLY_NAME_COLOR
					healthColor = FRIENDLY_HEALTH_COLOR
				else
					if API_NPC.IsAsleep(character) then			-- Asleep
						nameColor = ENEMY_NAME_ASLEEP_COLOR
						healthColor = ENEMY_HEALTH_ASLEEP_COLOR
					else
						local target = API_NPC.GetTarget(character)

						if target then	-- Combat
							if target == LOCAL_PLAYER then
								nameColor = ENEMY_NAME_AGGRO_COLOR
							else
								nameColor = ENEMY_NAME_COMBAT_COLOR
							end

							healthColor = ENEMY_HEALTH_COMBAT_COLOR
						else										-- Ready
							nameColor = ENEMY_NAME_READY_COLOR
							healthColor = ENEMY_HEALTH_READY_COLOR
						end
					end
				end

				-- Adjust slightly if it's our target
				if API_T.GetTarget(LOCAL_PLAYER) == character then
					nameplate.nameText:SetScale(Vector3.New(1.15))
				else
					nameplate.nameText:SetScale(Vector3.ONE)
				end

				nameplate.nameText:SetColor(nameColor)
				nameplate.healthPiece:SetColor(healthColor)
			end
		end
	end
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
API_RE.Connect("NPC_Created", OnNPCCreated)
API_RE.Connect("NPC_Destroyed", OnNPCDestroyed)
API_RE.Connect("AI", OnAbilityInterrupted)

for npc, data in pairs(API_NPC.GetAllNPCData()) do
	OnNPCCreated(npc, data)
end
