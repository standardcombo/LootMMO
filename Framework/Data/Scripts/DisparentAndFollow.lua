local DESTROY_DELAY = script:GetCustomProperty("destroyDelay")
local parent = script.parent
script.parent = nil


function Tick()
	if Object.IsValid(parent) then
		script:SetWorldPosition(parent:GetWorldPosition())
	end
end

parent.destroyEvent:Connect(function()
	Task.Wait(DESTROY_DELAY)
	script:Destroy()
end)
