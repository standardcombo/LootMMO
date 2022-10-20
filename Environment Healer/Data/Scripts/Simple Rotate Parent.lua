local SPEED = script:GetCustomProperty("Speed")
local IS_LOCAL = script:GetCustomProperty("IsLocal")

script.parent:RotateContinuous(SPEED, IS_LOCAL)
