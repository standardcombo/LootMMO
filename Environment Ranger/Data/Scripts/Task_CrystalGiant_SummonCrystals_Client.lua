local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local CRYSTAL_TEMPLATE = script:GetCustomProperty("CrystalTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local OFFSET_RADIUS = 3500.0
local CRYSTAL_COUNTS = {10, 20, 40, 80}
local MIN_DETONATION_DELAY = 2.0
local MAX_DETONATION_DELAY = 8.0
local DETONATION_RADIUS = 300.0
local TELEGRAPH_DURATION = 1.5

function OnSummonCrystals(anchorPosition, seed)
	local stream = RandomStream.New(seed)

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
		for i = 1, CRYSTAL_COUNTS[API_DS.GetDifficultyLevel()] do
			local target = GetRandomGroundedPointInCircle(anchorPosition, OFFSET_RADIUS)

			if target then
				local delay = stream:GetNumber(MIN_DETONATION_DELAY, MAX_DETONATION_DELAY)
				
				Task.Spawn(function()
					local rotation = Rotation.New(0.0, 0.0, math.random() * 360.0)
					local crystal = World.SpawnAsset(CRYSTAL_TEMPLATE, {position = target - Vector3.UP * 400.0, rotation = rotation})
					crystal:MoveTo(target, 0.2 + math.random() * 1.3)
					Task.Wait(delay - TELEGRAPH_DURATION)
					local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target, scale = Vector3.New(DETONATION_RADIUS / 100.0)})
					Task.Wait(TELEGRAPH_DURATION)
					crystal:Destroy()
					telegraph:Destroy()
				end)
			end
		end
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

API_RE.Connect("SC", OnSummonCrystals)

API_NPC.RegisterTaskClient("crystalgiant_summon_crystals", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
