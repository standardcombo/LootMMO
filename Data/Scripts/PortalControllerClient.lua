-- Internal properties
local API = require(script:GetCustomProperty("API"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local PORTAL_SCREENSHOT = script:GetCustomProperty("PortalScreenshot"):WaitForObject()
local PORTAL_VFX = script:GetCustomProperty("PortalVFX"):WaitForObject()
local PORTAL_ENTRANCE_VFX = script:GetCustomProperty("PortalEntranceVFX"):WaitForObject()

-- Reference properties
local PORTAL_TRIGGER = script:GetCustomProperty("PortalTrigger"):WaitForObject()
local PORTAL_ENTRANCE_TRIGGER = script:GetCustomProperty("PortalEntranceTrigger"):WaitForObject()
local PORTAL_SPAWN_POINT = script:GetCustomProperty("PortalSpawnPoint"):WaitForObject()
local PORTAL_CAMERA = script:GetCustomProperty("PortalCamera"):WaitForObject()
local GAME_NAME_TEXT = script:GetCustomProperty("GameName"):WaitForObject()
local CREATOR_NAME_TEXT = script:GetCustomProperty("CreatorName"):WaitForObject()
local PROMOTED_LABEL_TEXT = script:GetCustomProperty("PromotedLabel"):WaitForObject()

local PROMOTED_LABEL_GROUP = script:GetCustomProperty("PromotedLabelGroup"):WaitForObject()
local ACTIVE_EVENT_GROUP = script:GetCustomProperty("ActiveEventBadge"):WaitForObject()

local PROMOTED_BACKGROUND = script:GetCustomProperty("PromotedBackground"):WaitForObject()
local HEADER_BACKGROUND = script:GetCustomProperty("HeaderBackground"):WaitForObject()

-- Fallback portals
local RANDOM_FALLBACK_PORTALS = script:GetCustomProperty("RandomFallbackPortals"):WaitForObject()
local PORTAL_ENTRANCE_FALLBACK_VFX = RANDOM_FALLBACK_PORTALS:GetChildren()[math.random(1, #RANDOM_FALLBACK_PORTALS:GetChildren())]

-- Exposed settings
local COLLECTION_ID = ROOT:GetCustomProperty("CollectionID") or "featured"
local IS_EVENT_COLLECTION = ROOT:GetCustomProperty("IsEventCollection") or false
local GAME_ORDER = ROOT:GetCustomProperty("GameOrder") or 1
local OVERRIDE_GAME = ROOT:GetCustomProperty("OverrideGame") or false
local OVERRIDE_GAME_ID = ROOT:GetCustomProperty("OverrideGameID") or ""

-- Exposed color settings
local BASE_COLOR = ROOT:GetCustomProperty("BaseColor")
local HEADER_COLOR = ROOT:GetCustomProperty("HeaderBGColor")
local PORTAL_COLOR_A = ROOT:GetCustomProperty("PortalColorA")
local PORTAL_COLOR_B = ROOT:GetCustomProperty("PortalColorB")
local PORTAL_COLOR_C = ROOT:GetCustomProperty("PortalColorC")

local NAME_COLOR_TEXT = ROOT:GetCustomProperty("NameColor")
local NAME_SHADOW = ROOT:GetCustomProperty("NameShadow")
local NAME_SHADOW_COLOR = ROOT:GetCustomProperty("NameShadowColor")

local CREATOR_NAME_COLOR_TEXT = ROOT:GetCustomProperty("CreatorNameColor")
local CREATOR_NAME_SHADOW = ROOT:GetCustomProperty("CreatorNameShadow")
local CREATOR_NAME_SHADOW_COLOR = ROOT:GetCustomProperty("CreatorNameShadowColor")

-- Constants
local MAX_LENGTH = 16
local MAX_SIZE = GAME_NAME_TEXT:GetScale().x

-- Internal variables
local currentGameID = nil
local currentCollectionEntry = nil
local currentPortalEntranceVFX = PORTAL_ENTRANCE_VFX

-- Set game to the portal using game id
function SetGame(gameId, gameCollectionEntry, hasActiveEvent)
    local isGameValid, gameInfo = pcall(CorePlatform.GetGameInfo, gameId)
    if not isGameValid then return end

    currentGameID = gameId
    currentCollectionEntry = gameCollectionEntry

    -- Set game and creator name texts and upper screenshot
    SetText(GAME_NAME_TEXT, gameInfo.name, NAME_SHADOW)

    if (currentCollectionEntry and currentCollectionEntry:IsA("CoreGameEvent")) then
        PORTAL_SCREENSHOT:SetGameEvent(currentCollectionEntry)
        PORTAL_SCREENSHOT:SetColor(Color.WHITE)
        SetText(CREATOR_NAME_TEXT, currentCollectionEntry.name, CREATOR_NAME_SHADOW)
    else
        if (not IS_EVENT_COLLECTION and Object.IsValid(PORTAL_SCREENSHOT)) then
            -- if this isn't an Event Collection portal, and the World Space UI Container still exists, destroy it to save on performance
            local container = PORTAL_SCREENSHOT:GetCustomProperty("Container"):WaitForObject()
            container:Destroy()
            PORTAL_SCREENSHOT = nil
        end
        PORTAL_VFX:SetSmartProperty("Game ID", gameId)
        PORTAL_VFX.visibility = Visibility.INHERIT
        SetText(CREATOR_NAME_TEXT, "by "..gameInfo.ownerName, CREATOR_NAME_SHADOW)
    end

    if (hasActiveEvent) then
        -- we have some active events
        ACTIVE_EVENT_GROUP.visibility = Visibility.INHERIT
    else
        ACTIVE_EVENT_GROUP.visibility = Visibility.FORCE_OFF
    end

    -- TODO: make it dynamic with relevance feature!!!
    local temp = false
    if temp --[[ gameInfo.hasWorldCapture ]] then
        PORTAL_ENTRANCE_VFX:SetSmartProperty("Use World Capture", true)
        PORTAL_ENTRANCE_VFX:SetSmartProperty("Game ID", gameId)
        
        PORTAL_ENTRANCE_VFX.visibility = Visibility.INHERIT
        PORTAL_ENTRANCE_FALLBACK_VFX.visibility = Visibility.FORCE_OFF

        currentPortalEntranceVFX = PORTAL_ENTRANCE_VFX
    else
        PORTAL_ENTRANCE_VFX:SetSmartProperty("Use World Capture", false)
        PORTAL_ENTRANCE_VFX.visibility = Visibility.FORCE_OFF

        PORTAL_ENTRANCE_FALLBACK_VFX.visibility = Visibility.INHERIT

        currentPortalEntranceVFX = PORTAL_ENTRANCE_FALLBACK_VFX
    end

    -- Resize name label
    local length = string.len(gameInfo.name) 
    if length > MAX_LENGTH then
        local fraction = length / MAX_LENGTH - 1
        local newSize = MAX_SIZE - (MAX_SIZE * fraction / (MAX_LENGTH / 10))

        GAME_NAME_TEXT:SetScale(Vector3.ONE * newSize)
    end

    if gameCollectionEntry and gameCollectionEntry.isPromoted then
        PROMOTED_LABEL_GROUP.visibility = Visibility.INHERIT
    else
        PROMOTED_LABEL_GROUP.visibility = Visibility.FORCE_OFF
    end
end

function GetStats()
    return {
        id = ROOT.id,
        collectionID = API.CreateIndexName(COLLECTION_ID, IS_EVENT_COLLECTION),
        gameOrder = GAME_ORDER,
        gameID = currentGameID,
        gameCollectionEntry = currentCollectionEntry,
        trigger = PORTAL_TRIGGER,
        entranceTrigger = PORTAL_ENTRANCE_TRIGGER,
        camera = PORTAL_CAMERA,
        spawnPoint = PORTAL_SPAWN_POINT,
        portalScreenshot = PORTAL_SCREENSHOT,
        portalVFX = PORTAL_VFX,
        portalEntranceVFX = currentPortalEntranceVFX,
        overrideGame = OVERRIDE_GAME,
        overrideGameID = OVERRIDE_GAME_ID,
        isEventCollection = IS_EVENT_COLLECTION
    }
end

function SetText(textObj, text, showShadow)
    textObj.text = text

    for _, shadowText in ipairs(textObj:GetChildren()) do
        if showShadow then
            shadowText.text = textObj.text
        else
            shadowText.text = ""
        end
    end
end

function SetTextColor(textObj, color, shadowColor)
    textObj:SetColor(color)

    for _, shadowText in ipairs(textObj:GetChildren()) do
        shadowText:SetColor(shadowColor)
    end
end

function Init()
    -- Remove other random fallback portals
    -- TODO: This is temp solution of swapping between fallback portals visuals
    -- TODO: Change this once we have enum smart property support
    for _, child in ipairs(RANDOM_FALLBACK_PORTALS:GetChildren()) do
        if child ~= PORTAL_ENTRANCE_FALLBACK_VFX then
            child:Destroy()
        end
    end

    -- Apply color settings to portal
    for _, child in ipairs(HEADER_BACKGROUND:GetChildren()) do
        child:SetColor(HEADER_COLOR)
    end
    for _, child in ipairs(PROMOTED_BACKGROUND:GetChildren()) do
        child:SetColor(HEADER_COLOR)
    end
    for index, value in ipairs(ROOT:FindDescendantsByType("StaticMesh")) do
        if value:GetCustomProperty("Colorize") then
            value:SetColor(BASE_COLOR)
        end
    end
    
    PORTAL_ENTRANCE_VFX:SetSmartProperty("Color A", PORTAL_COLOR_A)
    PORTAL_ENTRANCE_VFX:SetSmartProperty("Color B", PORTAL_COLOR_B)
    PORTAL_ENTRANCE_VFX:SetSmartProperty("Color C", PORTAL_COLOR_C)

    PORTAL_ENTRANCE_FALLBACK_VFX:SetSmartProperty("Color A", PORTAL_COLOR_A)
    PORTAL_ENTRANCE_FALLBACK_VFX:SetSmartProperty("Color B", PORTAL_COLOR_B)
    PORTAL_ENTRANCE_FALLBACK_VFX:SetSmartProperty("Color C", PORTAL_COLOR_C)

    -- Hide promoted label
    PROMOTED_LABEL_GROUP.visibility = Visibility.FORCE_OFF

    -- Set game and creator name texts
    SetText(GAME_NAME_TEXT, "", NAME_SHADOW)
    SetText(CREATOR_NAME_TEXT, "", CREATOR_NAME_SHADOW)

    -- Setting color for texts
    SetTextColor(GAME_NAME_TEXT, NAME_COLOR_TEXT, NAME_SHADOW_COLOR)
    SetTextColor(CREATOR_NAME_TEXT, CREATOR_NAME_COLOR_TEXT, CREATOR_NAME_SHADOW_COLOR)

    -- Apply game information
    if OVERRIDE_GAME and OVERRIDE_GAME_ID ~= "" then
        SetGame(OVERRIDE_GAME_ID)
        return
    end
end

-- Initialize
local functionTable = {}
functionTable.GetStats = GetStats
functionTable.SetGame = SetGame

API.RegisterPortal(ROOT.id, functionTable)

Init()


