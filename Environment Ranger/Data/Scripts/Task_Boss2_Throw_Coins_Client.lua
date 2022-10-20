local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local N_POOLS = 150
local POOL_RADIUS = 500.0
local MAX_DISTANCE = 3500.0
local INITIAL_DELAY = 2.0
local INCREMENTAL_DELAY = 0.1
local TELEGRAPH_DURATION = 2.0

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_throw")
	animatedMesh.playbackRateMultiplier = 0.7
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

function OnThrowCoins(center, seed)
	function GetRandomPointInCircle(center, radius, stream)
		local t = 2 * math.pi * stream:GetNumber()
		local u = stream:GetNumber() + stream:GetNumber()
		local r = radius * (1.0 - math.abs(u - 1.0))
		return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
	end

	local stream = RandomStream.New(seed)

	for i = 1, N_POOLS do
		Task.Spawn(function()
			local target = GetRandomPointInCircle(center, MAX_DISTANCE, stream)
			hitResult = World.Raycast(target + Vector3.UP * 500.0, target - Vector3.UP * 500.0, {ignorePlayers = true})

			if hitResult then
				target = hitResult:GetImpactPosition()
			end

			local impactDelay = INITIAL_DELAY + (i - 1) * INCREMENTAL_DELAY
			local projectileSpeed = (target - center).size / impactDelay
			-- Gravity scale has to be tiny since the times are so large
			API_P.CreateProjectile(center, target, projectileSpeed, 1.0, PROJECTILE_TEMPLATE)
			Task.Wait(impactDelay - TELEGRAPH_DURATION)
			local telegraphObject = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target, scale = Vector3.New(POOL_RADIUS / 100.0)})
			Task.Wait(TELEGRAPH_DURATION)
		end)
	end
end

API_RE.Connect("TC", OnThrowCoins)

API_NPC.RegisterTaskClient("boss2_throw_coins", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
