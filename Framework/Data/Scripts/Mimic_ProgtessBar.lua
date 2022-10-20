
-- Custom 
local MAIN = script:GetCustomProperty("Main"):WaitForObject()
local MIMIC = script:GetCustomProperty("Mimic"):WaitForObject()

function Tick() 
    local progress = MAIN.progress
    MIMIC.progress = progress
end