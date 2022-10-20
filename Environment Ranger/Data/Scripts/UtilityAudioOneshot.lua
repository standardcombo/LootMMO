local delay = script:GetCustomProperty("Delay")
local audio = script.parent
Task.Wait(delay)
if not audio.isAutoPlayEnabled then audio:Play() end
audio:Stop()