local EaseUI = require(script:GetCustomProperty("EaseUI"))
local Arrow = script.parent



while true do
	EaseUI.EaseY(Arrow, -50, 1, EaseUI.EasingEquation.QUADRATIC, EaseUI.EasingDirection.OUT)
	Task.Wait(1)
	EaseUI.EaseY(Arrow, -30, 1, EaseUI.EasingEquation.QUADRATIC, EaseUI.EasingDirection.IN)
	Task.Wait(1)
end
