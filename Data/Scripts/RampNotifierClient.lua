local triggers = World.FindObjectsByName("Ramp Trigger")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnBeginOverlap(trigger, player)
    if player == LOCAL_PLAYER and time() - player.clientUserData.lastRampTime > 5 and not player.isMounted then
        player.clientUserData.lastRampTime = time()
        --Events.Broadcast("SubBannerMessage", "USE MOUNT TO SKATE", 5)
    end
end

LOCAL_PLAYER.clientUserData.lastRampTime = time()
for index, value in ipairs(triggers) do
    value.beginOverlapEvent:Connect(OnBeginOverlap)
end