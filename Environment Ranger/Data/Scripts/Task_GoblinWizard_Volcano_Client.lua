local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local VOLCANO_TEMPLATE = script:GetCustomProperty("VolcanoTemplate")
local FIREBALL_PROJECTILE_TEMPLATE = script:GetCustomProperty("FireballProjectileTemplate")
local FIREBALL_TELEGRAPH_TEMPLATE = script:GetCustomProperty("FireballTelegraphTemplate")

local MAX_OFFSET_RADIUS = 1100.0
local VOLCANO_RADIUS = 150.0
local FIREBALL_RADIUS = 150.0
local FIREBALL_RANGE = 900.0
local FIREBALL_SPEED = 400.0
local DURATION = 6.0
local INITIAL_FIREBALL_DELAY = 1.0
local N_FIREBALLS = 25
local TELEGRAPH_DURATION = 1.0

function OnVolcano(targetPosition, seed)
	local stream = RandomStream.New(seed)

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
		local volcano = World.SpawnAsset(VOLCANO_TEMPLATE, {position = volcanoPosition, scale = Vector3.New(VOLCANO_RADIUS / 100.0)})
		Task.Wait(DURATION)
		volcano:Destroy()
	end)

	local telegraphScale = Vector3.New(FIREBALL_RADIUS / 100.0)

	for i = 1, N_FIREBALLS do
		local fireballTarget = GetRandomPointInCircle(volcanoPosition, FIREBALL_RANGE)
		hitResult = World.Raycast(fireballTarget + Vector3.UP * 300.0, volcanoPosition - Vector3.UP * 300.0, {ignorePlayers = true})

		if hitResult then
			fireballTarget = hitResult:GetImpactPosition()
		end

		local travelTime = API_P.GetTravelTime(volcanoPosition, fireballTarget, FIREBALL_SPEED)
		local incrementalDelay = (DURATION - INITIAL_FIREBALL_DELAY) / N_FIREBALLS
		
		Task.Spawn(function()
			Task.Wait(INITIAL_FIREBALL_DELAY + travelTime + (i - 1) * incrementalDelay - TELEGRAPH_DURATION)
			local telegraph = World.SpawnAsset(FIREBALL_TELEGRAPH_TEMPLATE, {position = fireballTarget, scale = telegraphScale})
			Task.Wait(TELEGRAPH_DURATION)
			telegraph:Destroy()
		end)
		
		Task.Spawn(function()
			Task.Wait(INITIAL_FIREBALL_DELAY + (i - 1) * incrementalDelay)
			API_P.CreateProjectile(volcanoPosition, fireballTarget, FIREBALL_SPEED, 0.5, FIREBALL_PROJECTILE_TEMPLATE)
		end)
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_RE.Connect("GV", OnVolcano)

API_NPC.RegisterTaskClient("goblin_wizard_volcano", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
