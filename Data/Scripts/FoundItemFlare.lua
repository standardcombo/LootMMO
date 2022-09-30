
local ROOT = script.parent
local FLARE_VFX = script:GetCustomProperty("FlareVFX"):WaitForObject()

local SCALE_DURATION = 0.25

FLARE_VFX:SetScale(Vector3.ZERO)
FLARE_VFX:ScaleTo(Vector3.ONE, SCALE_DURATION)

Task.Wait()

Task.Spawn(function()
	FLARE_VFX:ScaleTo(Vector3.ZERO, SCALE_DURATION)
end,
ROOT.lifeSpan - SCALE_DURATION)

