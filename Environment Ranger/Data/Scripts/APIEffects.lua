local API = {}

local EFFECT_FADE_OUT_TIME = 0.6
local EFFECT_DESTROY_DELAY = 3.0

-- nil FadeOutEffect(CoreObject, <float>)
-- Fades out this effect object as best as it can, using the provided or default fade out time
function API.FadeOutEffect(effectObject, fadeOutTime)
	Task.Spawn(function()
		if not Object.IsValid(effectObject) then
			return
		end

		-- For a few effects that have custom scripts
		effectObject.clientUserData.isFading = true
		
		for _, object in pairs(effectObject:FindDescendantsByType("Audio")) do
			object:FadeOut(EFFECT_FADE_OUT_TIME)
		end

		for _, object in pairs(effectObject:FindDescendantsByType("SmartAudio")) do
			object:FadeOut(EFFECT_FADE_OUT_TIME)
		end

		local toDestroy = {}

		local staticMeshes = effectObject:FindDescendantsByType("StaticMesh")

		for _, object in pairs(effectObject:FindDescendantsByType("Vfx")) do
			object:ScaleTo(Vector3.ZERO, EFFECT_FADE_OUT_TIME)
			object.parent = World.GetRootObject()
			table.insert(toDestroy, object)
		end

		for _, object in pairs(staticMeshes) do
			object:ScaleTo(Vector3.ZERO, EFFECT_FADE_OUT_TIME)
			object.parent = World.GetRootObject()
			table.insert(toDestroy, object)
		end

		Task.Wait(EFFECT_DESTROY_DELAY)

		if Object.IsValid(effectObject) then
			effectObject:Destroy()
		end

		for _, object in pairs(toDestroy) do
			if Object.IsValid(object) then
				object:Destroy()
			end
		end
	end)
end

return API
