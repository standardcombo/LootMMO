--[[
    ItemSystems.Database
    ====================

    Reads and indexes the raw data scripts. Provides factory methods for creating items.
]]
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local Item = require(script:GetCustomProperty("Item"))
local CraftingRecipeMethods = require(script:GetCustomProperty("CraftingRecipeMethods"))
local SALVAGE_ITEM_MUID = script:GetCustomProperty("SalvageItem"):match("(.+):")
local REFERENCE_GROUP = script:GetCustomProperty("ReferenceGroup"):WaitForObject()

local STARTER_ITEM_MUIDS = {
    script:GetCustomProperty("StarterItem1"):match("(.+):"),
    script:GetCustomProperty("StarterItem2"):match("(.+):"),
}

-- Load the database over a fixed number of frames.
local LOAD_FRAME_LIMIT = 10

local DATA_CATALOGS = {}
local DATA_STATS = {}
for _,itemType in ipairs(Item.TYPES) do
    local catalog = script:GetCustomProperty(string.format("%s_Catalog", itemType))
    local stats = script:GetCustomProperty(string.format("%s_Stats", itemType))
    if catalog then table.insert(DATA_CATALOGS, require(catalog)) end
    if stats then table.insert(DATA_STATS, require(stats)) end
end

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
local Database = {}

function Database:WaitUntilLoaded()
    while not self.isLoaded do
        Task.Wait()
    end
end

function Database:CreateStarterItems()
    local starterItems = {}
    for _,starterItemMUID in ipairs(STARTER_ITEM_MUIDS) do
        local starterItemData = self:FindItemDataByMUID(starterItemMUID)
        local item = Item.New(starterItemData)
        item:RollStats()
        table.insert(starterItems, item)
    end
    return starterItems
end

function Database:CreateItemSalvage()
    local salvageItemData = self:FindItemDataByMUID(SALVAGE_ITEM_MUID)
    return Item.New(salvageItemData)
end

function Database:CreateItemFromDrop(dropKey)
    local itemData, stackSize = self:_RollDrop(dropKey)
    local item = Item.New(itemData, stackSize)
    item:RollStats()
    return item
end

function Database:CreateItemFromData(itemData)
    return Item.New(itemData)
end

function Database:CreateItemFromHash(itemHash)
    return Item.FromHash(self, itemHash)
end

function Database:FindItemDataByIndex(itemIndex)
    return self.itemDatasByIndex[itemIndex]
end

function Database:FindItemDataByName(itemName)
    return self.itemDatasByName[itemName]
end

function Database:FindItemDataByMUID(itemMUID)
    return self.itemDatasByMUID[itemMUID]
end

function Database:GetCraftingRecipeItemDatas()
    return self.craftingRecipeItemDatas
end

function Database:RandomDropKey()
    return self.itemDropKeys[math.random(#self.itemDropKeys)]
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
function Database:_Init()
    Task.Spawn(function()
        self:_LoadStats()
        self:_LoadCatalog()
        self:_LoadDrops()
        self:_LoadAssetDerivedInformation()
        self.isLoaded = true
    end)
end

function Database:_LoadStats()
    self.itemStatRollInfos = {}
    for _,data in ipairs(DATA_STATS) do
        for _,row in ipairs(data) do
            assert(Item.STATS[row.Stat], string.format("unrecognized item stat %s", row.Stat))
            self.itemStatRollInfos[row.StatKey] = self.itemStatRollInfos[row.StatKey] or { base = {}, bonus = {} }
            local statRollInfos = self.itemStatRollInfos[row.StatKey]
            local rollInfo = { statName = row.Stat, rollMin = tonumber(row.Min), rollMax = tonumber(row.Max), likelihood = tonumber(row.Likelihood) }
            if row.Group == "Base" then
                table.insert(statRollInfos.base, rollInfo)
            else
                assert(rollInfo.likelihood, "bonus stat missing likelihood")
                statRollInfos.bonus[row.Group] = statRollInfos.bonus[row.Group] or { cumulativeLikelihood = 0 }
                local bonusGroup = statRollInfos.bonus[row.Group]
                bonusGroup.cumulativeLikelihood = bonusGroup.cumulativeLikelihood + rollInfo.likelihood
                table.insert(bonusGroup, rollInfo)
            end
        end
    end
end

function Database:_LoadCatalog()
    self.itemDatasByIndex = {}
    self.itemDatasByName = {}
    self.itemDatasByMUID = {}
    self.craftingRecipeItemDatas = {}
    local index = 1
    for _,data in ipairs(DATA_CATALOGS) do
        for _,row in ipairs(data) do
            assert(not self.itemDatasByName[row.Name], string.format("duplicate item name is not allowed - %s", row.Name))
            --assert(not self.itemDatasByMUID[row.MUID], string.format("duplicate item MUID is not allowed - %s", row.MUID))    This doesn't work since one has the name suffix
            assert(Item.TYPES[row.Type] or Item.NONEQUIPPABLE_TYPES[row.Type], string.format("unrecognized item type - %s", row.Type))
            assert(Item.RARITIES[row.Rarity], string.format("unrecognized item rarity - %s", row.Rarity))

            if row.StatKey then       -- No stats at all is valid
                assert(self.itemStatRollInfos[row.StatKey], string.format("unrecognized item stat key - %s", row.StatKey))
            end

            if row.StackSize then
                assert(tonumber(row.StackSize) <= 2^12, string.format("item stack size is too large - %s", row.Name))
            end

            local itemData = {
                index = index,
                name = row.Name,
                type = row.Type,
                rarity = row.Rarity,
                muid = row.MUID:match("^(.+):"), -- these MUIDs are used as keys; strip the irrelevant name part.
                description = row.Lore,
                isEquippable = Item.NONEQUIPPABLE_TYPES[row.Type] == nil,
                maxStackSize = tonumber(row.StackSize),
                _RollStats = function()
                    if not row.StatKey then
                        return {}
                    end
                    local difficultyMultiplier = API_DS.GetLootStatMultiplier()
                    local statRollInfos = self.itemStatRollInfos[row.StatKey]
                    local stats = {}
                    for _,rollInfo in ipairs(statRollInfos.base) do
                        local statInfo = Item._StatInfo{
                            name = rollInfo.statName,
                            value = math.random(math.ceil(rollInfo.rollMin * difficultyMultiplier), math.ceil(rollInfo.rollMax * difficultyMultiplier)),
                            isBase = true,
                        }
                        table.insert(stats, statInfo)
                    end
                    for _,bonusGroup in pairs(statRollInfos.bonus) do
                        local roll = math.random() * bonusGroup.cumulativeLikelihood
                        for _,rollInfo in ipairs(bonusGroup) do
                            if roll <= rollInfo.likelihood then
                                local statInfo = Item._StatInfo{
                                    name = rollInfo.statName,
                                    value = math.random(math.ceil(rollInfo.rollMin * difficultyMultiplier), math.ceil(rollInfo.rollMax * difficultyMultiplier)),
                                    isBonus = true
                                }
                                table.insert(stats, statInfo)
                                break
                            end
                            roll = roll - rollInfo.likelihood
                        end
                    end
                    return stats
                end
            }
            index = index + 1
            self.itemDatasByIndex[itemData.index] = itemData
            self.itemDatasByName[itemData.name] = itemData
            self.itemDatasByMUID[itemData.muid] = itemData

            -- Some items double as recipes and need to be treated as such.
            if itemData.type == "CraftingRecipe" then
                itemData.crafting = {
                    recipeBookPage = tonumber(row.RecipeBookPage),
                    method = row.Method,
                    yieldItemName = row.YieldItemName ~= "" and row.YieldItemName or nil,
                    ingredients = {
                        { name = row.IngredientName1, amount = tonumber(row.IngredientAmount1) },
                        { name = row.IngredientName2, amount = tonumber(row.IngredientAmount2) },
                        { name = row.IngredientName3, amount = tonumber(row.IngredientAmount3) },
                    }
                }
                table.insert(self.craftingRecipeItemDatas, itemData)
            end
        end
    end

    -- Ensure that after all catalog data is loaded, the expected salvage item is present.
    assert(self.itemDatasByMUID[SALVAGE_ITEM_MUID], string.format("salvage item missing from catalog, expected to find definition for \"%s\"", SALVAGE_ITEM_MUID))
    for _,starterItemMUID in ipairs(STARTER_ITEM_MUIDS) do
        assert(self.itemDatasByMUID[starterItemMUID], string.format("starter item missing from catalog, expected to find definition for \"%s\"", starterItemMUID))
    end

    -- Ensure that after all catalog data is loaded, all recipes reference valid items.
    local recipeBookPageCounts = {}
    for _,itemData in ipairs(self.craftingRecipeItemDatas) do
        -- Check for valid name.
        assert(itemData.name:match("^Recipe: (.+)$"), string.format("crafting recipe name must have format <Recipe: blahblahblah> -- %s", itemData.name))
        -- Check for valid method (and set it up).
        assert(itemData.crafting.method and CraftingRecipeMethods[itemData.crafting.method], string.format("crafting recipe has unrecognized method: %s", itemData.name))
        itemData.crafting.method = CraftingRecipeMethods[itemData.crafting.method]
        -- Check for valid page number.
        assert(itemData.crafting.recipeBookPage, string.format("crafting recipe missing RecipeBookPage: %s", itemData.name))
        recipeBookPageCounts[itemData.crafting.recipeBookPage] = recipeBookPageCounts[itemData.crafting.recipeBookPage] or 0
        recipeBookPageCounts[itemData.crafting.recipeBookPage] = recipeBookPageCounts[itemData.crafting.recipeBookPage] + 1
        assert(recipeBookPageCounts[itemData.crafting.recipeBookPage] <= 8, string.format("crafting recipe book page count limit (8) exceeded: %s", itemData.name))
        -- Check for valid item yield. Each yield must be either a meta-yield, or a valid item.
        if itemData.crafting.yieldItemName and not CraftingRecipeMethods.META_YIELD_ITEMS[itemData.crafting.yieldItemName] then
            assert(self:FindItemDataByName(itemData.crafting.yieldItemName), string.format("crafting recipe yield item not recognized: %s", itemData.name))
        end
        -- Check for valid ingredients. Each ingredient must be either a meta-ingredient, or a valid item.
        local nonEmptyIngredients = {}
        for i,ingredient in pairs(itemData.crafting.ingredients) do
            if ingredient.name ~= "" then
                if not CraftingRecipeMethods.META_INGREDIENTS[ingredient.name] then
                    local ingredientItemData = self:FindItemDataByName(ingredient.name)
                    assert(ingredientItemData, string.format("crafting recipe ingredient not found: %s in recipe %s", ingredient.name, itemData.name))
                    if ingredient.amount then
                        assert(ingredient.amount > 0, string.format("crafting recipe ingredient amount must be > 0: %s in recipe %s", ingredient.name, itemData.name))
                        assert(ingredientItemData.maxStackSize, string.format("crafting recipe cannot require amount of non-stackable item: %s in recipe %s", ingredient.name, itemData.name))
                    end
                    -- For convenience, we also stuff in an item because this is the easiest way for users of the recipe to work with it.
                    ingredient.item = Item.New(ingredientItemData)
                end
                table.insert(nonEmptyIngredients, ingredient)
            end
        end
        itemData.crafting.ingredients = nonEmptyIngredients
    end
    -- Also check that page numbers form a consecutive sequence starting at 1.
    local recipeBookPageNumbers = {}
    for recipeBookPage,_ in pairs(recipeBookPageCounts) do table.insert(recipeBookPageNumbers, recipeBookPage) end
    table.sort(recipeBookPageNumbers)
    for n,p in ipairs(recipeBookPageNumbers) do
        assert(recipeBookPageNumbers[n] == p, string.format("crafting recipe page numbers must form a consecutive sequence starting at 1. Page #%d is missing.", n))
    end

    -- Check that we have references to all objects
    local references = {}

    for _, muid in pairs(REFERENCE_GROUP:GetCustomProperties()) do
        references[muid:match("^(.+):")] = true
    end

    for muid, itemData in pairs(self.itemDatasByMUID) do
        assert(references[muid], string.format("Reference to object (%s | %s) missing", itemData.name, muid))
    end
end

function Database:_LoadDrops()
    local data = require(script:GetCustomProperty("Drops"))
    self.itemDropTables = {}
    self.itemDropKeys = {}
    for i,row in ipairs(data) do
        assert(row.ItemName, string.format("drop missing name at row %d", i))
        assert(self:FindItemDataByName(row.ItemName), string.format("drop references unknown item - %s", row.ItemName))
        assert(row.Likelihood, string.format("drop missing likelihood at row %d", i))
        if not self.itemDropTables[row.DropKey] then
            self.itemDropTables[row.DropKey] = { cumulativeLikelihood = 0 }
            table.insert(self.itemDropKeys, row.DropKey)
        end
        local dropTable = self.itemDropTables[row.DropKey]
        local dropInfo = {
            itemName = row.ItemName,
            likelihood = tonumber(row.Likelihood), 
            minStack = tonumber(row.MinStack),
            maxStack = tonumber(row.MaxStack)
        }
        table.insert(dropTable, dropInfo)
        dropTable.cumulativeLikelihood = dropTable.cumulativeLikelihood + dropInfo.likelihood
    end
end

function Database:_LoadAssetDerivedInformation()
    local itemCount = #self.itemDatasByIndex
    local itemsPerFrame = math.ceil(itemCount / LOAD_FRAME_LIMIT)
    for index,itemData in ipairs(self.itemDatasByIndex) do
        if index % itemsPerFrame == 0 then
            Task.Wait()
        end
        local tempObject = World.SpawnAsset(itemData.muid)
        itemData.iconMUID = tempObject:GetCustomProperty("Icon")
        assert(itemData.iconMUID, string.format("item template %s missing icon property", itemData.muid))
        itemData.iconRotation = tempObject:GetCustomProperty("IconRotation")
        itemData.iconColorTint = tempObject:GetCustomProperty("IconColorTint")
        itemData.interiorIconMUID = tempObject:GetCustomProperty("InteriorIcon")
        itemData.interiorIconRotation = tempObject:GetCustomProperty("InteriorIconRotation")
        itemData.interiorIconColorTint = tempObject:GetCustomProperty("InteriorIconColorTint")
        itemData.animationStance = tempObject:GetCustomProperty("AnimationStance")

        local consumptionEffectScript = tempObject:GetCustomProperty("ConsumptionEffectScript")
        if consumptionEffectScript then
            assert(itemData.type == "Consumable", string.format("cannot attach ConsumptionEffectScript to non-consumable item: %s", itemData.name))
            itemData.consumptionEffect = require(consumptionEffectScript)
        end
        
        itemData.abilityNames = {}
        itemData.passives = {}

        local i = 1
        local continue = true

        while continue do
            itemData.abilityNames[i], continue = tempObject:GetCustomProperty(string.format("AbilityName%d", i))
            i = i + 1
        end

        i = 1
        continue = true

        while continue do
            itemData.passives[i], continue = tempObject:GetCustomProperty(string.format("Passive%d", i))
            i = i + 1
        end

        tempObject:Destroy()
    end
end

function Database:_RollDrop(dropKey)
    local dropTable = self.itemDropTables[dropKey]
    if dropTable then
        local roll = math.random() * dropTable.cumulativeLikelihood
        for _,dropInfo in ipairs(dropTable) do
            if roll <= dropInfo.likelihood then
                local stackSize = 1
                if dropInfo.minStack and dropInfo.maxStack then
                    stackSize = math.random(dropInfo.minStack, dropInfo.maxStack)
                end
                return self:FindItemDataByName(dropInfo.itemName), stackSize
            end
            roll = roll - dropInfo.likelihood
        end
    end
end

function Database:__tostring()
    return ""
end

return Database