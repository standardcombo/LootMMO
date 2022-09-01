-- Last generated on 5/20/2021 10:01:11 PM

--[[
	API:
	GetTextsForLocale(string key) returns table
	GetLocaleIndex(string key) returns number
	GetLocaleKey(number index) returns string
	HasLocale(string key) returns boolean
--]]
local LIBRARY = {}

local FILES = {}
local INDEX_TABLE = {}
local TEXT_TABLES = {}

LIBRARY.GetTextsForLocale = function (key)
	if TEXT_TABLES[key] then
		return TEXT_TABLES[key]
	end
	if FILES[key] then
		TEXT_TABLES[key] = require(FILES[key])
		return TEXT_TABLES[key]
	end
	error('Missing locale library asset for ' .. key .. '. Try adding asset `LocaleLibrary_' .. key .. '` as a custom property to the `LocaleLibrary` script in project content.')
	return nil
end

LIBRARY.GetLocaleIndex = function (key)
	return INDEX_TABLE[key] or 1
end

LIBRARY.GetLocaleKey = function (index)
	return INDEX_TABLE[index]
end

LIBRARY.HasLocale = function (key)
	if FILES[key] then
		return true
	end
	return false
end

FILES["enUS"] = script:GetCustomProperty("LocaleLibrary_enUS")
FILES["frFR"] = script:GetCustomProperty("LocaleLibrary_frFR")
FILES["itIT"] = script:GetCustomProperty("LocaleLibrary_itIT")
FILES["ruRU"] = script:GetCustomProperty("LocaleLibrary_ruRU")
FILES["deDE"] = script:GetCustomProperty("LocaleLibrary_deDE")
FILES["trTR"] = script:GetCustomProperty("LocaleLibrary_trTR")
FILES["esES"] = script:GetCustomProperty("LocaleLibrary_esES")
FILES["esMX"] = script:GetCustomProperty("LocaleLibrary_esMX")
FILES["ptPT"] = script:GetCustomProperty("LocaleLibrary_ptPT")
FILES["ptBR"] = script:GetCustomProperty("LocaleLibrary_ptBR")

INDEX_TABLE[1] = "enUS"; INDEX_TABLE["enUS"] = 1
INDEX_TABLE[2] = "frFR"; INDEX_TABLE["frFR"] = 2
INDEX_TABLE[3] = "itIT"; INDEX_TABLE["itIT"] = 3
INDEX_TABLE[4] = "ruRU"; INDEX_TABLE["ruRU"] = 4
INDEX_TABLE[5] = "deDE"; INDEX_TABLE["deDE"] = 5
INDEX_TABLE[6] = "trTR"; INDEX_TABLE["trTR"] = 6
INDEX_TABLE[7] = "esES"; INDEX_TABLE["esES"] = 7
INDEX_TABLE[8] = "esMX"; INDEX_TABLE["esMX"] = 8
INDEX_TABLE[9] = "ptPT"; INDEX_TABLE["ptPT"] = 9
INDEX_TABLE[10] = "ptBR"; INDEX_TABLE["ptBR"] = 10

return LIBRARY
