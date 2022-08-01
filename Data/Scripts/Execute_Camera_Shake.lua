local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local FREQUENCY = script:GetCustomProperty('frequency')
local AMPLITUDE = script:GetCustomProperty('amplitude')
local DECAY = script:GetCustomProperty('decay')

local function CameraShake() 
    Events.Broadcast('Camera Shake', AMPLITUDE, FREQUENCY, DECAY)
end

ABILITY.executeEvent:Connect(CameraShake)
