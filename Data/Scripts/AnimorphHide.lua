local ROOT = script:GetCustomProperty("Root"):WaitForObject()
Task.Wait()
local parent = ROOT.clientUserData.parent
if parent:IsA("Player") then
	parent:SetVisibility(false)
elseif parent.clientUserData.GEO_ROOT then
	parent.clientUserData.GEO_ROOT.visibility = Visibility.FORCE_OFF

end

script.destroyEvent:Connect(function()
	if parent:IsA("Player") then
		parent:SetVisibility(true)
	elseif parent.clientUserData.GEO_ROOT then
		parent.clientUserData.GEO_ROOT.visibility = Visibility.INHERIT
	end

end)

function Tick()
	ROOT:RotateTo(parent.clientUserData.GEO_ROOT:GetWorldRotation(), .1)
end
