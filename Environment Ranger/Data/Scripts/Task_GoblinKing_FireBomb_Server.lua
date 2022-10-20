local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_K = require(script:GetCustomProperty("APIKnockback"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN_TABLE = {23.0, 17.0, 13.0, 6.0}
local THROW_RANGE = 3000.0
local TELEGRAPH_RADIUS = 1000.0
local FIREBOMB_RADIUS = 2000.0
local MAX_DAMAGE = 200.0

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.98 then
		return 0.0
	else
		return 3.0
	end
end

function OnTaskStart(npc, threatTable)
	function GetRandomPointInCircle(center, radius)
		local t = 2 * math.pi * math.random()
		local u = math.random() + math.random()
		local r = radius * (1.0 - math.abs(u - 1.0))
		return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
	end

	local target = GetRandomPointInCircle(npc:GetWorldPosition(), THROW_RANGE)
	API_NPC.LookAtTargetWithoutPitch(npc, target)

	Task.Spawn(function()
		local rayStart = target + Vector3.UP * 500.0
		local rayEnd = target - Vector3.UP * 500.0
		local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
		local targetPosition = rayEnd

		if hitResult then
			targetPosition = hitResult:GetImpactPosition()
		end

		API_RE.BroadcastToAllPlayers("FB", npc, targetPosition)
		Task.Wait(5.0)

		for _, player in pairs(Game.FindPlayersInSphere(targetPosition + Vector3.UP * 100.0, FIREBOMB_RADIUS, {ignoreDead = true})) do
			local playerOffset = player:GetWorldPosition() - targetPosition
			playerOffset.z = 0.0
			local t = CoreMath.Clamp(1.0 - playerOffset.size / FIREBOMB_RADIUS) ^ 2.0
			local damageAmount = CoreMath.Lerp(0.0, MAX_DAMAGE, t)

			if damageAmount >= 1.0 then	-- If we are doing less than 1 damage, don't bother with either part
				API_D.ApplyDamage(npc, player, damageAmount, API_D.TAG_AOE)

				if playerOffset.size > 0.1 then
					API_K.ApplyImpulse(player, 200.0 * (playerOffset:GetNormalized() + Vector3.UP * 0.5))
				else
					API_K.ApplyImpulse(player, 75.0 * Vector3.UP)
				end
			end
		end
	end)

	return 1.5
end

function OnTaskEnd(npc, interrupted)
end

local cooldown = COOLDOWN_TABLE[API_DS.GetDifficultyLevel()]
API_NPC.RegisterTaskServer("goblinking_firebomb", RANGE, cooldown, GetPriority, OnTaskStart, OnTaskEnd)
