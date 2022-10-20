
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()

local STATE_CLOSED = 0
local STATE_OPEN_IN = 1
local STATE_OPEN_OUT = -1

local playerCount = 0
local playersReferenced = {}

local myPos = script:GetWorldPosition()
myPos.z = 0
local myForward = script:GetWorldRotation() * Vector3.FORWARD


local function GetState()
	return NET_OBJECT:GetCustomProperty("State")
end

local function SetState(value)
	NET_OBJECT:SetCustomProperty("State", value)
	NET_OBJECT:ForceReplication()
end


local function IsOpen()
	return GetState() ~= STATE_CLOSED
end

local function IsClosed()
	return GetState() == STATE_CLOSED
end


local function OnBeginOverlap(trigger, player)
	if not player:IsA("Player") then return end
	
	local playerPos = player:GetWorldPosition()
	playerPos.z = 0
	local direction = myPos - playerPos
	local dot = direction .. myForward
	local isOutside = dot > 0
	
	if isOutside then
		-- Check if the player has access
		local hasKey = _G.QuestController.HasCompleted(player, "Raid2")
		if not hasKey then
			Events.BroadcastToPlayer(player, "CraftingRoom.LockedMessage")
			return
		end
	end
	
	playerCount = playerCount + 1
	playersReferenced[player] = true
	
	if IsClosed() then
		if isOutside then
			SetState(STATE_OPEN_IN)
		else
			SetState(STATE_OPEN_OUT)
		end
	end
	
end

local function OnEndOverlap(trigger, player)
	if not player:IsA("Player") then return end
	if not playersReferenced[player] then return end
	
	playerCount = playerCount - 1
	
	if playerCount == 0 then
		SetState(STATE_CLOSED)
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)

