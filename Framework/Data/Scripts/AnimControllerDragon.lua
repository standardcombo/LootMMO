--[[
	Animation Controller - Dragon
	v1.2
	by: standardcombo, blackdheart
	
	Controls the animations for an NPC based on the Dragon Animated Mesh.
	Changes in animation occur in response to movement and state machine changes.
--]]

Task.Wait()

local MESH = script:GetCustomProperty("AnimatedMesh"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local DISTANCE_FROM_GROUND = script:GetCustomProperty("DistanceFromGround")
local WALKING_SPEED = 15
local RUNNING_SPEED = 300

local lastPos = script.parent:GetWorldPosition()
local speed = 0

function ResetDistanceFromGround()
	MESH:SetPosition(Vector3.New(0, 0, DISTANCE_FROM_GROUND))
end
ResetDistanceFromGround()

function PlayAttack()
	MESH:PlayAnimation("unarmed_claw")
	ResetDistanceFromGround()
	MESH.playbackRateMultiplier = 1
end

function PlayDamaged()
	MESH:PlayAnimation("unarmed_react_damage")
end

function PlayDeath()
	MESH:PlayAnimation("unarmed_death")
	MESH.playbackRateMultiplier = 1.5
	Task.Wait(0.5)
	MESH:MoveTo(Vector3.New(0, 0, MESH:GetWorldScale().z * 40), 0.4, true)
	Task.Wait(0.2)
	MESH:MoveTo(Vector3.New(0, 0, MESH:GetWorldScale().z * 40), 0.1, true)
	MESH:PlayAnimation("unarmed_death_impact")
	Task.Wait(0.5)
	MESH.playbackRateMultiplier = 0
end

function Tick(deltaTime)
	if deltaTime <= 0 then return end
	
	local pos = script.parent:GetWorldPosition()
	local v = pos - lastPos
	speed = v.size / deltaTime
	
	lastPos = pos
	
	if speed < WALKING_SPEED then
		MESH.animationStance = "unarmed_idle_ready"
		
	elseif speed < RUNNING_SPEED then
		MESH.animationStance = "unarmed_walk_forward"
	else
		MESH.animationStance = "unarmed_run_forward"
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

