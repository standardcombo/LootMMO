local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 300.0
local COOLDOWN = 11.0
local SPORE_RANGE = 2000.0
local DAMAGE = 44.0

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
		for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), SPORE_RANGE, {ignoreDead = true})) do
			local offset = player:GetWorldPosition() - npc:GetWorldPosition()
			offset.z = 0.0
			local dot = offset:GetNormalized() .. (npc:GetWorldRotation() * Vector3.FORWARD)

			if dot > 0.866 then		-- 60 degree frontal cone
				API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
				API_SE.ApplyStatusEffect(npc, player, API_SE.STATUS_EFFECT_DEFINITIONS["Spores"].id)
			end
		end
	end
end

API_NPC.RegisterTaskServer("sporax_sporeblast", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
