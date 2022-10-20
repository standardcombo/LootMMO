local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_K = require(script:GetCustomProperty("APIKnockback"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0				-- This spell doesn't care where the player target is
local COOLDOWN = 13.0
local MAX_OFFSET_RADIUS = 600.0
local RADIUS = 2000.0

local targets = {}

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 3 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	function GetRandomPointInCircle(center, radius)
		local t = 2 * math.pi * math.random()
		local u = math.random() + math.random()
		local r = radius * (1.0 - math.abs(u - 1.0))
		return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
	end

	local targetPlayer = API_NPC.GetRandomCharacterInThreatTable(threatTable)
	API_NPC.LookAtTargetWithoutPitch(npc, targetPlayer:GetWorldPosition())

	local rayStart = GetRandomPointInCircle(targetPlayer:GetWorldPosition(), MAX_OFFSET_RADIUS)
	local rayEnd = rayStart - Vector3.UP * 300.0
	local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
	targets[npc] = rayEnd

	if hitResult then
		targets[npc] = hitResult:GetImpactPosition()
	end

	API_RE.BroadcastToAllPlayers("V", targets[npc])
	return 1.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		API_K.AreaKnockTowards(targets[npc], RADIUS, 120.0)
	end

	targets[npc] = nil
end

API_NPC.RegisterTaskServer("small_caster_elemental_vortex", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
