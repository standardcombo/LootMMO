---@type Vector3
local SHAKE_AXIS_STRENGTH = script:GetCustomProperty("ShakeAxisStrength")
---@type number
local SHAKE_TIME = script:GetCustomProperty("ShakeTime")

local OBJECT_TO_SHAKE = script.parent

local attenuation_per_sec = SHAKE_AXIS_STRENGTH / SHAKE_TIME

function Tick(dt)
    
end