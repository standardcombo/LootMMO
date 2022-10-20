local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")

local BASE_DAMAGE = 35.0
local DAMAGE_MULTIPLIER = 0.9
local PROJECTILE_SPEED = 6400.0
local SPLASH_RADIUS = 350.0
local SPLASH_DAMAGE_MULTIPLIER = 0.4

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
	API_P.CreateProjectile(caster, target, PROJECTILE_SPEED, 0.3, PROJECTILE_TEMPLATE)
	return API_P.GetTravelTime(caster, target, PROJECTILE_SPEED)
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	Task.Wait(API_P.GetTravelTime(caster, target, PROJECTILE_SPEED))
	
	if not Object.IsValid(caster) then
		return
	end

	local magicStat = caster.serverUserData.statSheet:GetStatTotalValue("Magic")
	API_D.ApplyDamage(caster, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * magicStat)

	for _, npc in pairs(API_NPC.GetAwakeNPCsInSphere(target:GetWorldPosition(), SPLASH_RADIUS)) do
		if npc ~= target then
			API_D.ApplyDamage(caster, npc, (BASE_DAMAGE + DAMAGE_MULTIPLIER * magicStat) * SPLASH_DAMAGE_MULTIPLIER, API_D.TAG_AOE)
		end
	end
end

return data
