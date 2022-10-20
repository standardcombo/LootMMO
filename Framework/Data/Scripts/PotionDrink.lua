local BOTTLE_FILL = script:GetCustomProperty("BottleFill"):WaitForObject()
local BOTTLE_EMPTY = script:GetCustomProperty("BottleEmpty"):WaitForObject()

Task.Wait(1.4)

BOTTLE_FILL.visibility = Visibility.FORCE_OFF
BOTTLE_EMPTY.visibility = Visibility.INHERIT
