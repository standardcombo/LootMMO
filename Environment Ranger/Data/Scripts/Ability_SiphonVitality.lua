local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")

local BASE_DAMAGE = 45.0
local DAMAGE_MULTIPLIER = 0.9
local PROJECTILE_SPEED = 4000.0

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = true
data.friendlyTargetValid = false
data.enemyTargetValid = true
data.requiresFacing = true
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
	local target = targetSet[1]
	API_P.CreateProjectile(target, caster, PROJECTILE_SPEED, 0.5, PROJECTILE_TEMPLATE)
	return API_P.GetTravelTime(target, caster, PROJECTILE_SPEED)
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	local magicStat = caster.serverUserData.statSheet:GetStatTotalValue("Magic")
	local siphonAmount, tags = API_D.ApplyDamage(caster, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * magicStat)
	Task.Wait(API_P.GetTravelTime(target, caster, PROJECTILE_SPEED))
	local healingTags = API_D.TAG_CANNOT_CRIT
	
	if not Object.IsValid(caster) then
		return
	end

	if API_D.HasTag(tags, API_D.TAG_CRIT) then
		healingTags = healingTags | API_D.TAG_CRIT
	end

	API_D.ApplyHealing(caster, caster, siphonAmount, healingTags)
end

return data
