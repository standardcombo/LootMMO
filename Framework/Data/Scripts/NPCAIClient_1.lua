--[[
	NPCAI - Client
	v1.0.0
	by: standardcombo
	Modified by: Luapi
	
	The client counterpart for NPCAIServer. Detaches and smooths the
	visual parts of the NPC from the logical ones.
--]]

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local GEO_ROOT = script:GetCustomProperty("GeoRoot"):WaitForObject()
local FORWARD_NODE = script:GetCustomProperty("ForwardNode"):WaitForObject()

local MOVE_SPEED = ROOT:GetCustomProperty("MoveSpeed") or 400
local TURN_SPEED = ROOT:GetCustomProperty("TurnSpeed") or 2
local PATROL_SPEED = ROOT:GetCustomProperty("PatrolSpeed") or (MOVE_SPEED / 3)

function OnDestroyed(obj)
	GEO_ROOT:StopMove()
	GEO_ROOT:StopRotate()
	GEO_ROOT:Destroy()
end

ROOT.destroyEvent:Connect(OnDestroyed)
ROOT.clientUserData.GEO_ROOT = GEO_ROOT
GEO_ROOT.parent = nil
GEO_ROOT:LookAtContinuous(FORWARD_NODE, true, TURN_SPEED)


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

function GetCurrentState()
	return ROOT:GetCustomProperty("CurrentState")
end

local currentState = GetCurrentState()


if currentState == STATE_PATROLLING then
	GEO_ROOT:Follow(script, PATROL_SPEED)
else
	GEO_ROOT:Follow(script, MOVE_SPEED)
end


function OnPropertyChanged(object, propertyName)
	
	if (propertyName == "CurrentState") then
		local newState = GetCurrentState()

		if not script then return end
		if newState == STATE_PATROLLING and currentState ~= STATE_PATROLLING then
			GEO_ROOT:Follow(script, PATROL_SPEED)
			
		elseif newState ~= STATE_PATROLLING and currentState == STATE_PATROLLING then
			GEO_ROOT:Follow(script, MOVE_SPEED)
		end
		
		currentState = newState
	end
end
ROOT.customPropertyChangedEvent:Connect(OnPropertyChanged)

