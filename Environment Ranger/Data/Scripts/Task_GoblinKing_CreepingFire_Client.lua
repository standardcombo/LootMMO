local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local FIRE_PATCH_TEMPLATE = script:GetCustomProperty("FirePatchTemplate")

local MAX_START_OFFSET = 1000.0
local FIRE_PATCH_RADIUS = 300.0
local FIRE_PATCH_JUMP_RANGE = 300.0
local FIRE_PATCH_DAMAGE_RATE = 35.0
local FIRE_PATCH_DURATION = 10.0
local FIRE_PATCH_JUMP_PERIOD = 3.0

function OnCreepingFire(npc, anchorPosition, seed)
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

	local firePosition = GetRandomGroundedPointInCircle(anchorPosition, MAX_START_OFFSET)

	Task.Spawn(function()
		-- No target means the npc reset
		while not API_NPC.IsDead(npc) and API_NPC.GetTarget(npc) and firePosition do
			Task.Spawn(function()
				local firePatch = World.SpawnAsset(FIRE_PATCH_TEMPLATE, {position = firePosition, scale = Vector3.New(FIRE_PATCH_RADIUS / 100.0)})
				firePosition = GetRandomGroundedPointInCircle(firePosition, FIRE_PATCH_JUMP_RANGE)
				Task.Wait(FIRE_PATCH_DURATION)
				firePatch:Destroy()
			end)

			Task.Wait(FIRE_PATCH_JUMP_PERIOD)
		end
	end)
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_RE.Connect("CF", OnCreepingFire)

API_NPC.RegisterTaskClient("goblinking_creepingfire", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
