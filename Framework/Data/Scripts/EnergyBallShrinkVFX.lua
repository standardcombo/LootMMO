
local SCALE_ROOT = script:GetCustomProperty("ScaleRoot"):WaitForObject()
local POINT_LIGHT = script:GetCustomProperty("PointLight"):WaitForObject()
local SHRINK_DURATION = script:GetCustomProperty("ShrinkDuration")
local LIGHT_LERP_SPEED = script:GetCustomProperty("LightFadeSpeed")

SCALE_ROOT:ScaleTo(Vector3.ZERO, SHRINK_DURATION)

function Tick(deltaTime)
	local t = deltaTime * LIGHT_LERP_SPEED
	POINT_LIGHT.intensity = CoreMath.Lerp(POINT_LIGHT.intensity, 0, t)
end

Task.Spawn(function()
	script:FindTemplateRoot():Destroy()
end, SHRINK_DURATION)