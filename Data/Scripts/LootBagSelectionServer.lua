local ASYNC_BLOCKCHAIN = require(script:GetCustomProperty('AsyncBlockchain'))
local LOOT_BAG_PARSER = require(script:GetCustomProperty('LootBagParser'))
local HARDCODED_FREE_BAGS = script:GetCustomProperty('HardcodedFreeBags')

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

    local extraSampleAmount = FREE_CHOICE_AMOUNT * 2
    if Environment.IsHostedGame() then
        extraSampleAmount = extraSampleAmount + FREE_CHOICE_AMOUNT
    end

    local mapping = {}
    for i = 1, extraSampleAmount do
        local id = tostring(rng:GetInteger(1, COLLECTION_SIZE))
        if not mapping[id] then -- Avoid duplicate
            mapping[id] = true
            table.insert(randomTokenIds, id)
        end
    end
    local params = {
        tokenIds = randomTokenIds,
        retries = 2
    }
    ASYNC_BLOCKCHAIN.GetTokens(COLLECTION, params, OnTokensLoaded)
end

function OnTokensLoaded(freeChoiceTokens)
    print('\nFree choices for today:')
    _G.SelectedLootbags = {}

    if #freeChoiceTokens == 0 then
        local hardcodedBags = require(HARDCODED_FREE_BAGS)
        for i, bagStr in ipairs(hardcodedBags) do
            local propertyKey = 'DailyBag' .. i
            script:SetCustomProperty(propertyKey, bagStr)
            _G.SelectedLootbags[i] = bagStr
        end
        script:ForceReplication()

        return --Exit
    end
    local counts =
        setmetatable(
        {},
        {
            __index = function()
                return 0
            end
        }
    )

    local totalCount = 0
    local classLimit = FREE_CHOICE_AMOUNT - 3

    for i, token in ipairs(freeChoiceTokens) do
        if i % 6 == 0 then
            Task.Wait() -- Avoid instruction limit error
        end
        local lootBag = LOOT_BAG_PARSER.Parse(token)

        if #freeChoiceTokens - i + 1 > FREE_CHOICE_AMOUNT - totalCount then
            if counts[lootBag.class] < classLimit then
                counts[lootBag.class] = counts[lootBag.class] + 1
                local serializedBag = lootBag:Serialize()

                totalCount = totalCount + 1

                local propertyKey = 'DailyBag' .. totalCount
                script:SetCustomProperty(propertyKey, serializedBag)
                _G.SelectedLootbags[i] = serializedBag
                print('  ' .. serializedBag)

                if totalCount >= FREE_CHOICE_AMOUNT then
                    break
                end
            end
        end
    end
    script:ForceReplication()
end

InitDailyFreeBags()
