local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")
local FISSURE_TEMPLATE = script:GetCustomProperty("FissureTemplate")

local OFFSET_RADIUS = 2900.0
local FISSURE_COUNTS = {4, 7, 11, 19}
local DAMAGE_DELAY = 1.5

-- This assumes the ground is fairly flat
function MoveAlongGroundTo(object, target, duration)
	local startTime = os.clock()
	local startPosition = object:GetWorldPosition()
	local t = 0.0
	
	Task.Spawn(function()
		while t < 1.0 do
			t = CoreMath.Clamp((os.clock() - startTime) / duration)
			local p = startPosition + (target - startPosition) * t
			local rayStart = p + Vector3.UP * 300.0
			local rayEnd = p - Vector3.UP * 300.0 
			local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

			if hitResult and hitResult.other:IsA("Terrain") then
				p = hitResult:GetImpactPosition()
			end

			object:SetWorldPosition(p)
			Task.Wait()
		end
	end)
end

function OnFissures(anchorPosition, seed)
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
	
	for i = 1, FISSURE_COUNTS[API_DS.GetDifficultyLevel()] do
		local p = GetRandomGroundedPointOnCircle(anchorPosition, OFFSET_RADIUS)

		if p then
			table.insert(points, p)
		end
	end

	for i = 1, #points - 1 do
		local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = points[i]})
		telegraph:LookAt(points[i + 1])
		MoveAlongGroundTo(telegraph, points[i + 1], 0.2)
	end

	Task.Wait(DAMAGE_DELAY)

	for i = 1, #points - 1 do
		local fissure = World.SpawnAsset(FISSURE_TEMPLATE, {position = points[i]})
		MoveAlongGroundTo(fissure, points[i + 1], 0.2)
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("SF", OnFissures)

API_NPC.RegisterTaskClient("sporax_fissures", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
