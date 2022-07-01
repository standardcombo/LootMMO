
local UI_ELEMENT = script:GetCustomProperty("UIElement"):WaitForObject()
local FREQUENCY = script:GetCustomProperty("Frequency")
local AMPLITUDE = script:GetCustomProperty("Amplitude")
local PHASE_SHIFT = script:GetCustomProperty("PhaseShift")

function Tick()
	local t = time() + PHASE_SHIFT * math.pi
	UI_ELEMENT.y = math.sin(t * FREQUENCY) * AMPLITUDE
end