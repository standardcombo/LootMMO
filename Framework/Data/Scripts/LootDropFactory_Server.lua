--[[
	Loot Drop Factory - Server
	v3.1 - 2022/10/20
	by: standardcombo, Luapi
	
	Setup
	=====
	Add a copy of the "LootDropFactory_v3.0" template to the hierarchy.
	
	
	Usage
	=====
	Use in conjunction with the NPC AI Kit, or call Drop()
	E.g.
		local eventData {
			... (see below)
		}
		_G.LootDropFactory.Drop(eventData)
	
	
	Edit Drop Tables
	================
	Loot Drop Factory is setup by interconnected data tables. Look for
	the index table "LDFactory - Metadata" which connects all the drop tables.
	
	1. Search Project Content for "LDFactory - Common".
	2. Right-click, choose "duplicate" and rename the table.
	3. Open "LDFactory - Metadata". Press [+] to add a new row.
	4. In the new row, assign your new table to the "subTable" column.
	5. Give the row an "id", "rarity" and any other properties, such as "timeLimit".
		-> This "id" in the Metadata table is the "LootID", set on NPCs or passed to Drop().
		-> "rarity" only affects the visuals for the treasure-- it has no effect on RNG.
	6. Edit your new table to setup the logic and randomness.
		-> Each row represents a possible outcome for the drop.
	7. "id" can be any value and does not represent rewards directly.
	8. "incidence" represents the probability of this row being chosen.
		-> Think of this as raffle ticket amounts. The more tickets, the higher the chance.
	9. "rewards" contains instructions about rewards. Which ones and how to give them.
		-> This is complicated, but very powerful.
		-> See instructions in "RewardsParser.lua" for more info about the syntax.
	
	
	API
	===
	- Drop(table eventData)
		Called to drop a treasure.
	- RegisterEncounter(table NPCs, string lootDropId)
		Sets up an encounter of many NPCs that drop a single treasure.
	
	
	Event Data - schema
	==========
	{
		lootId = string row in the LDFactory metadata table
		object = (optional) Damageable Object
		killer = (optional) Damageable/Player
		position = Where to spawn the drop
		rotation = (optional) Angle for spawning the drop
		resourceType = (optional) Basic XP/coin reward, using Resources system
		resourceAmount = (optional) Basic XP/coin reward, using Resources system
	}
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

local auto_encounterId = 0
local auto_dropId = 0

local activeEncounters = {}
local encounterDropIds = {}


-- Server only
function API.Drop(eventData)
	-- Figure out the players who will see the drop
	local players = {}
	local target = eventData.object
	local encounterId
	if target and _G.CombatAccountant then
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
		-- Nobody gets the reward?
		return
	end
	
	-- Include allied party members. Everyone gets rewards!
	local work_hashSet = {}
	local parties = {}
	for _,player in ipairs(players) do
		-- Keep track of existing players, so we don't add duplicates
		work_hashSet[player.id] = true
		
		if player.isInParty then
			local partyInfo = player:GetPartyInfo()
			parties[partyInfo] = true
		end
	end
	for partyInfo,v in pairs(parties) do
		for _,playerId in ipairs(partyInfo:GetMemberIds()) do
			-- Avoid adding duplicates
			if not work_hashSet[playerId] then
				local player = Game.FindPlayer(playerId)
				if player then
					table.insert(players, player)
					work_hashSet[playerId] = true
				end
			end
		end
	end
	work_hashSet = nil
	
	-- Give resources
	if eventData.resourceType and eventData.resourceAmount then
		--print("LDFactory Giving Resources: "..eventData.resourceType.."="..eventData.resourceAmount)
		for _,player in ipairs(players) do
			player:AddResource(eventData.resourceType, eventData.resourceAmount)
		end
	end
	
	-- Check if this NPC is part of a larger encounter
	if target then
		encounterId = target.serverUserData.LDFactoryEncounterId
		local encounterNpcs = activeEncounters[encounterId]

		if not activeEncounters[encounterId].players then
			activeEncounters[encounterId].players = {}
		end
		for _, player in ipairs(players) do
			if player then
				activeEncounters[encounterId].players[player] = player
			end
		end

		if encounterNpcs then
			-- Remove this NPC from the encounter
			for i,npc in ipairs(encounterNpcs) do
				if npc == target then
					table.remove(encounterNpcs, i)
				end
			end
			
			if #encounterNpcs > 0 then
				-- There's still enemies in the encounter. Wait
				return
				
			else
				-- Encounter is complete. Change the drop to that of the encounter
				local _encounterDropId = encounterDropIds[encounterId]
				if _encounterDropId and _encounterDropId ~= "" then
					eventData.lootId = _encounterDropId
				end
			end
		end
	end
	
	-- Find the correct drop table
	local lootDropId = eventData.lootId
	local metadataRow = LDF_DATA[lootDropId]
	if not metadataRow then
		error("[LDFactory] No such data for: "..tostring(lootDropId))
	end
	local dropTable = metadataRow.subTable
	if not dropTable then
		error("[LDFactory] No drop table for: "..tostring(lootDropId))
	end
	
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
		--print("Nothing dropped.")
		return
	end
	
	-- Prepare to drop treasure
	auto_dropId = auto_dropId + 1
	eventData.dropId = auto_dropId
	
	eventData.rarity = metadataRow.rarity
	
	-- Clear unnecessary properties, to save networking
	eventData.object = nil
	eventData.killer = nil
	eventData.resourceType = nil
	eventData.resourceAmount = nil
	-- Loot drops
	for _,player in pairs(activeEncounters[encounterId].players) do
		Events.BroadcastToPlayer(player, DROP_EVENT_ID, eventData)
		--print(player.name .. " should receive loot drop")
		if not player.serverUserData.lootDrops then
			player.serverUserData.lootDrops = {}
		end
		player.serverUserData.lootDrops[auto_dropId] = eventData
	end
	
	-- Set time limit, after which the drop is cancelled
	local timeLimit = metadataRow.timeLimit
	if timeLimit <= 5 then
		warn("Time limit is too low for Loot Drop ".. lootDropId ..", setting it to 30 seconds.")
		timeLimit = 30
	end
	local tempId = auto_dropId
	Task.Spawn(function()
		for _,player in ipairs(Game.GetPlayers()) do
			if player.serverUserData.lootDrops
			and player.serverUserData.lootDrops[tempId]
			then
				player.serverUserData.lootDrops[tempId] = nil
				Events.BroadcastToPlayer(player, CANCEL_EVENT_ID, tempId)
			end
		end
	end, 
	timeLimit)
end


-- Server only
function API.RegisterEncounter(encounterNpcs, lootDropId)
	auto_encounterId = auto_encounterId + 1
	
	activeEncounters[auto_encounterId] = encounterNpcs
	encounterDropIds[auto_encounterId] = lootDropId
	
	for _,npc in ipairs(encounterNpcs) do
		npc.serverUserData.LDFactoryEncounterId = auto_encounterId
		
		npc.destroyEvent:Connect(OnNpcDestroyed)
	end
end
-- Cleanup destroyed NPCs
function OnNpcDestroyed(npc)
	local encounterId = npc.serverUserData.LDFactoryEncounterId
	local encounterNpcs = activeEncounters[encounterId]
	for i,obj in ipairs(encounterNpcs) do
		if npc == obj then
			table.remove(encounterNpcs, i)
			break
		end
	end
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


