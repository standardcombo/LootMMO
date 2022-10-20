local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")

local BASE_DAMAGE = 35.0
local DAMAGE_MULTIPLIER = 1.0
local PROJECTILE_SPEED = 4000.0

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
	local target = targetSet[1]
	API_P.CreateProjectile(caster, target, PROJECTILE_SPEED, 0.3, PROJECTILE_TEMPLATE)
	return 0.0		-- We want the effects to play immediately because that is when the stun happens
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	API_SE.ApplyStatusEffect(caster, target, API_SE.STATUS_EFFECT_DEFINITIONS["Righteous Hammer"].id)
	Task.Wait(API_P.GetTravelTime(caster, target, PROJECTILE_SPEED))

	if not Object.IsValid(caster) then
		return
	end

	local magicStat = caster.serverUserData.statSheet:GetStatTotalValue("Magic")
	API_D.ApplyDamage(caster, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * magicStat)
end

return data
