local STATUS_EFFECT = require(script:GetCustomProperty("StatusEffect"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

Task.Wait()
for key, Effect in pairs(STATUS_EFFECT) do
	local data = {}
	data.name = key
	data.duration = Effect.defaultDuration
	data.icon = Effect.icon
	data.color = Effect.colour
	data.effectTemplate = Effect.effectTemplate
	data.type = API_SE[Effect.type]
	if Effect.tickFunction then
		data.tickFunction = require(Effect.tickFunction)
	end
	data.multiplier = Effect.defaultMultiply
	API_SE.DefineStatusEffect(data)
end
