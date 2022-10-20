local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 1000.0
local COOLDOWN = 22.0
local MAX_OFFSET_RADIUS = 1100.0
local VOLCANO_RADIUS = 150.0
local FIREBALL_RADIUS = 150.0
local FIREBALL_RANGE = 900.0
local FIREBALL_DAMAGE = 55.0
local FIREBALL_SPEED = 400.0
local VOLCANO_DAMAGE_RATE = 50.0
local DURATION = 6.0
local INITIAL_FIREBALL_DELAY = 1.0
local N_FIREBALLS = 25

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 3 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local stream = RandomStream.New()
		local targetPosition = API_NPC.GetTarget(npc):GetWorldPosition()
		API_RE.BroadcastToAllPlayers("GV", targetPosition, stream:GetInitialSeed())

		function GetRandomPointInCircle(center, radius)
			local t = 2 * math.pi * stream:GetNumber()
			local u = stream:GetNumber() + stream:GetNumber()
			local r = radius * (1.0 - math.abs(u - 1.0))
			return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
		end

		local rayStart = GetRandomPointInCircle(targetPosition, MAX_OFFSET_RADIUS)
		local rayEnd = rayStart - Vector3.UP * 300.0
		local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
		local volcanoPosition = rayEnd

		if hitResult then
			volcanoPosition = hitResult:GetImpactPosition()
		end

		Task.Spawn(function()
			for i = 1, DURATION do
				Task.Wait(1.0)

				for _, player in pairs(Game.FindPlayersInSphere(volcanoPosition, VOLCANO_RADIUS, {ignoreDead = true})) do
					API_D.ApplyDamage(npc, player, VOLCANO_DAMAGE_RATE, API_D.TAG_PERIODIC | API_D.TAG_AOE)
				end

				for _, otherNpc in pairs(API_NPC.GetAwakeNPCsInSphere(volcanoPosition, VOLCANO_RADIUS)) do
					API_D.ApplyDamage(npc, otherNpc, VOLCANO_DAMAGE_RATE, API_D.TAG_PERIODIC | API_D.TAG_AOE)
				end
			end
		end)

		for i = 1, N_FIREBALLS do
			local fireballTarget = GetRandomPointInCircle(volcanoPosition, FIREBALL_RANGE)
			hitResult = World.Raycast(fireballTarget + Vector3.UP * 300.0, volcanoPosition - Vector3.UP * 300.0, {ignorePlayers = true})

			if hitResult then
				fireballTarget = hitResult:GetImpactPosition()
			end

			local travelTime = API_P.GetTravelTime(volcanoPosition, fireballTarget, FIREBALL_SPEED)
			local incrementalDelay = (DURATION - INITIAL_FIREBALL_DELAY) / N_FIREBALLS

			Task.Spawn(function()
				Task.Wait(INITIAL_FIREBALL_DELAY + travelTime + (i - 1) * incrementalDelay)

				for _, player in pairs(Game.FindPlayersInSphere(fireballTarget, FIREBALL_RADIUS, {ignoreDead = true})) do
					API_D.ApplyDamage(npc, player, FIREBALL_DAMAGE, API_D.TAG_AOE)
				end

				for _, otherNpc in pairs(API_NPC.GetAwakeNPCsInSphere(fireballTarget, FIREBALL_RADIUS)) do
					API_D.ApplyDamage(npc, otherNpc, FIREBALL_DAMAGE, API_D.TAG_AOE)
				end
			end)
		end
	end
end

API_NPC.RegisterTaskServer("goblin_wizard_volcano", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
