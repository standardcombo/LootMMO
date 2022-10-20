local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0				-- This spell doesn't care where the player target is
local COOLDOWN = 17.0
local MAX_OFFSET = 700.0
local INNER_RADIUS = 250.0
local OUTER_RADIUS = 1200.0
local DAMAGE = 55.0
local DELAY = 2.5

local targets = {}

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 1 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	function GetRandomGroundedPointInCircle(center, radius)
		for i = 1, 5 do
			local t = 2 * math.pi * math.random()
			local u = math.random() + math.random()
			local r = radius * (1.0 - math.abs(u - 1.0))
			local p = center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
			local rayStart = p + Vector3.UP * 800.0
			local rayEnd = p - Vector3.UP * 800.0 
			local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

			if hitResult then
				return hitResult:GetImpactPosition()
			end
		end
	end

	local anchorPosition = API_NPC.GetRandomCharacterInThreatTable(threatTable):GetWorldPosition()
	local target = GetRandomGroundedPointInCircle(anchorPosition, MAX_OFFSET)

	if not target then
		target = anchorPosition
	end

	API_NPC.LookAtTargetWithoutPitch(npc, target)
	targets[npc] = target

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		API_RE.BroadcastToAllPlayers("SMR", npc, targets[npc])
		local target = targets[npc]

		Task.Spawn(function()
			Task.Wait(DELAY)

			for _, player in pairs(Game.FindPlayersInSphere(target, OUTER_RADIUS, {ignoreDead = true})) do
				local distance = (player:GetWorldPosition() - target).size

				if distance > INNER_RADIUS then
					API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
				end
			end
		end)
	end
	
	targets[npc] = nil
end

API_NPC.RegisterTaskServer("swampmystic_ring", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
