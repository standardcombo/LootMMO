local EFFECT = script:GetCustomProperty("Effect")

local function SpawnEffect()
	World.SpawnAsset(EFFECT, { position = script:GetWorldPosition() })
end

script.destroyEvent:Connect(SpawnEffect)
SpawnEffect()
