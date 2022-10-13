local PROGRESSBAR = script.parent
assert(PROGRESSBAR:IsA("UIProgressBar"), "parent needs to be a progress bar")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function Tick(dt)
    PROGRESSBAR.progress = CoreMath.Lerp(PROGRESSBAR.progress, LOCAL_PLAYER.hitPoints / LOCAL_PLAYER.maxHitPoints, dt*4)
end 