local SPEED = script:GetCustomProperty('Speed')
local UIPANEL = script:GetCustomProperty('UIPanel'):WaitForObject()

function Tick(dt)
    if UIPANEL.visibility ~= Visibility.FORCE_ON then
        UIPANEL.rotationAngle = UIPANEL.rotationAngle + SPEED * dt
    end
end
