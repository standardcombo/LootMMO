local FX_Template = script:GetCustomProperty("FX_Template")
local ParentObject = script:GetCustomProperty("ParentObject"):WaitForObject()

local DestroyedEventListener

function OnObjectDestroyed(thisObject)
	World.SpawnAsset(FX_Template, {position = thisObject:GetWorldPosition()})
	DestroyedEventListener:Disconnect()
end

DestroyedEventListener = ParentObject.destroyEvent:Connect( OnObjectDestroyed )