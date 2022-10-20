local API_D = require(script:GetCustomProperty("APIDamage"))

local RADIUS = 700.0
local BASE_HEAL_RATE = 10.0
local HEAL_RATE_MULTIPLIER = 0.3
local N_TICKS = 5

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = true
data.requiresFacing = false
data.groundTargets = true
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
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	Task.Spawn(function()
		for i = 1, N_TICKS do
			Task.Wait(1.0)

			if not Object.IsValid(caster) then
				return
			end

			local magicStat = caster.serverUserData.statSheet:GetStatTotalValue("Magic")

			for _, player in pairs(Game.GetPlayers()) do
				local distance = (player:GetWorldPosition() - target).size

				if distance < RADIUS and not player.isDead then
					API_D.ApplyHealing(caster, player, BASE_HEAL_RATE + HEAL_RATE_MULTIPLIER * magicStat, API_D.TAG_PERIODIC | API_D.TAG_AOE)
				end
			end
		end
	end)
end

return data
