-- Internal properties
local API = require(script:GetCustomProperty("API"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

-- Reference properties
local PORTAL_SPAWN_POINT = script:GetCustomProperty("PortalSpawnPoint"):WaitForObject()

-- Exposed settings
local COLLECTION_ID = ROOT:GetCustomProperty("CollectionID") or "featured"
local IS_EVENT_COLLECTION = ROOT:GetCustomProperty("IsEventCollection") or false
local GAME_ORDER = ROOT:GetCustomProperty("GameOrder") or 1
local OVERRIDE_GAME = ROOT:GetCustomProperty("OverrideGame") or false
local OVERRIDE_GAME_ID = ROOT:GetCustomProperty("OverrideGameID") or ""

function GetStats()
    return {
        id = ROOT.id,
        collectionID = API.CreateIndexName(COLLECTION_ID, IS_EVENT_COLLECTION),
        gameOrder = GAME_ORDER,
        spawnPoint = PORTAL_SPAWN_POINT,
        overrideGame = OVERRIDE_GAME,
        overrideGameID = OVERRIDE_GAME_ID,
        isEventCollection = IS_EVENT_COLLECTION
    }
end

-- Initialize
local functionTable = {}
functionTable.GetStats = GetStats

API.RegisterPortal(ROOT.id, functionTable)