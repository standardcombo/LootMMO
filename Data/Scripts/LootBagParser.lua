
--[[
	Loot Bag Parser
	v1.0
	by: standardcombo
	
	Converts Loot NFTs into tables for use with gameplay.
	
	Some collections (e.g. original Loot) have attributes data.
	Others (e.g. More Loot need to be parsed from SVG.
	
	===== API =====
	
	Parse(BlockchainToken) - Returns table
		Parses a BlockchainToken into gameplay-friendly Loot Bag data.
	
	ParseItemSVG(string/tokenMetadata) - Returns table
		Parses raw NFT metadata into a table of items.
	
	
	=== SCHEMAS ===
	
	Item
		name (string) - Primary identifier for the item (e.g. Warhammer)
		fullName (string) - Complete item name, as seen in the SVG image
		type (string) - The equipment slot where the item goes (e.g. Head)
		greatness (integer) - "Level" of the item.
		order (string) - One of the 16 orders of Loot. NIL if no order.
		prefix (string) - Prefix of the item's special name. NIL if no special name.
		suffix (string) - Suffix of the item's special name. NIL if no special name.
		bonus (integer) - Extra power level of the item. 0 if no bonus.
		
	Loot Bag
		items (<Item>) - Table of 8 items found inside the Loot Bag.
		class (string) - Character class: Warrior, Hunter or Mage.
		collection (string) - Address of the smart contract.
		tokenId (string) - ID of the specific NFT from which the Loot Bag was parsed.
]]

local API = {}

-- Enumeration of valid collections, by contract ID
API.Collection = {}
API.Collection.Loot = "0xff9c1b15b16263c61d017ee9f65c50e4ae0113d7"
API.Collection.mLoot = "0x1dfe7ca09e99d10835bf73044a23b73fc20623df"
API.Collection.Genesis = "0x8db687aceb92c66f013e1d614137238cc698fedb"

local BASE_64 = require( script:GetCustomProperty("Base64") )
local JSON = require(script:GetCustomProperty("JSON"))

local TYPES = {
	"Weapon",
	"Chest",
	"Head",
	"Waist",
	"Foot",
	"Hand",
	"Neck",
	"Ring",
}
local WEAPON_CLASS = {
	"Warrior",
	"Warrior",
	"Warrior",
	"Warrior",
	"Warrior",
	"Hunter",
	"Hunter",
	"Hunter",
	"Hunter",
	"Hunter",
	"Mage",
	"Mage",
	"Mage",
	"Mage",
	"Mage",
	"Mage",
	"Mage",
	"Mage",
}

local WEAPON_NAMES = {
    "Warhammer",            -- 0
    "Quarterstaff",         -- 1
    "Maul",                 -- 2
    "Mace",                 -- 3
    "Club",                 -- 4
    "Katana",               -- 5
    "Falchion",             -- 6
    "Scimitar",             -- 7
    "Long Sword",           -- 8
    "Short Sword",          -- 9
    "Ghost Wand",           -- 10
    "Grave Wand",           -- 11
    "Bone Wand",            -- 12
    "Wand",                 -- 13
    "Grimoire",             -- 14
    "Chronicle",            -- 15
    "Tome",                 -- 16
    "Book"                  -- 17
}

local CHEST_NAMES = {
    "Divine Robe",          -- 0
    "Silk Robe",            -- 1
    "Linen Robe",           -- 2
    "Robe",                 -- 3
    "Shirt",                -- 4
    "Demon Husk",           -- 5
    "Dragonskin Armor",     -- 6
    "Studded Leather Armor",-- 7
    "Hard Leather Armor",   -- 8
    "Leather Armor",        -- 9
    "Holy Chestplate",      -- 10
    "Ornate Chestplate",    -- 11
    "Plate Mail",           -- 12
    "Chain Mail",           -- 13
    "Ring Mail"             -- 14
}

local HEAD_NAMES = {
    "Ancient Helm",         -- 0
    "Ornate Helm",          -- 1
    "Great Helm",           -- 2
    "Full Helm",            -- 3
    "Helm",                 -- 4
    "Demon Crown",          -- 5
    "Dragon's Crown",       -- 6
    "War Cap",              -- 7
    "Leather Cap",          -- 8
    "Cap",                  -- 9
    "Crown",                -- 10
    "Divine Hood",          -- 11
    "Silk Hood",            -- 12
    "Linen Hood",           -- 13
    "Hood"                  -- 14
}

local WAIST_NAMES = {
    "Ornate Belt",          -- 0
    "War Belt",             -- 1
    "Plated Belt",          -- 2
    "Mesh Belt",            -- 3
    "Heavy Belt",           -- 4
    "Demonhide Belt",       -- 5
    "Dragonskin Belt",      -- 6
    "Studded Leather Belt", -- 7
    "Hard Leather Belt",    -- 8
    "Leather Belt",         -- 9
    "Brightsilk Sash",      -- 10
    "Silk Sash",            -- 11
    "Wool Sash",            -- 12
    "Linen Sash",           -- 13
    "Sash"                  -- 14
}

local FOOT_NAMES = {
    "Holy Greaves",         -- 0
    "Ornate Greaves",       -- 1
    "Greaves",              -- 2
    "Chain Boots",          -- 3
    "Heavy Boots",          -- 4
    "Demonhide Boots",      -- 5
    "Dragonskin Boots",     -- 6
    "Studded Leather Boots",-- 7
    "Hard Leather Boots",   -- 8
    "Leather Boots",        -- 9
    "Divine Slippers",      -- 10
    "Silk Slippers",        -- 11
    "Wool Shoes",           -- 12
    "Linen Shoes",          -- 13
    "Shoes"                 -- 14
}

local HAND_NAMES = {
    "Holy Gauntlets",       -- 0
    "Ornate Gauntlets",     -- 1
    "Gauntlets",            -- 2
    "Chain Gloves",         -- 3
    "Heavy Gloves",         -- 4
    "Demon's Hands",        -- 5
    "Dragonskin Gloves",    -- 6
    "Studded Leather Gloves",-- 7
    "Hard Leather Gloves",  -- 8
    "Leather Gloves",       -- 9
    "Divine Gloves",        -- 10
    "Silk Gloves",          -- 11
    "Wool Gloves",          -- 12
    "Linen Gloves",         -- 13
    "Gloves"                -- 14
}

local NECK_NAMES = {
    "Necklace",             -- 0
    "Amulet",               -- 1
    "Pendant"               -- 2
}

local RING_NAMES = {
    "Gold Ring",            -- 0
    "Silver Ring",          -- 1
    "Bronze Ring",          -- 2
    "Platinum Ring",        -- 3
    "Titanium Ring"         -- 4
}

local NAMES_PER_TYPE = {
	Weapon = WEAPON_NAMES,
	Chest = CHEST_NAMES,
	Head = HEAD_NAMES,
	Waist = WAIST_NAMES,
	Foot = FOOT_NAMES,
	Hand = HAND_NAMES,
	Neck = NECK_NAMES,
	Ring = RING_NAMES
}

local ORDERS = {
    "Power",             -- 1
    "Giants",            -- 2
    "Titans",            -- 3
    "Skill",             -- 4
    "Perfection",        -- 5
    "Brilliance",        -- 6
    "Enlightenment",     -- 7
    "Protection",        -- 8
    "Anger",             -- 9
    "Rage",              -- 10
    "Fury",              -- 11
    "Vitriol",           -- 12
    "the Fox",           -- 13
    "Detection",         -- 14
    "Reflection",        -- 15
    "the Twins"          -- 16
}

local PREFIXES = {
    "Agony",                -- 1
    "Apocalypse",           -- 2
    "Armageddon",           -- 3
    "Beast",                -- 4
    "Behemoth",             -- 5
    "Blight",               -- 6
    "Blood",                -- 7
    "Bramble",              -- 8
    "Brimstone",            -- 9
    "Brood",                -- 10
    "Carrion",              -- 11
    "Cataclysm",            -- 12
    "Chimeric",             -- 13
    "Corpse",               -- 14
    "Corruption",           -- 15
    "Damnation",            -- 16
    "Death",                -- 17
    "Demon",                -- 18
    "Dire",                 -- 19
    "Dragon",               -- 20
    "Dread",                -- 21
    "Doom",                 -- 22
    "Dusk",                 -- 23
    "Eagle",                -- 24
    "Empyrean",             -- 25
    "Fate",                 -- 26
    "Foe",                  -- 27
    "Gale",                 -- 28
    "Ghoul",                -- 29
    "Gloom",                -- 30
    "Glyph",                -- 31
    "Golem",                -- 32
    "Grim",                 -- 33
    "Hate",                 -- 34
    "Havoc",                -- 35
    "Honour",               -- 36
    "Horror",               -- 37
    "Hypnotic",             -- 38
    "Kraken",               -- 39
    "Loath",                -- 40
    "Maelstrom",            -- 41
    "Mind",                 -- 42
    "Miracle",              -- 43
    "Morbid",               -- 44
    "Oblivion",             -- 45
    "Onslaught",            -- 46
    "Pain",                 -- 47
    "Pandemonium",          -- 48
    "Phoenix",              -- 49
    "Plague",               -- 50
    "Rage",                 -- 51
    "Rapture",              -- 52
    "Rune",                 -- 53
    "Skull",                -- 54
    "Sol",                  -- 55
    "Soul",                 -- 56
    "Sorrow",               -- 57
    "Spirit",               -- 58
    "Storm",                -- 59
    "Tempest",              -- 60
    "Torment",              -- 61
    "Vengeance",            -- 62
    "Victory",              -- 63
    "Viper",                -- 64
    "Vortex",               -- 65
    "Woe",                  -- 66
    "Wrath",                -- 67
    "Light's",              -- 68
    "Shimmering"            -- 69
}

local SUFFIXES = {
    "Bane",                 -- 1
    "Root",                 -- 2
    "Bite",                 -- 3
    "Song",                 -- 4
    "Roar",                 -- 5
    "Grasp",                -- 6
    "Instrument",           -- 7
    "Glow",                 -- 8
    "Bender",               -- 9
    "Shadow",               -- 10
    "Whisper",              -- 11
    "Shout",                -- 12
    "Growl",                -- 13
    "Tear",                 -- 14
    "Peak",                 -- 15
    "Form",                 -- 16
    "Sun",                  -- 17
    "Moon"                  -- 18
}

local ITEM_NAME_SETS = {
	WEAPON_NAMES,
	CHEST_NAMES,
	HEAD_NAMES,
	WAIST_NAMES,
	FOOT_NAMES,
	HAND_NAMES,
	NECK_NAMES,
	RING_NAMES
}

local SVG_HEADER_len = string.len("data:application/json;base64,") + 1
local SVG_IMAGE_HEADER_len = string.len("data:image/svg+xml;base64,") + 1


function API.Parse(value)
	if type(value) == "string" then
		return ParseBag(value)
	
	elseif value:IsA("BlockchainToken") then
		return ParseFromToken(value)
	end
	error("LootBagParser failed to parse from value " .. tostring(value))
end

function API.Serialize(lootBag)
	return lootBag:Serialize()
end


function ParseFromToken(blockchainToken)
	local lootBag = {}
	
	lootBag.Serialize = SerializeBag
	
	lootBag.collection = blockchainToken.contractAddress
	lootBag.tokenId = blockchainToken.tokenId
	lootBag.items = ParseItemSVG(blockchainToken.rawMetadata)
	lootBag.class = InferCharacterClass(lootBag.items)
	
	return lootBag
end

function ParseItemSVG(tokenMetadata)
	local items = {}
	
	local dataB64 = string.sub(tokenMetadata, SVG_HEADER_len, string.len(tokenMetadata))
	local json = JSON.decode(BASE_64.decode(dataB64))
	dataB64 = string.sub(json.image, SVG_IMAGE_HEADER_len, string.len(json.image))
	local svgData = BASE_64.decode(dataB64)
	
	--print(svgData)
	
	local i = 0
	for fullName in svgData:gmatch("<text.->(.-)</text>") do
		i = i + 1
		if i > #ITEM_NAME_SETS then
			break
		end
		
		-- Bonus
		local itemName, bonus = CoreString.Split(fullName, {delimiters = {" +"}})
		if bonus then
			bonus = tonumber(bonus)
		end
		if bonus == nil then
			bonus = 0
		end
		
		-- Prefix/Suffix named item
		local prefix = nil
		local suffix = nil
		if string.sub(itemName, 1, 1) == '"' then
			local quoteEndIndex = string.find(itemName, '"', 2)
			local specialName = string.sub(itemName, 2, quoteEndIndex - 1)
			prefix, suffix = CoreString.Split(specialName, {delimiters = {" "}})
			itemName = string.sub(itemName, quoteEndIndex + 2, -1)
		end
		
		-- Order
		local order
		itemName, order = CoreString.Split(itemName, {delimiters = {" of "}})
		
		-- Greatness
		local greatness = 1
		if bonus > 0 then
			greatness = 20
			
		elseif prefix ~= nil then
			greatness = 19
			
		elseif order then
			greatness = 15
		end
		
		--print(fullName)
		--print(TYPES[i], prefix, suffix, itemName, order, bonus)
		
		-- Temp fix for the case of Lost items in Genesis collection
		local type = TYPES[i]
		itemName = FixLostName(itemName, NAMES_PER_TYPE[type])
		
		table.insert(items, {
			name = itemName,
			fullName = fullName,
			type = type,
			greatness = greatness,
			order = order,
			prefix = prefix,
			suffix = suffix,
			bonus = bonus,
			Parse = ParseItem,
			Serialize = SerializeItem
		})
	end
	return items
end


-- Convert string of compacted loot data into full Loot Bag object
function ParseBag(fromString)
	local splitValues = { CoreString.Split(fromString, {delimiters = {";"}}) }
	
	local lootBag = {}
	
	lootBag.collection = splitValues[1]
	lootBag.tokenId = splitValues[2]
	lootBag.items = {}
	
	for i = 3, #splitValues do
		local item = ParseItem(splitValues[i])
		table.insert(lootBag.items, item)
	end
	
	lootBag.class = InferCharacterClass(lootBag.items)
	
	return lootBag
end

-- Compact Loot Bag object into a string
function SerializeBag(lootBag)
	local serializedItems = {}
	for _,item in ipairs(lootBag.items) do
		table.insert(serializedItems, item:Serialize())
	end
	return 
		lootBag.collection ..";"..
		lootBag.tokenId ..";"..
		CoreString.Join(";", table.unpack(serializedItems))
end

-- Convert compacted string representation of an item into Item object
function ParseItem(fromString)
	local n, t, o, p, s, b = CoreString.Split(fromString, {delimiters = {","}})
	local fullName = n
	if o ~= "" then
		fullName = fullName .. " of " .. ValueAt(ORDERS, o)
	end
	if p ~= "" then
		fullName = "\"" .. ValueAt(PREFIXES, p) .." ".. ValueAt(SUFFIXES, s) .."\" ".. fullName
	end
	local bonus = tonumber(b)
	if bonus and bonus > 0 then
		fullName = fullName .." +".. b
	end
	return {
		name = n,
		fullName = fullName,
		type = ValueAt(TYPES, t),
		order = ValueAt(ORDERS, o),
		prefix = ValueAt(PREFIXES, p),
		suffix = ValueAt(SUFFIXES, s),
		bonus = bonus,
		Parse = ParseItem,
		Serialize = SerializeItem
	}
end

-- Compact Item object into a string
function SerializeItem(item)
	local values = {}
	
	table.insert(values, item.name)
	table.insert(values, IndexOf(TYPES, item.type))
	
	if item.order then
		table.insert(values, IndexOf(ORDERS, item.order))
	else
		table.insert(values, "")
	end
	
	if item.prefix then
		table.insert(values, IndexOf(PREFIXES, item.prefix))
		table.insert(values, IndexOf(SUFFIXES, item.suffix))
	else
		table.insert(values, "")
		table.insert(values, "")
	end
	
	table.insert(values, item.bonus)
	
	return CoreString.Join(",", table.unpack(values))
end


function InferCharacterClass(bagItems)
	for i,item in ipairs(bagItems) do
		if item.type == "Weapon" then
			for w,wName in ipairs(WEAPON_NAMES) do
				if wName == item.name then
					return WEAPON_CLASS[w]
				end
			end
			break
		end
	end
	return nil
end


function FixLostName(itemName, namesTable)
	if string.sub(itemName,1,4)=="Lost" then
		return namesTable[1]
	end
	return itemName
end


function IndexOf(tableOfValues, searchValue)
	for i,v in ipairs(tableOfValues) do
		if v == searchValue then
			return i
		end
	end
	return -1
end

function ValueAt(tableOfValues, indexOf)
	if type(indexOf) == "string" then
		indexOf = tonumber(indexOf)
	end
	if indexOf and indexOf >= 1 and indexOf <= #tableOfValues then
		return tableOfValues[indexOf]
	end
	return nil
end


return API

