local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local SUMMON_TEMPLATE = script:GetCustomProperty("SummonTemplate")

local RANGE = 0.0
local SUMMON_RANGE = 1500.0
local COOLDOWN = 12.0

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.98 then
		return 0.0
	else
		return 2.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.0
end

function OnTaskEnd(npc, interrupted)
	function GetRandomPointInCircle(center, radius)
		local t = 2 * math.pi * math.random()
		local u = math.random() + math.random()
		local r = radius * (1.0 - math.abs(u - 1.0))
		return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
	end

	function TrySpawnWard()
		local target = GetRandomPointInCircle(npc:GetWorldPosition(), SUMMON_RANGE)
		local rayStart = target + Vector3.UP * 200.0
		local rayEnd = target - Vector3.UP * 200.0
		local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
		local targetPosition = rayEnd

		if hitResult then
			targetPosition = hitResult:GetImpactPosition()
			local ward = API_NPC.SpawnNPC(SUMMON_TEMPLATE, npc, targetPosition, Rotation.New(0.0, 0.0, math.random() * 360.0))
			
			if API_DS.GetDifficultyLevel() > 2 then
				ward:RotateContinuous(Vector3.UP)
			end

			return true
		end
	end

	if not interrupted then
		for i = 1, 5 do
			if TrySpawnWard() then
				break
			end
		end
	end
end

API_NPC.RegisterTaskServer("goblinking_fireward", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
