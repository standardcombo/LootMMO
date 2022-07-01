
local API = {}

local DATA_TABLE = require(script:GetCustomProperty("DataTable"))

local collectionIds = {}
local indexedByAddress = {}

-- Pre-process
for _,data in ipairs(DATA_TABLE) do
	local id = data.collectionId
	
	table.insert(collectionIds, id)
	indexedByAddress[id] = data
end

-- Returns the list of collection IDs
function API.GetIds()
	return collectionIds
end

-- Returns full data on a specific collection
function API.GetData(contractAddress)
	return indexedByAddress[contractAddress]
end

-- Returns description for a specific collection
function API.GetDescription(contractAddress)
	return indexedByAddress[contractAddress].description
end

-- Returns the icon for a specific collection
function API.GetIcon(contractAddress)
	return indexedByAddress[contractAddress].icon
end

-- Returns the UI prefix text for a Loot Bag row in character selection screen
function API.GetSelectionPrefix(contractAddress)
	return indexedByAddress[contractAddress].selectionPrefix
end

-- Returns the UI header's prefix text when a Loot Bag is chosen, in character selection screen
function API.GetHeaderPrefix(contractAddress)
	return indexedByAddress[contractAddress].headerPrefix
end

return API

