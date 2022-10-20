--[[
	Translated from Solidity to Lua by standardcombo.

 *Submitted for verification at Etherscan.io on 2021-08-30
*/

// SPDX-License-Identifier: Unlicense

/*

    LootComponents.sol
    
    This is a utility contract to make it easier for other
    contracts to work with Loot properties.
    
    Call weaponComponents(), chestComponents(), etc. to get 
    an array of attributes that correspond to the item. 
    
    The return format is:
    
    uint256[5] =>
        [0] = Item ID
        [1] = Suffix ID (0 for none)
        [2] = Name Prefix ID (0 for none)
        [3] = Name Suffix ID (0 for none)
        [4] = Augmentation (0 = false, 1 = true)
    
    See the item and attribute tables below for corresponding IDs.

--]]

--pragma solidity ^0.8.4;

local KECCAK = require( script:GetCustomProperty("keccak") )

--contract LootComponents {

local weapons = {
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

local chestArmor = {
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

local headArmor = {
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

local waistArmor = {
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

local footArmor = {
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

local handArmor = {
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

local necklaces = {
    "Necklace",             -- 0
    "Amulet",               -- 1
    "Pendant"               -- 2
}

local rings = {
    "Gold Ring",            -- 0
    "Silver Ring",          -- 1
    "Bronze Ring",          -- 2
    "Platinum Ring",        -- 3
    "Titanium Ring"         -- 4
}

local suffixes = {
    "",          -- 0
    "of Power",             -- 1
    "of Giants",            -- 2
    "of Titans",            -- 3
    "of Skill",             -- 4
    "of Perfection",        -- 5
    "of Brilliance",        -- 6
    "of Enlightenment",     -- 7
    "of Protection",        -- 8
    "of Anger",             -- 9
    "of Rage",              -- 10
    "of Fury",              -- 11
    "of Vitriol",           -- 12
    "of the Fox",           -- 13
    "of Detection",         -- 14
    "of Reflection",        -- 15
    "of the Twins"          -- 16
}

local namePrefixes = {
    "",           -- 0
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

local nameSuffixes = {
    "",            -- 0
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

function generateLoot(tokenId)
	return {
		weaponComponents(tokenId),
		chestComponents(tokenId),
		headComponents(tokenId),
		waistComponents(tokenId),
		footComponents(tokenId),
		handComponents(tokenId),
		neckComponents(tokenId),
		ringComponents(tokenId),
	}
end

function random(inputStr)
    --return KECCAK.sha256(abi.encodePacked(inputStr))
    --return KECCAK.sha256(inputStr)
    local sha = KECCAK.sha256(inputStr)
    local val = 0
    for i = string.len(sha) - 7, string.len(sha) do
    	val = val * 256 + string.byte(sha, i)
    end
    return val
end

function weaponComponents(tokenId)
    return pluck(tokenId, "WEAPON", weapons)
end

function chestComponents(tokenId)
    return pluck(tokenId, "CHEST", chestArmor)
end

function headComponents(tokenId)
    return pluck(tokenId, "HEAD", headArmor)
end

function waistComponents(tokenId)
    return pluck(tokenId, "WAIST", waistArmor)
end

function footComponents(tokenId)
    return pluck(tokenId, "FOOT", footArmor)
end

function handComponents(tokenId)
    return pluck(tokenId, "HAND", handArmor)
end

function neckComponents(tokenId)
    return pluck(tokenId, "NECK", necklaces)
end

function ringComponents(tokenId)
    return pluck(tokenId, "RING", rings)
end

function pluck(tokenId, keyPrefix, sourceArray) --internal view returns (uint256[5] memory) {
    local components = {}
    
    --local rand = random(abi.encodePacked(keyPrefix, tostring(tokenId)))
    local rand = random(keyPrefix .. tostring(tokenId))
    
    components[1] = rand % #sourceArray + 1
    components[2] = 0
    components[3] = 0
    components[4] = 0
    
    --components.id = sourceArray[components[1]]
    
    local greatness = rand % 21
    if greatness > 14 then
        components[2] = (rand % #suffixes) + 1
    end
    if greatness >= 19 then
        components[3] = (rand % #namePrefixes) + 1
        components[4] = (rand % #nameSuffixes) + 1
        if greatness == 19 then
            -- ...
        else
            components[5] = 1
        end
    end
    
    --components.displayName = getDisplayName(components, sourceArray)
    
    return components
end


function parseItemFromString(itemName, sourceArray)
	itemName = CoreString.Trim(itemName)
	
	--print("itemName = '" .. itemName .. "'")
	
	local components = {0, 0, 0, 0, 0}
		
	local words = { CoreString.Split(itemName, " ") }
	
	-- +1 at end
	if words[#words] == "+1" then
		components[5] = 1
		table.remove(words, #words)
	end
	
	-- Order "of" suffix
	local ofIndex = nil
	for i,w in ipairs(words) do
		if w == "of" then
			ofIndex = i
			break
		end
	end
	if ofIndex then
		local ofSuffix = words[#words]
		table.remove(words, #words)
		while #words >= ofIndex do
			ofSuffix = words[#words] .. " " .. ofSuffix
			table.remove(words, #words)
		end
		
		for i,suf in ipairs(suffixes) do
			if suf == ofSuffix then
				components[2] = i
				break
			end
		end
	end
	
	-- "Name" prefix and suffix
	if #words >= 3 then
		local prefix = words[1]
		local suffix = words[2]
		local foundP = nil
		local foundS = nil
		for i,pre in ipairs(namePrefixes) do
			if pre == prefix then
				foundP = i
				
				for j,suf in ipairs(nameSuffixes) do
					if suf == suffix then
						foundS = j
						break
					end
				end
				break
			end
		end
		
		if foundP and foundS then
			components[3] = foundP
			components[4] = foundS
			
			table.remove(words, 1)
			table.remove(words, 1)
		end
	end
	
	-- Reconstruct what's left of the words list
	itemName = CoreString.Join(" ", table.unpack(words))
	
	-- Primary item name
	for i,entry in ipairs(sourceArray) do
		if entry == itemName then
			components[1] = i
			components.id = entry
			break
		end
	end
	
	--print("itemName = '" .. itemName .. "'")
	
	components.displayName = getDisplayName(components, sourceArray)
	
	return components
end

function parseWeapon(itemName)
	return parseItemFromString(itemName, weapons)
end

function parseChest(itemName)
	return parseItemFromString(itemName, chestArmor)
end

function parseHead(itemName)
	return parseItemFromString(itemName, headArmor)
end

function parseWaist(itemName)
	return parseItemFromString(itemName, waistArmor)
end

function parseFoot(itemName)
	return parseItemFromString(itemName, footArmor)
end

function parseHand(itemName)
	return parseItemFromString(itemName, handArmor)
end

function parseNeck(itemName)
	return parseItemFromString(itemName, necklaces)
end

function parseRing(itemName)
	return parseItemFromString(itemName, rings)
end


function getId(components, sourceArray)
	for i,entry in ipairs(sourceArray) do
		if components[1] == i then
			return entry
		end
	end
	return nil
end

function getWeaponId(components)
	return getId(components, weapons)
end

function getChestId(components)
	return getId(components, chestArmor)
end

function getHeadId(components)
	return getId(components, headArmor)
end

function getWaistId(components)
	return getId(components, waistArmor)
end

function getFootId(components)
	return getId(components, footArmor)
end

function getHandId(components)
	return getId(components, handArmor)
end

function getNeckId(components)
	return getId(components, necklaces)
end

function getRingId(components)
	return getId(components, rings)
end


function getDisplayName(components, sourceArray)
	--print("components[1] = " .. components[1])
	local name = sourceArray[components[1]]
	if components[2] > 0 then
		name = name .. " " .. suffixes[components[2]]
	end
	if components[3] > 0 then
		name = '"' .. namePrefixes[components[3]] .." " .. nameSuffixes[components[4]] .. '" ' .. name
		
		if components[5] and components[5] > 0 then
			name = name .. " +" .. components[5]
		end
	end
	return name
end

function getWeaponDisplayName(components)
	return getDisplayName(components, weapons)
end

function getChestDisplayName(components)
	return getDisplayName(components, chestArmor)
end

function getHeadDisplayName(components)
	return getDisplayName(components, headArmor)
end

function getWaistDisplayName(components)
	return getDisplayName(components, waistArmor)
end

function getFootDisplayName(components)
	return getDisplayName(components, footArmor)
end

function getHandDisplayName(components)
	return getDisplayName(components, handArmor)
end

function getNeckDisplayName(components)
	return getDisplayName(components, necklaces)
end

function getRingDisplayName(components)
	return getDisplayName(components, rings)
end


--[[function toString(uint256 value) internal pure returns (string memory) {
    // Inspired by OraclizeAPI's implementation - MIT license
    // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

    if (value == 0) {
        return "0";
    }
    uint256 temp = value;
    uint256 digits;
    while (temp != 0) {
        digits++;
        temp /= 10;
    }
    bytes memory buffer = new bytes(digits);
    while (value != 0) {
        digits -= 1;
        buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
        value /= 10;
    }
    return string(buffer);
}--]]

return {
	Generate = generateLoot,
	ParseWeaponFromString = parseWeapon,
	ParseChestFromString = parseChest,
	ParseHeadFromString = parseHead,
	ParseWaistFromString = parseWaist,
	ParseFootFromString = parseFoot,
	ParseHandFromString = parseHand,
	ParseNeckFromString = parseNeck,
	ParseRingFromString = parseRing,
	GetWeaponId = getWeaponId,
	GetChestId = getChestId,
	GetHeadId = getHeadId,
	GetWaistId = getWaistId,
	GetFootId = getFootId,
	GetHandId = getHandId,
	GetNeckId = getNeckId,
	GetRingId = getRingId,
	GetWeaponDisplayName = getWeaponDisplayName,
	GetChestDisplayName = getChestDisplayName,
	GetHeadDisplayName = getHeadDisplayName,
	GetWaistDisplayName = getWaistDisplayName,
	GetFootDisplayName = getFootDisplayName,
	GetHandDisplayName = getHandDisplayName,
	GetNeckDisplayName = getNeckDisplayName,
	GetRingDisplayName = getRingDisplayName
}

