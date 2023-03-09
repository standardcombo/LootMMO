--[[
	Cinematic Trigger Player - Client
	v1.1
	by: standardcombo
--]]

local ROOT = script.parent.parent
local EVENT_NAME = ROOT:GetCustomProperty("BroadcastEvent")
local WALK_TARGET = ROOT:GetCustomProperty("WalkTo"):GetObject()
local WALK_SPEED = ROOT:GetCustomProperty("WalkSpeed")
local MAX_WALK_DURATION = ROOT:GetCustomProperty("MaxWalkDuration")

local moveHookListener = nil
local startMoveTime = 0


function OnEvent()
	if WALK_TARGET then
		local player = Game.GetLocalPlayer()
		moveHookListener = player.movementHook:Connect(OnPlayerMovement)
		startMoveTime = time()
	end
end

Events.Connect(EVENT_NAME, OnEvent)


function OnPlayerMovement(player, params)
	if time() - startMoveTime >= MAX_WALK_DURATION then
		moveHookListener:Disconnect()
		return
	end
	
	local pos = player:GetWorldPosition()
	local target = WALK_TARGET:GetWorldPosition()
	
	pos.z = target.z
	
	local v = target - pos
	local distance = v.size
	
	if distance < 10 then
		moveHookListener:Disconnect()
		return
	end
	
	local direction = v:GetNormalized()
	params.direction = direction * WALK_SPEED
end

