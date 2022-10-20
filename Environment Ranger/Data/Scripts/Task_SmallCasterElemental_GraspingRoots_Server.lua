local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0				-- This spell doesn't care where the player target is
local COOLDOWN = 13.0
local RADIUS = 300.0

local targets = {}

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 1 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local targetPlayer = API_NPC.GetRandomCharacterInThreatTable(threatTable)
	API_NPC.LookAtTargetWithoutPitch(npc, targetPlayer:GetWorldPosition())

	local rayStart = targetPlayer:GetWorldPosition()
	local rayEnd = rayStart - Vector3.UP * 300.0
	local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
	targets[npc] = rayEnd

	if hitResult then
		targets[npc] = hitResult:GetImpactPosition()
	end

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted  then
		local target = targets[npc]
		API_RE.BroadcastToAllPlayers("GR", target)

		Task.Spawn(function()
			Task.Wait(2.0)

			for _, player in pairs(Game.FindPlayersInSphere(target, RADIUS, {ignoreDead = true})) do
				API_SE.ApplyStatusEffect(npc, player, API_SE.STATUS_EFFECT_DEFINITIONS["Rooted"].id)
			end
		end)
	end

	targets[npc] = nil
end

API_NPC.RegisterTaskServer("small_caster_elemental_grasping_roots", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
