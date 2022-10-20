local API_D = require(script:GetCustomProperty("APIDamage"))

local BASE_HEAL = 45.0
local HEAL_MULTIPLIER = 1.2

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = true
data.friendlyTargetValid = true
data.enemyTargetValid = false
data.requiresFacing = false
data.groundTargets = false
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

function data.onCastClient(caster, targetSet)
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	local magicStat = caster.serverUserData.statSheet:GetStatTotalValue("Magic")
	API_D.ApplyHealing(caster, target, BASE_HEAL + HEAL_MULTIPLIER * magicStat)
end

return data
