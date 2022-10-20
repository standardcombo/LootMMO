local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")

local BASE_DAMAGE = 25.0
local DAMAGE_MULTIPLIER = 0.7
local PROJECTILE_SPEED = 2400.0
local HEAL_RANGE = 600.0
local WAVE_SPEED = 2400.0
local BASE_HEAL = 7.0
local HEAL_MULTIPLIER = 0.2

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
	API_P.CreateProjectile(caster, target, PROJECTILE_SPEED, 0.2, PROJECTILE_TEMPLATE)
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

	local impactTime = time()
	local playersToHeal = Game.GetPlayers()

	Task.Spawn(function()
		while #playersToHeal do
			local waveRadius = (time() - impactTime) * WAVE_SPEED
			local healedPlayerIndices = {}

			for i, player in pairs(playersToHeal) do
				local distance = (target:GetWorldPosition() - player:GetWorldPosition()).size

				if distance < waveRadius and not player.isDead then
					API_D.ApplyHealing(caster, player, BASE_HEAL + HEAL_MULTIPLIER * magicStat, API_D.TAG_AOE)
					table.insert(healedPlayerIndices, i)
				end
			end

			for i = #healedPlayerIndices, 1, -1 do
				table.remove(playersToHeal, healedPlayerIndices[i])
			end

			if waveRadius > HEAL_RANGE then
				return
			end

			Task.Wait()
		end
	end)
end

return data
