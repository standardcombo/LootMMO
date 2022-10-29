--[[
	-----------
	CraftingRoomDoorServer.lua
	V1.0.1 - 2022-10-29
	By: standardcombo
	Modified by: Luapi
	-----------
]]
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
		local hasKey = _G.QuestController.HasCompleted(player, "Lv5")
		if not hasKey and IsClosed() then
			Events.BroadcastToPlayer(player, "CraftingRoom.LockedMessage")
			return
		end
		
		Events.Broadcast("Quest.CraftingRoomEnter", player)
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

function ShouldDoorClose(player)
	if not playersReferenced[player] then return end
	
	playerCount = playerCount - 1
	playersReferenced[player] = nil

	if playerCount == 0 then
		SetState(STATE_CLOSED)
	end
end

local function OnEndOverlap(trigger, player)
	if not player:IsA("Player") then return end
	ShouldDoorClose(player)
end

function OnPlayerLeft(player)
	ShouldDoorClose(player)
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
Game.playerLeftEvent:Connect(OnPlayerLeft)
