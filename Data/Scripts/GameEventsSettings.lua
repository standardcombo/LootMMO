local propDefaultColor = script:GetCustomProperty("DefaultColor")
local propActiveColor = script:GetCustomProperty("ActiveColor")
local propFutureColor = script:GetCustomProperty("FutureColor")
local propCancelledColor = script:GetCustomProperty("CancelledColor")

return {
    DEFAULT_COLOR = propDefaultColor,
    ACTIVE_COLOR = propActiveColor,
    FUTURE_COLOR = propFutureColor,
    CANCELLED_COLOR = propCancelledColor,
}