local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 11.0

local N_BOLTS = 88
local POOL_RADIUS = 350.0
local MAX_DISTANCE = 3500.0
local DAMAGE = 47.0
local INITIAL_DELAY = 2.0
local INCREMENTAL_DELAY = 0.2

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 2 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	local anchorPosition = npc:GetWorldPosition()
	local stream = RandomStream.New()

	function GetRandomGroundedPointInCircle(center, radius)
		for i = 1, 5 do
			local t = 2 * math.pi * stream:GetNumber()
			local u = stream:GetNumber() + stream:GetNumber()
			local r = radius * (1.0 - math.abs(u - 1.0))
			local p = center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
			local rayStart = p + Vector3.UP * 500.0
			local rayEnd = p - Vector3.UP * 500.0 
			local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

			if hitResult then
				return hitResult:GetImpactPosition()
			end
		end
	end

	if not interrupted then
		API_RE.BroadcastToAllPlayers("SAS", anchorPosition, stream:GetInitialSeed())

		for i = 1, N_BOLTS do
			local target = GetRandomGroundedPointInCircle(anchorPosition, MAX_DISTANCE, stream)

			if target then
				Task.Spawn(function()
					Task.Wait(INITIAL_DELAY + (i - 1) * INCREMENTAL_DELAY)
					API_D.ApplyAreaDamage(npc, target, POOL_RADIUS, DAMAGE, false, API_D.TAG_AOE)
				end)
			end
		end
	end
end

API_NPC.RegisterTaskServer("stoneangel_storm", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
