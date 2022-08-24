
--[[
	
]]

local API = {}
_G.ObjectivePickup = API


local VFX_ROOT = script
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local OUTLINE = script:GetCustomProperty("Outline"):WaitForObject()

local TRIGGER_DEFAULT_SCALE = TRIGGER:GetScale()
local PLAYER = Game.GetLocalPlayer()

VFX_ROOT.visibility = Visibility.FORCE_OFF


local mapOfPickups = {}
local showingPickups = {}
local nearestPickup = nil


function API.Add(pickupScript)
	local questId = pickupScript:GetCustomProperty("QuestID")
	--print("Adding pickup script for quest "..questId)
	if not mapOfPickups[questId] then
		mapOfPickups[questId] = {}
	end
	table.insert(mapOfPickups[questId], pickupScript)
end


function Tick()
	-- Only do this logic 1/second, to conserve CPU
	Task.Wait(1)
	
	if #showingPickups == 0 then
		-- Disable pickup elements
		VFX_ROOT.visibility = Visibility.FORCE_OFF
		TRIGGER.isInteractable = false
		return
	end
	-- Enable pickup elements
	VFX_ROOT.visibility = Visibility.INHERIT
	TRIGGER.isInteractable = true
	
	local playerPos = PLAYER:GetWorldPosition()
	
	-- Find the nearest pickup
	nearestPickup = nil
	local nearestPos
	local nearestDistance
	for _,pickup in ipairs(showingPickups) do
		local pickupPos = pickup:GetWorldPosition()
		local dist = (playerPos - pickupPos).sizeSquared
		if nearestPickup == nil or dist < nearestDistance then
			nearestPickup = pickup
			nearestPos = pickupPos
			nearestDistance = dist
		end
	end
	
	-- Enable pickup on the one closest to the player
	VFX_ROOT:SetWorldPosition(nearestPos)
	TRIGGER.interactionLabel = nearestPickup:GetCustomProperty("InteractionLabel")
	TRIGGER:SetScale(TRIGGER_DEFAULT_SCALE * nearestPickup:GetCustomProperty("TriggerScale"))
	local objectToOutline = nearestPickup:GetCustomProperty("GeoToHide"):WaitForObject()
	OUTLINE:SetSmartProperty("Object To Outline", objectToOutline)
end


function HideAllPickups()
	for _,p in ipairs(showingPickups) do
		p.context.Hide()
	end
	showingPickups = {}
end

function HidePickup(pickup)
	pickup.context.Hide()
	
	for i,p in ipairs(showingPickups) do
		if p == pickup then
			table.remove(showingPickups, i)
			break
		end
	end
	
	if pickup == nearestPickup then
		VFX_ROOT.visibility = Visibility.FORCE_OFF
		TRIGGER.isInteractable = false
	end
end

function ShowPickup(pickup)
	pickup.context.Show()
	table.insert(showingPickups, pickup)
end


function OnObjectiveSelected(obj)
	HideAllPickups()
	
	-- Show any pickups related to the newly selected objective
	local questPickups = mapOfPickups[obj.questId]
	if questPickups then
		for i,pickup in ipairs(questPickups) do
			local pickupObjIndex = pickup:GetCustomProperty("ObjectiveIndex")
			if pickupObjIndex == obj.index then
				ShowPickup(pickup)
			end
		end
	end
end

Events.Connect("Quest_ObjectiveSelected", OnObjectiveSelected)


function OnInteracted(trigger, player)
	--print("ObjectivePickupManagerClient::OnInteracted")
	
	HidePickup(nearestPickup)
	
	local questId = nearestPickup:GetCustomProperty("QuestID")
	local index = nearestPickup:GetCustomProperty("ObjectiveIndex")
	Events.BroadcastToServer("ObjectivePickup", questId, index)
end

if Environment.IsClient() then
	TRIGGER.interactedEvent:Connect(OnInteracted)
end


