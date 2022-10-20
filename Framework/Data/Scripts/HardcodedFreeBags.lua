
local PARSER = require(script:GetCustomProperty("LootBagParser"))

local COLLECTION = PARSER.Collection.Loot

function item(indexInBag, fullName)
	return ";"..PARSER.ParseItemByFullName(fullName, indexInBag):Serialize()
end

return {
	COLLECTION..";1155"
	..item(1, "Warhammer")
	..item(2, "Robe")
	..item(3, "Silk Hood")
	..item(4, "Studded Leather Belt")
	..item(5, "Heavy Boots")
	..item(6, "Hard Leather Gloves")
	..item(7, "Necklace")
	..item(8, "Gold Ring")
,
	COLLECTION..";7181"
	..item(1, "Scimitar")
	..item(2, "Demon Husk")
	..item(3, "Divine Hood")
	..item(4, "Heavy Belt")
	..item(5, "Studded Leather Boots")
	..item(6, "Wool Gloves")
	..item(7, "Pendant")
	..item(8, "Platinum Ring")
,
	COLLECTION..";6208"
	..item(1, "Book")
	..item(2, "Divine Robe")
	..item(3, "War Cap")
	..item(4, "Sash")
	..item(5, "Wool Shoes")
	..item(6, "Holy Gauntlets")
	..item(7, "Necklace")
	..item(8, "Bronze Ring")
}

