local PROGRESSBAR = script.parent
assert(PROGRESSBAR:IsA("UIProgressBar"), "parent needs to be a progress bar")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local IS_INSTANT = script:GetCustomProperty("isInstant")

function Tick(dt)
    if IS_INSTANT == false and PROGRESSBAR.progress > 0 then
        PROGRESSBAR.progress = CoreMath.Lerp(PROGRESSBAR.progress, LOCAL_PLAYER.hitPoints / LOCAL_PLAYER.maxHitPoints, dt*4)
    else
        PROGRESSBAR.progress = LOCAL_PLAYER.hitPoints / LOCAL_PLAYER.maxHitPoints
    end
end