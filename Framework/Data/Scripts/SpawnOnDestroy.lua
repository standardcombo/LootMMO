
local TEMPLATE = script:GetCustomProperty("SpawnOnDestroy")
local SCALE = script:GetCustomProperty("Scale")

script.destroyEvent:Connect(function(obj)
	World.SpawnAsset(TEMPLATE, {
		position = script:GetWorldPosition(),
		scale = Vector3.ONE * SCALE
	})
end)