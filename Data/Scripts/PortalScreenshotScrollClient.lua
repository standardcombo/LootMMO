local API = require(script:GetCustomProperty("API"))

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

--- Internal variables
local portal = nil
local screenshotCount = 1
local isOverlapping = false
local lastTime = time()
local currentScreenshotIndex = 1
local waitDuration = 2.5

function Tick()
    if isOverlapping and time() - lastTime > waitDuration then
        if currentScreenshotIndex < screenshotCount then
            currentScreenshotIndex = currentScreenshotIndex + 1
        else
            currentScreenshotIndex = 1
        end
        portal:SetSmartProperty("Screenshot Index", currentScreenshotIndex)
        lastTime = time()
    end
end

function UpdateProperty(trigger)    
    local gameId = API.GetTriggerGameID(trigger)
    local _, gameInfo = pcall(CorePlatform.GetGameInfo, gameId)
    
    if gameInfo then
        portal = trigger:GetCustomProperty("PortalVFX"):WaitForObject()
        screenshotCount = gameInfo.screenshotCount
    end
end

function OnBeginOverlap(trigger, player)
    if player ~= LOCAL_PLAYER then return end

    UpdateProperty(trigger)
    isOverlapping = true
end

function OnEndOverlap(trigger, player)
    if player ~= LOCAL_PLAYER then return end

    isOverlapping = false
    if Object.IsValid(portal) then
        portal:SetSmartProperty("Screenshot Index", 1)
    end
    currentScreenshotIndex = 1
end

function Init()
    for _, trigger in ipairs(API.GetAllPortalEntranceTriggers()) do
        trigger.beginOverlapEvent:Connect(OnBeginOverlap)
        trigger.endOverlapEvent:Connect(OnEndOverlap)
    end
end

while not API.AreAllPortalsLoaded() do
    Task.Wait()
end

Init()