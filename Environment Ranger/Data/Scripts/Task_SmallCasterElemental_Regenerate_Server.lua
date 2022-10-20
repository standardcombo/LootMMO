local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0				-- This spell doesn't care where the player target is
local EFFECTIVE_RANGE = 2500.0	-- The ground circle can be this far away
local COOLDOWN = 12.0
local TICK_HEAL_NPC = 100.0
local TICK_HEAL_PLAYER = 50.0
local RADIUS = 500.0

local currentTasks = {}

function FindTarget(npc)
	local target = nil
	local lowestHealthFraction = 1.0

	for _, otherNpc in pairs(API_NPC.GetAwakeNPCsInSphere(npc:GetWorldPosition(), EFFECTIVE_RANGE)) do
		local healthFraction = API_NPC.GetHealthFraction(otherNpc)

		if healthFraction < lowestHealthFraction then
			target = otherNpc:GetWorldPosition()
			lowestHealthFraction = healthFraction
		end
	end

	return target
end

function GetPriority(npc, taskHistory)
	if FindTarget(npc) then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local target = FindTarget(npc)

	-- This case might not be possible. Did our only valid target become invalid between GetPriority() and now?
	-- If so, just delay a short time and go on to the next task.
	if not target then
		return 0.1
	end

	currentTasks[npc] = Task.Spawn(function()
		API_RE.BroadcastToAllPlayers("RS", npc, target)	-- Regenerate started
		Task.Wait(1.0)

		for i = 1, 4 do
			Task.Wait(1.0)

			for _, player in pairs(Game.FindPlayersInSphere(target, RADIUS, {ignoreDead = true})) do
				API_D.ApplyHealing(npc, player, TICK_HEAL_PLAYER, API_D.TAG_PERIODIC | API_D.TAG_AOE)
			end

			for _, otherNpc in pairs(API_NPC.GetAwakeNPCsInSphere(target, RADIUS)) do
				API_D.ApplyHealing(npc, otherNpc, TICK_HEAL_NPC, API_D.TAG_PERIODIC | API_D.TAG_AOE)
			end
		end
	end)

	return 5.0
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
		API_RE.BroadcastToAllPlayers("RI", npc)	-- Regenerate interupted
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("small_caster_elemental_regenerate", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
