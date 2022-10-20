local OBJECT = script:GetCustomProperty('Object'):WaitForObject()
local SPEED = script:GetCustomProperty('Speed')

function Tick(dt)
    OBJECT.rotationAngle = OBJECT.rotationAngle + dt * SPEED
end
