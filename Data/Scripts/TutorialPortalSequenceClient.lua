-- Internal custom properties
local API_PORTALS = require(script:GetCustomProperty("APIPortals"))
local L = require(script:GetCustomProperty("APILocale"))

local LOCAL_PLAYER = Game.GetLocalPlayer()
local DEFAULT_DURATION = 5
local UI_FADE_IN = .5
local UI_FADE_OUT = 2

local portalCollection = "tournament"

function OnTutorialPortalSequence(duration)
    print("Portal sequence started.")
    local portals = API_PORTALS.GetPortalsInCollection(portalCollection)
    local collectionData = API_PORTALS.GetCollectionData(portalCollection)
    local randPortalID = portals[math.random(1, #portals)]
    local portalStats = API_PORTALS.GetStats(randPortalID)
    local gameStats = CorePlatform.GetGameInfo(portalStats.gameID)
    local camera = portalStats.camera

    Events.Broadcast("UI_FadeTransition", UI_FADE_IN, UI_FADE_OUT)
    Task.Spawn(function() LOCAL_PLAYER:SetOverrideCamera(camera, 0) end, UI_FADE_IN)

    Task.Spawn(function()
        Events.Broadcast("PortalHologram", randPortalID, 3)
        Task.Wait(3)
        local text = L["{player} portaled to {game}"]
        text = text:gsub("{(.-)}", {["player"] = LOCAL_PLAYER.name, ["game"] = gameStats.name})
        Events.Broadcast("BannerMessage", text, 2, collectionData.color)
    end, 1)

    if duration then
        Task.Wait(duration)
    else
        Task.Wait(DEFAULT_DURATION)
    end

    Events.Broadcast("UI_FadeTransition", UI_FADE_IN, UI_FADE_OUT)
    Task.Spawn(function() LOCAL_PLAYER:ClearOverrideCamera() end, UI_FADE_IN)
end

Events.Connect("TutorialPortalSequence", OnTutorialPortalSequence)