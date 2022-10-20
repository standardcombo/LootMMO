local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local MUSHROOM_TEMPLATE = script:GetCustomProperty("MushroomTemplate")

local OFFSET_RADIUS = 1300.0
local MUSHROOM_COUNTS = {5, 7, 9, 13}
local MUSHROOM_RADIUS = 200.0
local ACTIVATION_DELAY = 2.0
local DURATION = 35.0

function OnFairyRing(anchorPosition, seed)
	local stream = RandomStream.New(seed)

	function GetRandomGroundedPointOnCircle(center, radius)
		for i = 1, 5 do
			local t = 2 * math.pi * stream:GetNumber()
			local p = center + radius * Vector3.New(math.cos(t), math.sin(t), 0.0)
			local rayStart = p + Vector3.UP * 500.0
			local rayEnd = p - Vector3.UP * 500.0 
			local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

			if hitResult and hitResult.other:IsA("Terrain") then
				return hitResult:GetImpactPosition()
			end
		end
	end

	local points = {}

	for i = 1, MUSHROOM_COUNTS[API_DS.GetDifficultyLevel()] do
		local p = GetRandomGroundedPointOnCircle(anchorPosition, OFFSET_RADIUS)
		
		if p then
			table.insert(points, p)
		end
	end

	Task.Spawn(function()
		local mushrooms = {}

		for _, p in pairs(points) do
			local mushroom = World.SpawnAsset(MUSHROOM_TEMPLATE, {position = p, scale = Vector3.ZERO})
			mushroom:ScaleTo(Vector3.ONE, ACTIVATION_DELAY)
			table.insert(mushrooms, mushroom)
		end

		Task.Wait(DURATION)

		for _, mushroom in pairs(mushrooms) do
			mushroom:Destroy()
		end
	end)
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("SFR", OnFairyRing)

API_NPC.RegisterTaskClient("sporax_fairyring", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
