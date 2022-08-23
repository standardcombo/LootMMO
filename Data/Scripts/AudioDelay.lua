local AUDIO = script.parent
local DURATION = script:GetCustomProperty("DURATION")

Task.Wait(DURATION)
AUDIO:Play()