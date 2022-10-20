
if script:FindAncestorByType("Equipment") then return end

local BOUNCE_SFX = script:GetCustomProperty("BounceSound"):GetObject()

local lastPos = nil
local lastVel = nil


function RandomRotation()
	if math.random() < 0.5 then
		script.parent:RotateContinuous(Rotation.New(0,100,0), 5 + math.random() * 6)
	else
		script.parent:RotateContinuous(Rotation.New(0,-100,0), 5 + math.random() * 6)
	end
end
RandomRotation()


function Tick()
	local pos = script.parent:GetWorldPosition()
	if lastPos == nil then
		lastPos = pos
		return
	end
	local vel = pos - lastPos
	
	if lastVel ~= nil and vel..lastVel < -0.1 then
		-- Bounce detected
		RandomRotation()
		if BOUNCE_SFX then
			BOUNCE_SFX:Play()
		end
	end
	
	lastVel = vel
	lastPos = pos
end
