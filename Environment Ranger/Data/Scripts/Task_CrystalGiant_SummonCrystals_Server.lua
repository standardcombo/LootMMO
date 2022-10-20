local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 20.0
local OFFSET_RADIUS = 3500.0
local CRYSTAL_COUNTS = {10, 20, 40, 80}
local MIN_DETONATION_DELAY = 2.0
local MAX_DETONATION_DELAY = 8.0
local DETONATION_RADIUS = 300.0
local DAMAGE = 60.0

function GetPriority(npc, taskHistory)
	return 2.0
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	local stream = RandomStream.New()
	local anchorPosition = npc:GetWorldPosition()

	function GetRandomGroundedPointInCircle(center, radius)
		for i = 1, 5 do
			local t = 2 * math.pi * stream:GetNumber()
			local u = stream:GetNumber() + stream:GetNumber()
			local r = radius * (1.0 - math.abs(u - 1.0))
			local p = center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
			local rayStart = p + Vector3.UP * 300.0
			local rayEnd = p - Vector3.UP * 300.0 
			local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

			if hitResult then
				return hitResult:GetImpactPosition()
			end
		end
	end

	if not interrupted then
		API_RE.BroadcastToAllPlayers("SC", anchorPosition, stream:GetInitialSeed())
		
		for i = 1, CRYSTAL_COUNTS[API_DS.GetDifficultyLevel()] do
			local target = GetRandomGroundedPointInCircle(anchorPosition, OFFSET_RADIUS)

			if target then
				local delay = stream:GetNumber(MIN_DETONATION_DELAY, MAX_DETONATION_DELAY)

				Task.Spawn(function()
					Task.Wait(delay)
					API_D.ApplyAreaDamage(npc, target, DETONATION_RADIUS, DAMAGE, false, API_D.TAG_AOE)
				end)
			end
		end
	end
end

API_NPC.RegisterTaskServer("crystalgiant_summon_crystals", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
