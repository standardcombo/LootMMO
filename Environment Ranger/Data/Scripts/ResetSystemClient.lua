local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local TIMER_TEXT = script:GetCustomProperty("TimerText"):WaitForObject()

local resetTime = nil

function Tick(deltaTime)
	if resetTime then
		local t = time()

		if resetTime > t then
			TIMER_TEXT.text = tostring(math.ceil(resetTime - t))
		else
			API_RE.Broadcast("ResetDungeon")
			resetTime = nil
			PANEL.visibility = Visibility.FORCE_OFF
		end
	end
end

function OnNetworkedPropertyChanged(object, propertyName)
	resetTime = SERVER_SCRIPT:GetCustomProperty("ResetTime")
	PANEL.visibility = Visibility.INHERIT
end

SERVER_SCRIPT.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)
