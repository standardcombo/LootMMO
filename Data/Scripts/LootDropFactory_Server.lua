--[[
	Loot Drop Factory - Server
	v3.0 - 2022/10/20
	by: standardcombo
]]

local API = {}
_G.LootDropFactory = API
_G["standardcombo.NPCKit.LootDropFactory"] = API

API.VERSION = 2.0

local LDF_DATA = require(script:GetCustomProperty("LDFactoryData"))
local REWARDS_PARSER = require(script:GetCustomProperty("RewardsParser"))

local DROP_EVENT_ID = "LootDropFactory.Drop"
local PICKUP_EVENT_ID = "LootDropFactory.Pickup"


local dropId = 0

-- Server only
function API.Drop(eventData)
	local players = Game.GetPlayers() -- TODO
	
	-- Give resources
	if eventData.resourceType and eventData.resourceAmount then
		for _,player in ipairs(players) do
			player:AddResource(eventData.resourceType, eventData.resourceAmount)
		end
	end
	
	-- Find the correct drop table
	local lootDropId = eventData.lootId
	local rowFromDataIndex = LDF_DATA[lootDropId]
	if not rowFromDataIndex then
		error("[LDFactory] No such data for: "..tostring(lootDropId))
	end
	local dropTable = rowFromDataIndex.subTable
	
	-- Calculate the total incidence
	local totalIncidence = dropTable.totalIncidence
	if not totalIncidence then
		totalIncidence = 0
		for _,entry in pairs(dropTable) do
			totalIncidence = totalIncidence + entry.incidence
		end
	end
	
	-- Select random row in the table
	local rng = math.random(totalIncidence)
	local rewards = nil
	for _,entry in pairs(dropTable) do
		local incidence = entry.incidence
		if rng <= incidence then
			eventData.rewardId = entry.id
			rewards = entry.rewards
			break
		end
		rng = rng - incidence
	end
	
	-- There's a chance nothing dropped
	if rewards == nil or rewards == "" then
		print("Nothing dropped.")
		return
	end
	
	-- Prepare to drop treasure
	dropId = dropId + 1
	eventData.dropId = dropId
	
	eventData.rarity = rowFromDataIndex.rarity
	
	-- Clear unnecessary properties, to save networking
	eventData.npc = nil
	eventData.killer = nil
	eventData.resourceType = nil
	eventData.resourceAmount = nil
	
	-- Loot drops
	for _,player in ipairs(players) do
		Events.BroadcastToPlayer(player, DROP_EVENT_ID, eventData)
		
		if not player.serverUserData.lootDrops then
			player.serverUserData.lootDrops = {}
		end
		player.serverUserData.lootDrops[dropId] = eventData
	end
end


-- Server only
function API.RegisterEncounter(npcs, lootDropId)
	-- TODO
end


-- Called by client as a networked event
local function OnPickup(player, dropId)
	if not Object.IsValid(player) then return end
	if not player.serverUserData.lootDrops then return end
	if not player.serverUserData.lootDrops[dropId] then return end
	
	local eventData = player.serverUserData.lootDrops[dropId]
	player.serverUserData.lootDrops[dropId] = nil
	
	-- Play the pickup animation
	if player.serverUserData.pickupAbility then
		player.serverUserData.pickupAbility:Activate()
	end
	
	-- Find the correct drop table
	local lootDropId = eventData.lootId
	local rowFromDataIndex = LDF_DATA[lootDropId]
	local dropTable = rowFromDataIndex.subTable
	local rowId = eventData.rewardId
	
	--local rewards = dropTable[rowId].rewards
	--print(player.name .." picked up treasure: ".. lootDropId..":"..rewards)
	
	REWARDS_PARSER.Parse(player, dropTable, rowId)
end

Events.ConnectForPlayer(PICKUP_EVENT_ID, OnPickup)


