local Loop_SFX = script:GetCustomProperty("Loop_SFX"):WaitForObject()
local InnerSphere = script:GetCustomProperty("InnerSphere"):WaitForObject()

function Tick(dTime)
	local scale = InnerSphere:GetWorldScale().x
	Loop_SFX.pitch = scale * 20
end
