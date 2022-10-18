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

local DROP_EVENT_ID = "LDFactory.Drop"
local PICKUP_EVENT_ID = "LDFactory.Pickup"
local CANCEL_EVENT_ID = "LDFactory.Cancel"

local dropId = 0

-- Server only
function API.Drop(eventData)
	local players = {}
	if _G.CombatAccountant then
		local target = eventData.object
		local report = _G.CombatAccountant.GetReportForTarget(target)
		
		for sourceId,v in pairs(report.preDamage) do
			local player = Game.FindPlayer(sourceId)
			if player then
				table.insert(players, player)
			end
		end
		
	elseif Object.IsValid(eventData.killer) and eventData.killer:IsA("Player") then
		table.insert(players, eventData.killer)
	else
		--?
	end
	
	-- Give resources
	if eventData.resourceType and eventData.resourceAmount then
		for _,player in ipairs(players) do
			player:AddResource(eventData.resourceType, eventData.resourceAmount)
		end
	end
	
	-- Find the correct drop table
	local lootDropId = eventData.lootId
	local metadataRow = LDF_DATA[lootDropId]
	if not metadataRow then
		error("[LDFactory] No such data for: "..tostring(lootDropId))
	end
	local dropTable = metadataRow.subTable
	
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
	
	eventData.rarity = metadataRow.rarity
	
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
	
	-- Set time limit
	local timeLimit = metadataRow.timeLimit
	if timeLimit <= 5 then
		warn("Time limit is too low for Loot Drop ".. lootDropId ..", setting it to 30 seconds.")
		timeLimit = 30
	end
	Task.Spawn(function()
		for _,player in ipairs(Game.GetPlayers()) do
			if player.serverUserData.lootDrops
			and player.serverUserData.lootDrops[dropId]
			then
				player.serverUserData.lootDrops[dropId] = nil
				Events.BroadcastToPlayer(player, CANCEL_EVENT_ID, dropId)
			end
		end
	end, 
	timeLimit)
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
	local metadataRow = LDF_DATA[lootDropId]
	local dropTable = metadataRow.subTable
	local rowId = eventData.rewardId
	
	--local rewards = dropTable[rowId].rewards
	--print(player.name .." picked up treasure: ".. lootDropId..":"..rewards)
	
	REWARDS_PARSER.Parse(player, dropTable, rowId)
end

Events.ConnectForPlayer(PICKUP_EVENT_ID, OnPickup)


