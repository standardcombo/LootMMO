local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local BOLT_BASE_DAMAGE = 8.0
local BOLT_DAMAGE_MULTIPLIER = 0.3
local RADIUS = 500.0

function EffectTick(sourceCharacter, character, index)
	assert(character:IsA("Player"))

	local enemies = API_NPC.GetAwakeNPCsInSphere(character:GetWorldPosition(), RADIUS)

	if #enemies > 0 then
		local target = enemies[math.random(#enemies)]
		local magicStat = 0.0

		if sourceCharacter then
			magicStat = sourceCharacter.serverUserData.statSheet:GetStatTotalValue("Magic")
		end

		API_D.ApplyDamage(sourceCharacter, target, BOLT_BASE_DAMAGE + BOLT_DAMAGE_MULTIPLIER * magicStat, API_D.TAG_PERIODIC)
	end
end

local data = {}

data.name = "Spiritual Conduit"
data.duration = 8.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.tickFunction = EffectTick

API_SE.DefineStatusEffect(data)
