local Audio = script.parent
local Period = script:GetCustomProperty("Period")

local nextPlay = 0

function Tick()
    if time() > nextPlay then
        Audio:Play()
        nextPlay = time() + Period
    end
end