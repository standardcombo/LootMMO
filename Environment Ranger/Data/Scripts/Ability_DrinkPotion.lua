local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

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

function data.onCastClient(caster, targetSet)
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local potionType = math.random(4)

	if potionType == 1 then			-- Straight heal
		local tenacityStat = caster.serverUserData.statSheet:GetStatTotalValue("Tenacity")
		API_D.ApplyHealing(caster, caster, 60.0 + 6.0 * tenacityStat)
	elseif potionType == 2 then		-- Hot
		API_SE.ApplyStatusEffect(caster, caster, API_SE.STATUS_EFFECT_DEFINITIONS["Restorative Potion"].id)
	elseif potionType == 3 then		-- Mitigation
		API_SE.ApplyStatusEffect(caster, caster, API_SE.STATUS_EFFECT_DEFINITIONS["Toughness Potion"].id)
	elseif potionType == 4 then		-- Invincibility
		API_SE.ApplyStatusEffect(caster, caster, API_SE.STATUS_EFFECT_DEFINITIONS["Invincibility Potion"].id)
	end
end

return data
