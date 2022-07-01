local text = script.parent
local speed = 20

function Tick(dt)
    text.y = text.y - dt * speed
end 