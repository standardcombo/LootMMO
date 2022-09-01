-- Internal custom property
local API = require(script:GetCustomProperty("API"))
local LIBRARY = require(script:GetCustomProperty("LocaleLibrary"))
local STORAGE_LIBRARY = require(script:GetCustomProperty("StorageLibrary"))

function SetPlayerLocale(player, locale, selected)
    if type(locale) == "string" then
        locale = LIBRARY.GetLocaleIndex(locale)
    end

    if locale == nil then return end

    local playerData = STORAGE_LIBRARY.GetPlayerData(player)
    playerData.localeData = {
        index = locale,
        selected = selected
    }

    STORAGE_LIBRARY.SetPlayerData(player, playerData)

    -- Send the saved locale over the network as a resource number
    player:SetResource("LocaleIndex", playerData.localeData.index)
    if playerData.localeData.selected then
        player:SetResource("LocaleSelected", 1)
    else
        player:SetResource("LocaleSelected", 0)
    end
end

-- Initialize locale check for current player
function Init(player)
    local playerData = STORAGE_LIBRARY.GetPlayerData(player)

    -- If there is no data saved on language for this player, set default locale
    if type(playerData.localeData) ~= "table" then
        SetPlayerLocale(player, 1, false)
        return
    end

    -- Send the locale over the network as a resource number
    player:SetResource("LocaleIndex", playerData.localeData.index)
    if playerData.localeData.selected then
        player:SetResource("LocaleSelected", 1)
    else
        player:SetResource("LocaleSelected", 0)
    end
end

Game.playerJoinedEvent:Connect(Init)
Events.ConnectForPlayer("LocaleChanged", SetPlayerLocale)