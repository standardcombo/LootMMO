local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_PP = require(script:GetCustomProperty("APIPlayerPassives"))

local EFFECT_RANGE = 350.0
local BASE_DAMAGE = 40.0
local DAMAGE_MULTIPLIER = 1.1

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = false
data.canMove = true
data.icon = script:GetCustomProperty("Icon")
data.range = script:GetCustomProperty("Range")
data.cooldown = script:GetCustomProperty("Cooldown")
data.castDuration = script:GetCustomProperty("CastDuration")
data.animationKey = script:GetCustomProperty("AnimationKey")
data.description = script:GetCustomProperty("Description")
data.selfCasterEffectTemplate = script:GetCustomProperty("SelfCasterEffectTemplate")
data.otherCasterEffectTemplate = script:GetCustomProperty("OtherCasterEffectTemplate")
data.selfTargetEffectTemplate = script:GetCustomProperty("SelfTargetEffectTemplate")
data.otherTargetEffectTemplate = script:GetCustomProperty("OtherTargetEffectTemplate")

function data.getTargetSet(caster, target)
	return API_NPC.GetAwakeNPCsInSphere(caster:GetWorldPosition(), EFFECT_RANGE)
end

function data.onCastClient(caster, targetSet)
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local attackStat = caster.serverUserData.statSheet:GetStatTotalValue("Attack")

	for _, target in pairs(targetSet) do
		if not API_NPC.IsDead(target) and not API_NPC.IsAsleep(target) then
			if API_PP.DoesPlayerHavePassive(caster, "Empowered Whirl") then
				API_SE.ApplyStatusEffect(caster, target, API_SE.STATUS_EFFECT_DEFINITIONS["Empowered Cripple"].id)
			else
				API_SE.ApplyStatusEffect(caster, target, API_SE.STATUS_EFFECT_DEFINITIONS["Cripple"].id)
			end
			API_D.ApplyDamage(caster, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * attackStat, API_D.TAG_AOE)
		end
	end
end

return data
