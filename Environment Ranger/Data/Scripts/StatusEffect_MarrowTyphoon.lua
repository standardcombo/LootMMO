local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local DAMAGE = 23.0
local RADIUS = 400.0

function EffectTick(sourceCharacter, character, index)
	assert(not character:IsA("Player"))

	for _, player in pairs(Game.FindPlayersInSphere(character:GetWorldPosition(), RADIUS, {ignoreDead = true})) do
		API_D.ApplyDamage(character, player, DAMAGE, API_D.TAG_PERIODIC | API_D.TAG_AOE)
	end
end

local data = {}

data.name = "Marrow Typhoon"
data.duration = 5.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.tickFunction = EffectTick
data.moveSpeedMultiplier = 0.4

API_SE.DefineStatusEffect(data)
