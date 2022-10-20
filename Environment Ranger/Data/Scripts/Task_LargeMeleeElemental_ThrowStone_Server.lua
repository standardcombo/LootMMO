local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0				-- This spell doesn't care where the player target is
local COOLDOWN = 13.0
local RADIUS = 300.0
local DAMAGE = 120.0
local IMPACT_DELAY = 2.0

local targets = {}

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 1 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetRandomCharacterInThreatTable(threatTable):GetWorldPosition()
	local rayStart = target
	local rayEnd = rayStart - Vector3.UP * 300.0
	local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
	target = rayEnd

	if hitResult then
		target = hitResult:GetImpactPosition()
	end

	API_NPC.LookAtTargetWithoutPitch(npc, target)
	targets[npc] = target


	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		API_RE.BroadcastToAllPlayers("LMETS", npc, targets[npc])
		local target = targets[npc]
		
		Task.Spawn(function()
			Task.Wait(IMPACT_DELAY)

			for _, player in pairs(Game.FindPlayersInSphere(target, RADIUS, {ignoreDead = true})) do
				API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
			end
		end)
	end
	
	targets[npc] = nil
end

API_NPC.RegisterTaskServer("large_melee_elemental_throw_stone", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
