local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 27.0

local N_POOLS = 150
local POOL_RADIUS = 500.0
local MAX_DISTANCE = 3500.0
local DAMAGE = 30.0
local INITIAL_DELAY = 2.0
local INCREMENTAL_DELAY = 0.1

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.95 then
		return 0.0
	else
		return 2.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	function GetRandomPointInCircle(center, radius, stream)
		local t = 2 * math.pi * stream:GetNumber()
		local u = stream:GetNumber() + stream:GetNumber()
		local r = radius * (1.0 - math.abs(u - 1.0))
		return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
	end

	if not interrupted then
		local npcPosition = npc:GetWorldPosition()
		local stream = RandomStream.New()
		API_RE.BroadcastToAllPlayers("TC", npcPosition, stream:GetInitialSeed())

		for i = 1, N_POOLS do
			Task.Spawn(function()
				local target = GetRandomPointInCircle(npcPosition, MAX_DISTANCE, stream)
				hitResult = World.Raycast(target + Vector3.UP * 500.0, target - Vector3.UP * 500.0, {ignorePlayers = true})

				if hitResult then
					target = hitResult:GetImpactPosition()
				end

				Task.Wait(INITIAL_DELAY + (i - 1) * INCREMENTAL_DELAY)
				API_D.ApplyAreaDamage(npc, target, POOL_RADIUS, DAMAGE, false, API_D.TAG_AOE)
			end)
		end
	end
end

API_NPC.RegisterTaskServer("boss2_throw_coins", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
