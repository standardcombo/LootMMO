local API_D = require(script:GetCustomProperty("APIDamage"))

local BASE_DAMAGE = 60.0
local DAMAGE_MULTIPLIER = 8.0

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = true
data.friendlyTargetValid = false
data.enemyTargetValid = true
data.requiresFacing = true
data.groundTargets = false
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

function data.onCastClient(caster, targetSet)
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	local tenacityStat = caster.serverUserData.statSheet:GetStatTotalValue("Tenacity")
	local damageAmount = BASE_DAMAGE + DAMAGE_MULTIPLIER * tenacityStat
	local leechAmount, tags = API_D.ApplyDamage(caster, target, damageAmount)
	local healingTags = API_D.TAG_CANNOT_CRIT
	
	if API_D.HasTag(tags, API_D.TAG_CRIT) then
		healingTags = healingTags | API_D.TAG_CRIT
	end

	API_D.ApplyHealing(caster, caster, leechAmount, healingTags)
end

return data
