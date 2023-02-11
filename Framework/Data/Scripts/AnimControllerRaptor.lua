--[[
	Animation Controller - Raptor
	v1.3
	by: standardcombo, blackdheart
	
	Controls the animations for an NPC based on the Raptor Animated Mesh.
	Changes in animation occur in response to movement and state machine changes.
	
	Can also be used for other animated meshes and customized by specifying
	the optional custom properties below.
--]]

Task.Wait()

local MESH = script:GetCustomProperty("AnimatedMesh"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local IDLE_STANCE = script:GetCustomProperty("IdleStance") or "unarmed_idle_ready"
local WALK_STANCE = script:GetCustomProperty("WalkStance") or "unarmed_walk_forward"
local RUN_STANCE = script:GetCustomProperty("RunStance") or "unarmed_run_forward"
local ATTACK_ANIM_1 = script:GetCustomProperty("AttackAnim_1") or "unarmed_bite"
local ATTACK_ANIM_2 = script:GetCustomProperty("AttackAnim_2") or "unarmed_claw"
local WALKING_SPEED = script:GetCustomProperty("WalkSpeed") or 5
local RUNNING_SPEED = script:GetCustomProperty("RunSpeed") or 350

local lastPos = script.parent:GetWorldPosition()
local speed = 0

local attackIndex = 1

function PlayAttack()
	if attackIndex == 1 then
		MESH:PlayAnimation(ATTACK_ANIM_1, {playbackRate = 1.5})
		attackIndex = 2
	else
		MESH:PlayAnimation(ATTACK_ANIM_2, {playbackRate = 1.3})
		attackIndex = 1
	end
	MESH.playbackRateMultiplier = 1
end

function PlayDamaged()
	MESH:PlayAnimation("unarmed_react_damage")
end

function PlayDeath()
	MESH:PlayAnimation("unarmed_death")
	Task.Wait(1.96)
	MESH.playbackRateMultiplier = 0
end

function Tick(deltaTime)
	if deltaTime <= 0 then return end
	
	local pos = script.parent:GetWorldPosition()
	local v = pos - lastPos
	speed = v.size / deltaTime
	
	lastPos = pos
	
	if speed < WALKING_SPEED then
		MESH.animationStance = IDLE_STANCE
		
	elseif speed < RUNNING_SPEED then
		MESH.animationStance = WALK_STANCE
		MESH.animationStancePlaybackRate = 2 * (speed - WALKING_SPEED) / (RUNNING_SPEED - WALKING_SPEED)
	else
		MESH.animationStance = RUN_STANCE
		MESH.animationStancePlaybackRate = 0.5 + (speed - RUNNING_SPEED) * 0.002
	end
end


local STATE_SLEEPING = 0
local STATE_ENGAGING = 1
local STATE_ATTACK_CAST = 2
local STATE_ATTACK_RECOVERY = 3
local STATE_PATROLLING = 4
local STATE_LOOKING_AROUND = 5
local STATE_DEAD_1 = 6
local STATE_DEAD_2 = 7
local STATE_DISABLED = 8
local STATE_STUNNED = 9


function UpdateArt(state)		
	if (state == STATE_ATTACK_CAST) then
		PlayAttack()
				
	elseif (state == STATE_DEAD_1) then
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
ROOT.customPropertyChangedEvent:Connect(OnPropertyChanged)


function OnObjectDamaged(id, prevHealth, dmgAmount, impactPosition, impactRotation, sourceObject)
	local state = GetCurrentState()
	if state == STATE_ATTACK_CAST then return end
	if state >= STATE_DEAD_1 and state <= STATE_DISABLED then return end
	if speed > 40 then return end
	
	-- Ignore other NPCs, make sure this event is about this NPC
	if id == ROOT.id then
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