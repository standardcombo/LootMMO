--[[
    This scripts manages all portals within the game from client side. 
    It sets up a game for each portal and refreshes them based on game collections.

    Each portal has 2 triggers: 
    - Portal Entrance Trigger - for entrance game info
    - Portal Trigger - for portaling to the game

    Each time player interacts with the trigger, player gets assigned "portalStats" table
    "portalStats" is used by other scripts to show the local player the game information
 ]]

-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local API_GLOBAL_TIME = require(script:GetCustomProperty("APIGlobalTime"))
local API_ANALYTICS = require(script:GetCustomProperty("APIAnalytics"))
local COLLECTIONS = script:GetCustomProperty("Collections"):WaitForObject()

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local FALLBACK_COLLECTIONS_ID = {
    "hot_games",
    "most_played",
    "highest_rated"
}

-- Internal variables
local collectionsData = {}
local portalsByCollection = {}
local usedGames = {}                    -- Table of used portal collection games
local usedRefreshGames = {}             -- Table of used refreshing portals games
local usedPromotedGames = {}            -- Table of used promoted portals games
local fallbackGames = {}                -- Table of games id from FALLBACK_COLLECTIONS_ID
local usedFallbackGames = {}            -- Table of used fallback games
local usedFallbackPromotedGames = {}    -- Table of used fallback promoted games
local allActiveEvents = {}              -- an ordered list of all active events retrieved from the backend
local activeEventsMap = {}              -- a Map from gameId to bool; if activeEventsMap[gameId], then it has an active event

-- Get collections data table. Each collection returns id, canRefresh, refreshDuration, and color 
function GetCollectionsData()
    return collectionsData
end

-- Returns the list of portals tied to the specified collectionID
function GetPortalsInCollection(collectionID)
    return portalsByCollection[collectionID]
end

-- TEMP
function GetAvailableList(collection)
    for index, value in ipairs(collection) do
        if usedGame[value.id] then
        end
    end
end

-- Updates portal with the game from collection and order from that collection
-- The collection and order is set on the portal template and by PortalControllerClient.lua script
-- If no game can be found, then the game uses fallback game to fill up the portal (if the portal is empty)
function UpdatePortalGame(id)
    local stats = API.GetStats(id)
    if stats.overrideGame then return end

    local collection = nil
    local gameId = nil
    local isPromoted = false
    
    if (not stats.isEventCollection) then
        _, collection = pcall(CorePlatform.GetGameCollection, stats.collectionID)
    else
        local collectionName = API.GetCollectionNameFromIndex(stats.collectionID)
        if (collectionName ~= "active") then
            -- Active Events is a special case, just use the global list
            -- In this case it's not Active, so actually call back
            _, collection = pcall(CorePlatform.GetGameEventCollection, collectionName)
            if (collection) then
                collection = collection:GetResults()
            end
        else
            collection = allActiveEvents
        end
    end

    if not collection then
        UpdatePortalWithFallbackGame(id)
        return
    end

    if collectionsData[stats.collectionID] then
        for index, collectionEntry in ipairs(collection) do
            if (not stats.isEventCollection) then
                gameId = collectionEntry.id
                isPromoted = collectionEntry.isPromoted
            else
                gameId = collectionEntry.gameId
            end

            if not usedGames[gameId] and not isPromoted then
                if collectionsData[stats.collectionID].canRefresh and not usedRefreshGames[gameId] then
                    usedRefreshGames[gameId] = true

                    API.SetGame(id, gameId, collectionEntry, activeEventsMap[gameId])
                    return
                elseif not collectionsData[stats.collectionID].canRefresh then
                    usedGames[gameId] = true

                    API.SetGame(id, gameId, collectionEntry, activeEventsMap[gameId])
                    return
                end
            elseif isPromoted then

                -- TODO: Uncomment this if we want to promotional games deduping
--[[                 if not usedPromotedGames[stats.collectionID] then
                    usedPromotedGames[stats.collectionID] = {}
                end

                if not usedPromotedGames[stats.collectionID][gameId] then
                    usedPromotedGames[stats.collectionID][gameId] = true
                    API.SetGame(id, gameId, collectionEntry)
                    return
                end
 ]]
                if index == stats.gameOrder then
                    API.SetGame(id, gameId, collectionEntry, activeEventsMap[gameId])
                    return
                end
            end
        end

        UpdatePortalWithFallbackGame(id)
    else
        UpdatePortalWithFallbackGame(id)
    end
end

-- Updates portal with fallback game
function UpdatePortalWithFallbackGame(id)
    local stats = API.GetStats(id)

    -- Use a fallback game from other categories if portal has no game set
    if stats.gameID == "" or stats.gameID == nil then
        for index, gameData in ipairs(fallbackGames) do

            local collectionID = gameData.collection
            local collectionEntry = gameData.collectionEntry
            local gameId = collectionEntry.id

            if not usedFallbackGames[gameId] and not collectionEntry.isPromoted then
                usedFallbackGames[gameId] = true
                API.SetGame(id, gameId, collectionEntry, activeEventsMap[gameId])
                return
            elseif collectionEntry.isPromoted then
                    -- TODO: Uncomment this if we want to fallback promotional games deduping
--[[                 if not usedFallbackPromotedGames[collectionID] then
                    usedFallbackPromotedGames[collectionID] = {}
                end

                if not usedFallbackPromotedGames[collectionID][gameId] then
                    usedFallbackPromotedGames[collectionID][gameId] = true
                    API.SetGame(id, gameId, collectionEntry)
                    return
                end ]]

                if index == stats.gameOrder then
                    API.SetGame(id, gameId, collectionEntry, activeEventsMap[gameId])
                    return
                end
            end
        end
    end
end

-- Refresh portals within the specified collectionID
function RefreshPortalsByCollection(collectionID)
    print("Refreshing " .. collectionID)
    Events.Broadcast("PortalsRefresh", collectionID)

    if (collectionID == "active?EVENT") then
        -- special case for active events, clear usedRefreshGames (it gets first priority on using them)
        -- reinit active events
        usedRefreshGames = {}
        PopulateActiveEvents() 
    end
    usedPromotedGames[collectionID] = {}

    local validPortals = GetPortalsInCollection(collectionID)
    if validPortals then
        for _, id in ipairs(validPortals) do
            UpdatePortalGame(id)
            Task.Wait()
        end
    end

    Task.Wait(1)
    CheckPortalsForNextRefresh(collectionID)
end

-- Spawn tasks to refresh portals after "refreshDuration"
function CheckPortalsForNextRefresh(collectionID)
    local value = collectionsData[collectionID]
    if value.canRefresh then
        local remainingTime = API_GLOBAL_TIME.GetRemainingTime(value.refreshDuration * 60)

        Task.Spawn(function() RefreshPortalsByCollection(collectionID) end, remainingTime)
    end
end

-- Update player's current portal information
function UpdatePlayerData(trigger, player)
    local _, id = API.GetTriggerGameID(trigger)
    player.clientUserData.portalStats = API.GetStats(id)

--[[     if player ~= LOCAL_PLAYER then
        print("Update "..tostring(player.clientUserData.portalStats))
    end ]]

    if LOCAL_PLAYER == player then
        Events.Broadcast("PortalStats", id)
    end
end

-- Remove any current portal information on player
function ResetPlayerData(player)
    if player == nil then
        Task.Wait()
        Task.Wait()
    end

    if player == nil then return end

    if LOCAL_PLAYER == player and player.clientUserData.portalStats then
        Events.Broadcast("PortalStats", nil, player.clientUserData.portalStats.id)
    end

    -- TODO: Find a cleaner way to clear up portal stats if player uses browsing menu (leaving game > trigger > left event)
    if player:GetResource("CoreModal") == 1 then return end
    player.clientUserData.portalStats = nil

    --[[     if player ~= LOCAL_PLAYER then
        print("Reset "..tostring(player.clientUserData.portalStats))
    end ]]
end

-- Assign local player with current portal trigger on entrance overlap
function OnBeginOverlap(trigger, player)
	if player:IsA("Player") then
    	UpdatePlayerData(trigger, player)
    end
end

-- Assign local player with current portal trigger on overlap
function OnPortalTriggerOverlap(trigger, player)
    UpdatePlayerData(trigger, player)

    -- Play portal effect upon this player overlaping with portal trigger
    -- Other players will see this player's portal effect
    local stats = player.clientUserData.portalStats
    if not stats then return end
    Events.Broadcast("PortalEffect", player, stats)

    -- Server script will transfer the player to game
    if player ~= LOCAL_PLAYER then return end
    local gameID = stats.gameID
    local portalID = stats.id
    local _, gameInfo = pcall(CorePlatform.GetGameInfo, gameID)
    
    -- Fade for transition when respawning player using queue
    if gameInfo and gameInfo.isQueueEnabled then
        Events.Broadcast("UI_FadeTransition", .4, 2.5)
    end
    
    Task.Wait(.5) -- slight delay for effect
    if stats.gameCollectionEntry and player == LOCAL_PLAYER then
        -- Local player transfers to a game if there is collection entry info
        if (stats.gameCollectionEntry:IsA("CoreGameEvent")) then
            LOCAL_PLAYER:TransferToGame(stats.gameCollectionEntry.gameId)

            -- Sending analytics when the user goes through event portal
--[[            API_ANALYTICS.SubmitEvent("GameJoinPortal", {
                gameIdPortal = stats.gameCollectionEntry.gameId,
                gameOrder = stats.gameOrder,
                collectionId = stats.collectionID,
                isPromoted = false
            })]]
        else
            LOCAL_PLAYER:TransferToGame(stats.gameCollectionEntry)

            -- Sending analytics when the user goes through game portal that has collection entry
--[[            API_ANALYTICS.SubmitEvent("GameJoinPortal", {
                gameIdPortal = stats.gameCollectionEntry.id,
                gameOrder = stats.gameOrder,
                collectionId = stats.collectionID,
                isPromoted = stats.gameCollectionEntry.isPromoted
            })]]
        end
        
        -- Send the queued portal event to server. "PGEQ" stands for "Player Game Entry Queued"
        if gameInfo and gameInfo.isQueueEnabled then
            Events.BroadcastToServer("PGEQ", gameID, portalID)
        end
    else
        -- Send the portal event to server. "PP" stands for "Player Portal"
        Events.BroadcastToServer("PP", gameID, portalID)
    end
end

function PopulateActiveEvents()
    local result, collection = pcall(CorePlatform.GetGameEventCollection, "active")
    allActiveEvents = {}
    activeEventsMap = {}
    if result and (collection) then
        for _, gameEvent in pairs(collection:GetResults()) do
            allActiveEvents[#allActiveEvents+1] = gameEvent
            activeEventsMap[gameEvent.gameId] = true
        end

        while (collection and collection.hasMoreResults) do
            _, collection = pcall(collection.GetMoreResults, collection)

            if (collection) then
                for _,gameEvent in pairs(collection:GetResults()) do
                    allActiveEvents[#allActiveEvents+1] = gameEvent
                    activeEventsMap[gameEvent.gameId] = true
                end
            end
        end
    end

    print("Successfully loaded " .. tostring(#allActiveEvents) .. " active events.")
end

-- Assign local player with current portal trigger on leaving the entrance
function OnEndOverlap(trigger, player)
	if player:IsA("Player") then
    	ResetPlayerData(player)
    end
end

function SortPortals(id1, id2)
    local gameOrder1 = API.GetStats(id1).gameOrder
    local gameOrder2 = API.GetStats(id2).gameOrder
    return gameOrder1 < gameOrder2
end

-- Register portal trigger events and update portals with games from collections
function Init()
    -- Populate Active Events
    PopulateActiveEvents()

    -- Portal entrances triggers init
    for _, trigger in ipairs(API.GetAllPortalEntranceTriggers()) do
        trigger.beginOverlapEvent:Connect(OnBeginOverlap)
        trigger.endOverlapEvent:Connect(OnEndOverlap)
    end

    -- Portal triggers init
    for _, trigger in ipairs(API.GetAllPortalTriggers()) do
        trigger.beginOverlapEvent:Connect(OnPortalTriggerOverlap)
    end

    -- Generate fallback games
    for _, collectionID in ipairs(FALLBACK_COLLECTIONS_ID) do
        local gameCollection = CorePlatform.GetGameCollection(collectionID)
        if gameCollection then
            for order, collectionEntry in ipairs(gameCollection) do
                if order <= 50 then
                    table.insert(fallbackGames, {
                        collection = collectionID,
                        collectionEntry = collectionEntry
                    })
                else
                    break
                end
            end
        end
    end

    -- Sort portals in a table for faster access to portal per collection
    -- Check for override game and save it to used games table
    for index, id in ipairs(API.GetAllPortals()) do
        local stats = API.GetStats(id)

        local collectionID = stats.collectionID
        if portalsByCollection[collectionID] then
            table.insert(portalsByCollection[collectionID], id)
        end

        if stats.overrideGame and not usedGames[stats.overrideGameID] then
            usedGames[stats.overrideGameID] = true
        end
    end

    -- Sort each portal within collection based on game order
    for collectionID, portals in pairs(portalsByCollection) do
        portals = table.sort(portals, SortPortals)
    end

    -- Initialize portal games from collections
    -- Initialize based on order from the collection list in Hierarchy
    for _, child in ipairs(COLLECTIONS:GetChildren()) do
        local collectionID = child:GetCustomProperty("ID")
        local isEventCollection = child:GetCustomProperty("IsEventCollection")
        local collectionIndex = API.CreateIndexName(collectionID, isEventCollection)
        print("Initializing collectionIndex: " .. collectionIndex)
        if portalsByCollection[collectionIndex] and #portalsByCollection[collectionIndex] > 0 then
            for index, id in ipairs(portalsByCollection[collectionIndex]) do
                UpdatePortalGame(id)
            end
        end

        -- Update portals refresh
        CheckPortalsForNextRefresh(collectionIndex)
    end

    
end

-- Initialize collections data table
for _, child in ipairs(COLLECTIONS:GetChildren()) do
    local collectionID = child:GetCustomProperty("ID")
    local isEventCollection = child:GetCustomProperty("IsEventCollection")  
    collectionsData[API.CreateIndexName(collectionID, isEventCollection)] = {
        name = child.name,                                                      -- human readable name of collection
        canRefresh = child:GetCustomProperty("CanRefresh"),                     -- can this collection be refreshed
        refreshDuration = child:GetCustomProperty("RefreshDurationInMinutes"),  -- should be higher than 0
        color = child:GetCustomProperty("Color"),                                -- main color of category used for activity feed, and other UI purposes
        isEventCollection = isEventCollection                                     -- whether or not this collection should pull from GameEventCollection rather than GameCollection
    }
end

for collectionID, _ in pairs(collectionsData) do
    portalsByCollection[collectionID] = {}
end

-- Initialize manager
local functionTable = {}
functionTable.GetCollectionsData = GetCollectionsData
functionTable.GetPortalsInCollection = GetPortalsInCollection

API.RegisterPortalsManager(functionTable)

-- Initialize script
--while not API.AreAllPortalsLoaded() do
    Task.Wait()
    Task.Wait()
--end

Init()

