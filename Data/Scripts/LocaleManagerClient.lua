--[[
Copyright 2021 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom property
local API = require(script:GetCustomProperty("API"))
local LIBRARY = require(script:GetCustomProperty("LocaleLibrary"))

-- External user properties
local ROOT = script:GetCustomProperty("ROOT"):WaitForObject()
local DEFAULT_LANGUAGE_KEY = ROOT:GetCustomProperty("DefaultLanguageKey") or "enUS"

-- TODO: use this in case we don't need locale manager
local ALWAYS_USE_DEFAULT = ROOT:GetCustomProperty("AlwaysUseDefaultLocale")

-- Constant variables
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Internal variables
local currentIndex = 1                          -- locale index from player resource
local currentKey = DEFAULT_LANGUAGE_KEY         -- current locale

-- Reverse map, from default language to TIDs
local defaultToTIDs = {}
local defaultTexts = LIBRARY.GetTextsForLocale(DEFAULT_LANGUAGE_KEY)
for k,v in pairs(defaultTexts) do
	defaultToTIDs[v] = k
end

-- Metatable setup for text translation lookup
local LOCALE_METATABLE = setmetatable({}, {
    __index = function(_, key)
    	local tid = key
    	if not defaultTexts[tid] then
    		-- The input was not a valid TID, maybe it's a normal text
    		tid = defaultToTIDs[key]
	    	if not tid then
	    		-- The given input is not in the localization library
	    		return key
	    	end
	    end
        -- Get the texts for the current active language
        local texts = LIBRARY.GetTextsForLocale(currentKey)
        if texts then
        	local result = texts[tid]
        	if result == nil or result == "" then
        		warn("Localization missing in " .. tostring(currentKey) .. " for text '" .. tostring(key) .. "'")
        		return defaultTexts[tid]
        	end
            -- Return the translated word
            return result
        else
            -- Just return if no language data is found
            warn("Localization missing for " .. tostring(currentKey))
            return key
        end
    end
})

-- Function to get locale metatable
function GetLocale()
    return LOCALE_METATABLE
end

-- Get local player's current key
function GetPlayerCurrentKey(player)
    local index = player:GetResource("LocaleIndex")
    return GetLocaleKey(index)
end

-- Convert from locale key to index (E.g. enUS -> 1)
function GetLocaleIndex(key)
    return LIBRARY.GetLocaleIndex(key)
end

-- Convert from locale index to key (E.g. 1 -> enUS)
function GetLocaleKey(index)
    return LIBRARY.GetLocaleKey(index)
end

function SetLocaleKey(key, forceSendToServer)
	if not LIBRARY.HasLocale(key) then return end

    -- When needed force send to server the locale change event
    if forceSendToServer then
        Events.BroadcastToServer("LocaleChanged", key, true)
    end

    -- Set new locale
    if currentKey == key then return end
    currentKey = key
    currentIndex = GetLocaleIndex(key)

    -- Ignore sending to server if we already forced sent the event before
    if not forceSendToServer then
        Events.BroadcastToServer("LocaleChanged", key, true)
    end
    Events.Broadcast("LocaleChanged", key)
end

function OnResourceChanged(player, resource, value)
    if player ~= LOCAL_PLAYER then return end
    if resource == "LocaleIndex" then
        -- Saved locale comes over the network as a resource number. Convert to key
        local key = GetLocaleKey(value)
        SetLocaleKey(key)
    end
end

-- Initialize
LOCAL_PLAYER.resourceChangedEvent:Connect(OnResourceChanged)
local localeIndex = LOCAL_PLAYER:GetResource("LocaleIndex")
if localeIndex == 0 then
    SetLocaleKey(DEFAULT_LANGUAGE_KEY)
else
    SetLocaleKey(GetLocaleKey(localeIndex))
end

local functionTable = {}
functionTable.GetLocale = GetLocale
functionTable.GetLocaleIndex = GetLocaleIndex
functionTable.GetLocaleKey = GetLocaleKey
functionTable.GetPlayerCurrentKey = GetPlayerCurrentKey
functionTable.SetLocaleKey = SetLocaleKey

API.Register(functionTable)


