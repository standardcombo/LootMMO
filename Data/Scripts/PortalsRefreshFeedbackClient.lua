local API = require(script:GetCustomProperty("API"))
local API_TUTORIAL = require(script:GetCustomProperty("APITutorial"))
local L = require(script:GetCustomProperty("APILocale"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnPortalsRefresh(collectionID)
    if not API_TUTORIAL.HasPlayerCompletedTutorial(LOCAL_PLAYER) then return end

    local collectionData = API.GetCollectionData(collectionID)
    if collectionData then
        local text = "{collection} Games portals are refreshed!"
        local subText = "Check out updated games in {collection} area"

        -- Substitute collection name in the text
        text = "↻ "..L[text]
        subText = L[subText]
        text = text:gsub("{(.-)}", {["collection"] = L[collectionData.name]})
        subText = subText:gsub("{(.-)}", {["collection"] = L[collectionData.name]})

        --Events.Broadcast("BannerMessage", text, 5, collectionData.color, subText)
        Events.Broadcast("ActivityFeedLine", {activity = text, color = collectionData.color})
    end
end

Events.Connect("PortalsRefresh", OnPortalsRefresh)