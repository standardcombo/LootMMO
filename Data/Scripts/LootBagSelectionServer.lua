
local ASYNC_BLOCKCHAIN = require(script:GetCustomProperty("AsyncBlockchain"))
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))

local COLLECTION = LOOT_BAG_PARSER.Collection.Loot
local COLLECTION_SIZE = 7777
local FREE_CHOICE_AMOUNT = 5

-- Prepare random number generator. Seed is based on the date
local today = DateTime.CurrentTime()
local rngSeed = today.year * today.month * today.day
local rng = RandomStream.New(rngSeed)

local randomTokenIds

function InitDailyFreeBags()
	randomTokenIds = {}
	for i = 1,FREE_CHOICE_AMOUNT do
		local id = tostring(rng:GetInteger(1, COLLECTION_SIZE))
		table.insert(randomTokenIds, id)
	end
	local params = {
		tokenIds = randomTokenIds
	}
	ASYNC_BLOCKCHAIN.GetTokens(COLLECTION, params, OnTokensLoaded)
end

function OnTokensLoaded(freeChoiceTokens)
	print("\nFree choices for today:")
	for i,token in ipairs(freeChoiceTokens) do
		local lootBag = LOOT_BAG_PARSER.Parse(token)
		local serializedBag = lootBag:Serialize()
		
		local propertyKey = "DailyBag"..i
		script:SetCustomProperty(propertyKey, serializedBag)
		
		print("  "..serializedBag)
	end
	script:ForceReplication()
end

InitDailyFreeBags()

