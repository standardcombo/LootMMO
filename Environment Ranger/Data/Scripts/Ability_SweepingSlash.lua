local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local BASE_DAMAGE = 24.0
local DAMAGE_MULTIPLIER = 0.8
local SWING_RANGE = 400.0

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
	local targetSet = {}
	local casterPosition = caster:GetWorldPosition()

	for _, npc in pairs(API_NPC.GetAwakeNPCsInSphere(casterPosition, SWING_RANGE)) do
		local dot = (npc:GetWorldPosition() - casterPosition):GetNormalized() .. (caster:GetWorldRotation() * Vector3.FORWARD)

		if dot > 0.0 then
			table.insert(targetSet, npc)
		end
	end

	return targetSet
end

function data.onCastClient(caster, targetSet)
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local attackStat = caster.serverUserData.statSheet:GetStatTotalValue("Attack")

	for _, target in pairs(targetSet) do
		if not API_NPC.IsDead(target) and not API_NPC.IsAsleep(target) then
			API_D.ApplyDamage(caster, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * attackStat, API_D.TAG_AOE)
		end
	end
end

return data
