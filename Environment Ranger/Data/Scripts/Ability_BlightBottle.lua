local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")

local RADIUS = 500.0
local BASE_DAMAGE_RATE = 10.0
local DAMAGE_RATE_MULTIPLIER = 1.0
local TICK_COUNT = 3
local PROJECTILE_SPEED = 3200.0

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = true
data.requiresFacing = false
data.groundTargets = true
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
data.reticleTemplate = script:GetCustomProperty("ReticleTemplate")

function data.onCastClient(caster, targetSet)
	local target = targetSet[1]
	API_P.CreateProjectile(caster, target, PROJECTILE_SPEED, 1.0, PROJECTILE_TEMPLATE)
	return API_P.GetTravelTime(caster, target, PROJECTILE_SPEED)
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	Task.Wait(API_P.GetTravelTime(caster, target, PROJECTILE_SPEED))
	
	for i = 1, TICK_COUNT do
		if not Object.IsValid(caster) then
			return
		end
		
		local magicStat = caster.serverUserData.statSheet:GetStatTotalValue("Magic")
		API_D.ApplyAreaDamage(caster, target, RADIUS, BASE_DAMAGE_RATE + DAMAGE_RATE_MULTIPLIER * magicStat, false, API_D.TAG_AOE | API_D.TAG_PERIODIC)
		Task.Wait(1.0)
	end
end

return data
