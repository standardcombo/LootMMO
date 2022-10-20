local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_K = require(script:GetCustomProperty("APIKnockback"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local RANGE = 0.0
local COOLDOWN = 17.0
local DAMAGE = 87.0
local KNOCKBACK_MAGNITUDES = {200.0, 300.0, 500.0, 800.0}
local CAST_TIMES = {8.0, 6.0, 4.0, 3.0}

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.9 then
		return 0.0
	else
		return 3.0
	end
end

function OnTaskStart(npc, threatTable)
	return CAST_TIMES[API_DS.GetDifficultyLevel()]
end

function OnTaskEnd(npc, interrupted)
	if interrupted then
		return
	end

	local anchorPosition = npc:GetWorldPosition() + Vector3.UP * 300.0

	for _, player in pairs(Game.GetPlayers()) do
		local rayEnd = player:GetWorldPosition()
		local hitResult = World.Raycast(anchorPosition, rayEnd, {ignorePlayers = true})

		if not hitResult then
			-- Person is in line of sight
			API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
			local playerOffset = player:GetWorldPosition() - anchorPosition
			playerOffset.z = 0.0
			local knockbackMagnitude = KNOCKBACK_MAGNITUDES[API_DS.GetDifficultyLevel()]

			if playerOffset.size > 0.1 then
				API_K.ApplyImpulse(player, 90.0 * Vector3.UP + knockbackMagnitude * playerOffset:GetNormalized())
			else
				API_K.ApplyImpulse(player, 90.0 * Vector3.UP)
			end
		end
	end
end

API_NPC.RegisterTaskServer("stoneangel_radiance", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
