--[[
	Loot Drop Factory - Server
	v3.0 - 2022/10/20
	by: standardcombo
]]

local API = {}
_G.LootDropFactory = API
_G["standardcombo.NPCKit.LootDropFactory"] = API

API.VERSION = 2.0

local DROP_EVENT_ID = "LootDropFactory.Drop"
local PICKUP_EVENT_ID = "LootDropFactory.Pickup"


local dropId = 0

-- Server only
function API.Drop(eventData)
	dropId = dropId + 1
	eventData.dropId = dropId
	
	eventData.rarity = "Legendary" -- TODO
	
	local players = Game.GetPlayers() -- TODO
	
	-- Resources
	for _,player in ipairs(players) do
		
	end
	
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
function API.RegisterEncounter(npcs)
	-- TODO
end


-- Called by client as a networked event
local function OnPickup(player, dropId)
	if not Object.IsValid(player) then return end
	if not player.serverUserData.lootDrops then return end
	if not player.serverUserData.lootDrops[dropId] then return end
	
	local eventData = player.serverUserData.lootDrops[dropId]
	player.serverUserData.lootDrops[dropId] = nil
	
	-- TODO
	print(player.name .." picked up treasure")
end

Events.ConnectForPlayer(PICKUP_EVENT_ID, OnPickup)


