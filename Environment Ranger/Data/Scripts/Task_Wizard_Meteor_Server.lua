local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_K = require(script:GetCustomProperty("APIKnockback"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 1000.0
local COOLDOWN = 12.0
local METEOR_RADIUS	= 350.0
local MAX_DAMAGE = 32.0

function GetPriority(npc, taskHistory)
	return 3.0
end

function OnTaskStart(npc, threatTable)
	local targetPlayer = API_NPC.GetRandomCharacterInThreatTable(threatTable)
	API_NPC.LookAtTargetWithoutPitch(npc, targetPlayer:GetWorldPosition())
	local rayStart = targetPlayer:GetWorldPosition()

	Task.Spawn(function()
		local rayEnd = rayStart - Vector3.UP * 300.0
		local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
		local targetPosition = rayEnd

		if hitResult then
			targetPosition = hitResult:GetImpactPosition()
		end

		API_RE.BroadcastToAllPlayers("WM", targetPosition)
		Task.Wait(2.5)

		for _, player in pairs(Game.FindPlayersInSphere(targetPosition + Vector3.UP * 100.0, METEOR_RADIUS, {ignoreDead = true})) do
			local playerOffset = player:GetWorldPosition() - targetPosition + Vector3.UP * 100.0
			playerOffset.z = 0.0
			local t = CoreMath.Clamp(playerOffset.size / METEOR_RADIUS)
			local damageAmount = CoreMath.Lerp(MAX_DAMAGE, 0.0, t)

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

API_NPC.RegisterTaskServer("wizard_meteor", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
