local VOICE = script:GetCustomProperty("Voice"):WaitForObject()

local random = math.random(1000)

if random <= 1 then 
    VOICE:Play()
end  