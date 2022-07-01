local camera = script:GetCustomProperty("Camera"):WaitForObject() ---@type Camera

local initialOffset = camera:GetPositionOffset()
 
function Tick()
	local screenSize = UI.GetScreenSize()
	camera:SetPositionOffset(initialOffset * ((screenSize.x/16) / (screenSize.y/9)))
end 
