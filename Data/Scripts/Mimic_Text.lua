-- Custom 
local MAIN_TEXT = script:GetCustomProperty("MainText"):WaitForObject()
local MIMIC_TEXT = script:GetCustomProperty("mimicText"):WaitForObject()

function Tick()
    if Object.IsValid(MAIN_TEXT) and Object.IsValid(MIMIC_TEXT) then 
        MIMIC_TEXT.text = MAIN_TEXT.text
    end 
end 