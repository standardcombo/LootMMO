local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local FREQUENCY = script:GetCustomProperty('frequency')
local AMPLITUDE = script:GetCustomProperty('amplitude')
local DECAY = script:GetCustomProperty('decay')
local LOCAL_PLAYER = Game.GetLocalPlayer()
local function CameraShake()
    if ABILITY.owner == LOCAL_PLAYER then
        Events.Broadcast('Camera Shake', AMPLITUDE, FREQUENCY, DECAY)
    end
end

ABILITY.executeEvent:Connect(CameraShake)
