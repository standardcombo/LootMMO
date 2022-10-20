local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 220.0
local COOLDOWN = 11.0
local SMASH_RANGE = 2000.0
local DAMAGE = 110.0

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	return 3.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), SMASH_RANGE, {ignoreDead = true})) do
			local offset = player:GetWorldPosition() - npc:GetWorldPosition()
			offset.z = 0.0
			local dot = offset:GetNormalized() .. (npc:GetWorldRotation() * Vector3.FORWARD)

			if dot > 0.707 then		-- 90 degree frontal cone
				API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
			end
		end
	end
end

API_NPC.RegisterTaskServer("large_melee_elemental_smash", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
