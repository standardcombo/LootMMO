local L = require(script:GetCustomProperty("APILocale"))
local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnMovemenetChanged(player, curr, prev)
    if player ~= LOCAL_PLAYER then return end
    if curr == MovementMode.FLYING and prev ~= MovementMode.FLYING then
        Events.Broadcast("SubBannerMessage", L["Fly Mode On"])
    elseif curr ~= MovementMode.FLYING and prev == MovementMode.FLYING then
        Events.Broadcast("SubBannerMessage", L["Fly Mode Off"])
    end
end

LOCAL_PLAYER.movementModeChangedEvent:Connect(OnMovemenetChanged)