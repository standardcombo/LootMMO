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
local QUEST_COMPLETED = script:GetCustomProperty("QuestCompletedId")
local QUEST_ACTIVE_ID = script:GetCustomProperty("QuestActiveId")
local ACTIVE_OBJECTIVE_INDEX = script:GetCustomProperty("ActiveObjectiveIndex")
local ON_ENTER_BROADCAST_EVENT = script:GetCustomProperty("OnEnterBroadcastId")
local LOCKED_MESSAGE = script:GetCustomProperty("LockedMessage")
local LOCKED_EVENT_ID = "LockedDoorMessage"

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
		local hasKey = _G.QuestController.HasCompleted(player, QUEST_COMPLETED)
		if not hasKey and QUEST_ACTIVE_ID ~= "" then
			local obj = _G.QuestController.GetQuestObjective(QUEST_ACTIVE_ID, ACTIVE_OBJECTIVE_INDEX)
			if _G.QuestController.IsActive(player, obj) then
				hasKey = true
			end
		end
		if not hasKey and IsClosed() then
			if LOCKED_MESSAGE and LOCKED_MESSAGE ~= "" then
				Events.BroadcastToPlayer(player, LOCKED_EVENT_ID, LOCKED_MESSAGE)
			end
			return
		end
		
		Events.Broadcast(ON_ENTER_BROADCAST_EVENT, player)
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
