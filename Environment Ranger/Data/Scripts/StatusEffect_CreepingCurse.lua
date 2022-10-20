local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local BASE_DAMAGE = 45.0
local DAMAGE_MULTIPLIER = 0.9
local JUMP_RANGE = 1000.0

function EffectEnd(sourceCharacter, character, index)
	local magicStat = 0.0

	if sourceCharacter then
		magicStat = sourceCharacter.serverUserData.statSheet:GetStatTotalValue("Magic")
	end

	API_D.ApplyDamage(sourceCharacter, character, BASE_DAMAGE + DAMAGE_MULTIPLIER * magicStat)

	if math.random() < 0.7 then
		local possibleTargets = nil

		if character:IsA("Player") then
			possibleTargets = Game.FindPlayersInSphere(character:GetWorldPosition(), JUMP_RANGE, {ignoreDead = true})
		else
			possibleTargets = API_NPC.GetAwakeNPCsInSphere(character:GetWorldPosition(), JUMP_RANGE)
		end

		if #possibleTargets > 0 then
			-- Scramble list so it jumps randomly
			for i = 1, #possibleTargets - 1 do
				local j = math.random(i, #possibleTargets)
				local temp = possibleTargets[j]
				possibleTargets[j] = possibleTargets[i]
				possibleTargets[i] = temp
			end

			-- Apply to first valid target
			for _, target in pairs(possibleTargets) do
				if target ~= character then
					API_SE.ApplyStatusEffect(sourceCharacter, target, API_SE.STATUS_EFFECT_DEFINITIONS["Creeping Curse"].id)
					return
				end
			end
		end
	end
end

local data = {}

data.name = "Creeping Curse"
data.duration = 4.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.endFunction = EffectEnd

API_SE.DefineStatusEffect(data)
