local propDragonScreechSFX = script:GetCustomProperty("DragonScreechSFX"):WaitForObject()
RepeatIntervalMin = 5
RepeatIntervalMax = 10

function playDragonSound()
    propDragonScreechSFX:Play()
end

function Tick(deltaTime)
        local repeatInterval = math.random(RepeatIntervalMin,RepeatIntervalMax)
        Task.Wait(repeatInterval)
        playDragonSound()
       -- UI.PrintToScreen("SFX is playing")
       -- UI.PrintToScreen("Time until next SFX trigger is " .. repeatInterval .. " seconds.")
end