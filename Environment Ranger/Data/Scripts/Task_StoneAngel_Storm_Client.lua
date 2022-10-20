local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PYLONS_GROUP = script:GetCustomProperty("PylonsGroup"):WaitForObject()

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local N_BOLTS = 88
local POOL_RADIUS = 350.0
local MAX_DISTANCE = 3500.0
local INITIAL_DELAY = 2.0
local INCREMENTAL_DELAY = 0.2
local TELEGRAPH_DURATION = 2.0

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_throw")
	animatedMesh.playbackRateMultiplier = 0.7
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

function OnStorm(anchorPosition, seed)
	local stream = RandomStream.New(seed)
	local pylons = PYLONS_GROUP:GetChildren()

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

	for i = 1, N_BOLTS do
		local target = GetRandomGroundedPointInCircle(anchorPosition, MAX_DISTANCE, stream)

		if target then
			local impactDelay = INITIAL_DELAY + (i - 1) * INCREMENTAL_DELAY
			local origin = anchorPosition + Vector3.UP * 100.0

			if #pylons > 0 then
				origin = pylons[math.random(#pylons)]:GetWorldPosition() + Vector3.UP * 100.0
			end

			local offset = target - origin
			offset.z = 0.0
			local projectileSpeed = offset.size / impactDelay

			Task.Spawn(function()
				API_P.CreateProjectile(origin, target, projectileSpeed, 1.0, PROJECTILE_TEMPLATE)
				Task.Wait(impactDelay - TELEGRAPH_DURATION)
				local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target, scale = Vector3.New(POOL_RADIUS / 100.0)})
				Task.Wait(TELEGRAPH_DURATION)
				telegraph:Destroy()
			end)
		end
	end
end

API_RE.Connect("SAS", OnStorm)

API_NPC.RegisterTaskClient("stoneangel_storm", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
