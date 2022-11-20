--[[
	Animation Controller - Zombie
	v1.1.1
	by: standardcombo
	
	Controls the animations for a humanoid NPC with Animated Mesh.
	Changes in animation occur in response to movement and state machine changes.
--]]

Task.Wait()

local MESH = script:GetCustomProperty("AnimatedMesh"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local ATTACK_ANIMATION = script:GetCustomProperty("AttackAnim") or "zombie_unarmed_grab"
local ATTACK_PLAYBACK = script:GetCustomProperty("AttackPlayback") or 0.6
local PLAY_ATTACK_ON_RECOVERY = script:GetCustomProperty("PlayAttackOnRecovery")
local IDLE_STANCE = script:GetCustomProperty("IdleStance") or "zombie_unarmed_idle_ready"
local READY_STANCE = script:GetCustomProperty("ReadyStance") or "zombie_unarmed_idle_ready"
local WALK_STANCE = script:GetCustomProperty("WalkStance") or "zombie_unarmed_walk_forward"
local RUN_STANCE = script:GetCustomProperty("RunStance") or "zombie_unarmed_run_forward"
local WALKING_SPEED = 45
local RUNNING_SPEED = 350

local ATTACK_CYCLE_DURATION = 
	ROOT:GetCustomProperty("AttackCast") +
	ROOT:GetCustomProperty("AttackRecovery") +
	ROOT:GetCustomProperty("AttackCooldown")

local lastPos = script.parent:GetWorldPosition()
local speed = 0
local timeSinceLastAttack = 99999

local STATE_SLEEPING = 0
local STATE_ENGAGING = 1
local STATE_ATTACK_CAST = 2
local STATE_ATTACK_RECOVERY = 3
local STATE_PATROLLING = 4
local STATE_LOOKING_AROUND = 5
local STATE_DEAD_1 = 6
local STATE_DEAD_2 = 7
local STATE_DISABLED = 8


function PlayAttack()
	if ATTACK_ANIMATION ~= "" then
		MESH:PlayAnimation(ATTACK_ANIMATION, {playbackRate = ATTACK_PLAYBACK})
		MESH.playbackRateMultiplier = 1
	end
end

function PlayDamaged()
	MESH:PlayAnimation("unarmed_react_damage")
end

function PlayDeath()
	MESH:PlayAnimation("unarmed_death")
	Task.Wait(1.96)
	if Object.IsValid(MESH) then
		MESH.playbackRateMultiplier = 0
	end
end

function Tick(deltaTime)
	if deltaTime <= 0 then return end
	
	timeSinceLastAttack = timeSinceLastAttack + deltaTime
	
	local pos = script.parent:GetWorldPosition()
	pos = Vector3.Lerp(lastPos, pos, 0.2)
	local v = pos - lastPos
	local newSpeed = v.size / deltaTime
	speed = CoreMath.Lerp(speed, newSpeed, 0.2)
	
	lastPos = pos
	
	local currentState = GetCurrentState()
	
	if speed < WALKING_SPEED then
		if timeSinceLastAttack < ATTACK_CYCLE_DURATION then
			MESH.animationStance = READY_STANCE
		else
			MESH.animationStance = IDLE_STANCE
		end
		MESH.animationStancePlaybackRate = 1
		
	else
		if currentState == STATE_ENGAGING then
			MESH:StopAnimations()
		end
		
		if speed < RUNNING_SPEED then
			MESH.animationStance = WALK_STANCE
			MESH.animationStancePlaybackRate = 2 * (speed - WALKING_SPEED) / (RUNNING_SPEED - WALKING_SPEED)
		else
			MESH.animationStance = RUN_STANCE
			MESH.animationStancePlaybackRate = 0.5 + (speed - RUNNING_SPEED) * 0.002
		end
	end
end


function UpdateArt(state)		
	if state == STATE_ATTACK_CAST then
		timeSinceLastAttack = 0
		
		if (not PLAY_ATTACK_ON_RECOVERY) then
			PlayAttack()
		end
		
	elseif state == STATE_ATTACK_RECOVERY and PLAY_ATTACK_ON_RECOVERY then
		PlayAttack()
				
	elseif state == STATE_DEAD_1 then
		PlayDeath()
	end
end


function GetCurrentState()
	return ROOT:GetCustomProperty("CurrentState")
end


function OnPropertyChanged(object, propertyName)
	
	if (propertyName == "CurrentState") then
		UpdateArt(GetCurrentState())
	end
end
ROOT.networkedPropertyChangedEvent:Connect(OnPropertyChanged)


function OnObjectDamaged(id, prevHealth, dmgAmount, impactPosition, impactRotation, sourceObject)
	local state = GetCurrentState()
	if state == STATE_ATTACK_CAST then return end
	if state >= STATE_DEAD_1 then return end
	if speed > 40 then return end
	
	-- Ignore other NPCs, make sure this event is about this NPC
	local myId = ROOT:GetCustomProperty("ObjectId")
	if id == myId then
		PlayDamaged()
	end
end

local damagedListener = Events.Connect("ObjectDamaged", OnObjectDamaged)

function OnDestroyed(obj)
	if damagedListener then
		damagedListener:Disconnect()
		damagedListener = nil
	end
end

ROOT.destroyEvent:Connect(OnDestroyed)


--[[
function OnBindingPressed(player, action)
	if action == "ability_primary" then
		PlayAttack()
		
	elseif action == "ability_secondary" then
		PlayDeath()
	end
end

Game.playerJoinedEvent:Connect(function(player)
	player.bindingPressedEvent:Connect(OnBindingPressed)
end)
--]]