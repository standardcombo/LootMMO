
local TEMPLATE = script:GetCustomProperty("SpawnOnDestroy")

script.destroyEvent:Connect(function(obj)
	World.SpawnAsset(TEMPLATE, {position = script:GetWorldPosition()})
end)