--[[
    ItemSystems.Item
    ================

    Logical representation of an item.
]]
local Base64 = require(script:GetCustomProperty("Base64"))

local Item = {}
Item.__index = Item

---------------------------------------------------------------------------------------------------------
-- CONSTANTS
---------------------------------------------------------------------------------------------------------
local function Enum(values) for i,v in ipairs(values) do values[v] = i end return values end

Item.TYPES = Enum{
    "Armor",
    "Axe",
    "Boots",
    "Dagger",
    "Focus",
    "Greatsword",
    "Helmet",
    "Mace",
    "Shield",
    "Staff",
    "Sword",
    "Wand",
    "Warhammer",
    -- Special types.
    "Trinket",
    "NonEquippable",
    "CraftingRecipe",
}

Item.NONEQUIPPABLE_TYPES = Enum{
    "Material",
    "Currency",
    "Consumable",
    "Junk",
    "CraftingRecipe",
}

Item.STATS = Enum{
    "Health",
    "HealthPercent",
    "Attack",
    "Defense",
    "Magic",
    "CritChance",
    "CDR",
    "Haste",
    "Tenacity",
}

Item.RARITIES = Enum{
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
}

Item.SLOT_CONSTRAINTS = {
    Armor       = { slotType = "Chest" },
    Axe         = { slotType = "MainHand" },
    Boots       = { slotType = "Feet" },
    Dagger      = { slotType = "MainHand" },
    Greatsword  = { slotType = "MainHand", isTwoHanded = true },
    Focus       = { slotType = "OffHand" },
    Helmet      = { slotType = "Head" },
    Mace        = { slotType = "MainHand" },
    Shield      = { slotType = "OffHand" },
    Staff       = { slotType = "MainHand", isTwoHanded = true },
    Sword       = { slotType = "MainHand" },
    Trinket     = { slotType = "Accessory" },
    Warhammer   = { slotType = "MainHand", isTwoHanded = true },
    Wand        = { slotType = "MainHand" },
}

Item.SHARD_TYPE_QUANTITIES = {
    Armor       = 1,
    Axe         = 2,
    Boots       = 1,
    Dagger      = 2,
    Greatsword  = 3,
    Focus       = 1,
    Helmet      = 1,
    Mace        = 2,
    Shield      = 1,
    Staff       = 3,
    Sword       = 2,
    Trinket     = 2,
    Warhammer   = 3,
    Wand        = 2,
}

-- These are close to the geometric series 4^n, but are chosen to be prime numbers so that combinations look more "random".
Item.SHARD_RARITY_MULTIPLIERS = {
    Common      = 3,
    Uncommon    = 7,
    Rare        = 23,
    Epic        = 79,
    Legendary   = 248,
}

-- Enhancement cap.
Item.ENHANCEMENT_CAP = 10
Item.ENHANCEMENT_STAT_PERCENT_INCREASE = 10

-- Limit break caps by rarity.
Item.LIMIT_BREAK_CAPS = {
    Common    = 1,
    Uncommon  = 2,
    Rare      = 3,
    Epic      = 4,
    Legendary = 5,
}

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
function Item.New(itemData, stackSize, enhancementLevel, limitBreakLevel)
    local o = {}
    setmetatable(o, Item)
    o:_Init(itemData, stackSize, enhancementLevel, limitBreakLevel)
    return o
end

function Item.FromHash(database, itemHash)
    return Item._FromHash(database, itemHash)
end

function Item:RuntimeHash()
    return self:_IntoHash(true)
end

function Item:PersistentHash()
    return self:_IntoHash(false)
end

function Item:GetName()
    return self.data.name
end

function Item:GetCraftingRecipeSubName()
    assert(self.data.type == "CraftingRecipe")
    return self.data.name:match("^Recipe: (.+)$")
end

function Item:GetType()
    return self.data.type
end

function Item:GetRarity()
    return self.data.rarity
end

function Item:IsEquippable()
    return self.data.isEquippable
end

function Item:GetEquipSlotType()
    if self:IsEquippable() then
        return self.SLOT_CONSTRAINTS[self:GetType()].slotType
    end
end

function Item:IsTwoHanded()
    return self.SLOT_CONSTRAINTS[self:GetType()].isTwoHanded
end

---------------------------------------------------------------------------------------------------------------
-- Stackable API Methods
function Item:IsStackable()
    return self.data.maxStackSize ~= nil
end

function Item:GetStackSize()
    return self.stackSize
end

function Item:SetStackSize(stackSize)
    assert(self:IsStackable() and 1 <= stackSize and stackSize <= self:GetMaxStackSize())
    self.stackSize = stackSize // 1
end

function Item:GetMaxStackSize()
    return self.data.maxStackSize
end

function Item:IsFullStack()
    return self:GetStackSize() == self:GetMaxStackSize()
end

function Item:WillStackWith(otherItem)
    return otherItem and self:GetMUID() == otherItem:GetMUID() and self:IsStackable()
end

function Item:GetAvailableStackSpace()
    return self:GetMaxStackSize() - self:GetStackSize()
end

---------------------------------------------------------------------------------------------------------------
-- Enhancement API Methods
function Item:GetEnhancementLevel()
    return self.enhancementLevel
end

function Item:GetMaxEnhancementLevel()
    return self.ENHANCEMENT_CAP * self:GetLimitBreakLevel()
end

function Item:SetEnhancementLevel(enhancementLevel)
    assert(1 <= enhancementLevel and enhancementLevel <= self:GetMaxEnhancementLevel())
    self.enhancementLevel = enhancementLevel
    self:_RecalculateStatTotals()
end

function Item:IsFullyEnhanced()
    return self.enhancementLevel == self:GetMaxEnhancementLevel()
end

---------------------------------------------------------------------------------------------------------------
-- Limit-Break API Methods
function Item:GetLimitBreakLevel()
    return self.limitBreakLevel
end

function Item:GetMaxLimitBreakLevel()
    return self.LIMIT_BREAK_CAPS[self:GetRarity()]
end

function Item:SetLimitBreakLevel(limitBreakLevel)
    assert(1 <= limitBreakLevel and limitBreakLevel <= self:GetMaxLimitBreakLevel())
    self.limitBreakLevel = limitBreakLevel
end

function Item:IsFullyLimitBroken()
    return self.limitBreakLevel == self:GetMaxLimitBreakLevel()
end

---------------------------------------------------------------------------------------------------------------
-- Upgrade is a combination of enhancement and limit-break.
function Item:IsNextUpgradeEnhancement()
    return not self:IsFullyEnhanced()
end

function Item:IsNextUpgradeLimitBreak()
    return self:IsFullyEnhanced() and not self:IsFullyLimitBroken()
end

function Item:CanUpgrade()
    return self:HasStats() and not (self:IsFullyEnhanced() and self:IsFullyLimitBroken())
end

function Item:Upgrade()
    if self:IsNextUpgradeEnhancement() then
        self:SetEnhancementLevel(self:GetEnhancementLevel() + 1)
    elseif self:IsNextUpgradeLimitBreak() then
        self:SetLimitBreakLevel(self:GetLimitBreakLevel() + 1)
        self:SetEnhancementLevel(self:GetEnhancementLevel() + 1)
    end
    self:_RecalculateStatTotals()
end

---------------------------------------------------------------------------------------------------------------
function Item:ApplyIconImageSettings(uiImage, uiImageInterior)
    uiImage:SetImage(self.data.iconMUID)
    uiImage:SetColor(self.data.iconColorTint or Color.WHITE)
    uiImage.rotationAngle = self.data.iconRotation or 0
    -- Deal with interior icon as well.
    if uiImageInterior and self.data.interiorIconMUID then
        uiImageInterior:SetImage(self.data.interiorIconMUID)
        uiImageInterior:SetColor(self.data.interiorIconColorTint or Color.WHITE)
        uiImageInterior.rotationAngle = self.data.interiorIconRotationAngle or 0
    end
end

function Item:GetIndex()
    return self.data.index
end

function Item:GetMUID()
    return self.data.muid
end

function Item:GetAnimationStance()
    return self.data.animationStance
end

function Item:GetAbilityNames()
    return self.data.abilityNames
end

function Item:GetPassives()
    return self.data.passives
end

function Item:GetDescription()
    return self.data.description
end

function Item:HasStats()
    return self.hasStats
end

-- Returns a table of the item's base stats.
function Item:GetStatsBase()
    return self.stats
end

-- Returns a table of the item's enhanced stats.
function Item:GetStatsEnhanced()
    return self.statsEnhanced
end

-- Returns the effective total stat (accounting for summed affixes and enhancements).
function Item:GetStatTotal(statName)
    return self.statTotals[statName] or 0
end

function Item:Clone()
    local clone = Item.New(self.data, self:GetStackSize(), self:GetEnhancementLevel(), self:GetLimitBreakLevel())
    clone:CopyStats(self)
    return clone
end

function Item:CopyStats(other)
    self.stats = {}
    for i,stat in ipairs(other.stats) do
        self.stats[i] = { name = other.stats[i].name, value = other.stats[i].value, isBase = other.stats[i].isBase }
    end
    self:_RecalculateStatTotals()
end

function Item:RollStats()
    self.stats = self.data:_RollStats()
    self:_RecalculateStatTotals()
end

-- True if the item can be salvaged.
function Item:IsSalvageable()
    return self:GetSalvageQuantity() ~= nil
end

-- How much salvage is generated from this item.
function Item:GetSalvageQuantity()
    local quantity = self.SHARD_TYPE_QUANTITIES[self:GetType()] or 0
    local quantity = self.SHARD_RARITY_MULTIPLIERS[self:GetRarity()] * quantity
    return quantity > 0 and quantity or nil
end

function Item:HasConsumptionEffect()
    return self:GetType() == "Consumable" and self.data.consumptionEffect ~= nil
end

function Item:ApplyConsumptionEffect(player)
    assert(self:GetType() == "Consumable")
    if self.data.consumptionEffect then
        self.data.consumptionEffect(player)
    end
end

-- A highly subjective boolean assessment of an item's worth. Used as a criteria for which items require delete confirmation.
function Item:IsHighValue()
    -- Anything "Epic" or better is considered high-value.
    local rarityNumber = self.RARITIES[self:GetRarity()]
    local rarityCutoff = self.RARITIES["Epic"]
    if rarityNumber >= rarityCutoff then
        return true
    end
    -- Any stackable which is more than 50% complete is considered high-value.
    if self:IsStackable() and self:GetStackSize() >= (self:GetMaxStackSize() / 2) then
        return true
    end
end

function Item:GetCraftingRecipeData()
    return self.data.crafting
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
local HASH_RUNTIME = "R"
local HASH_PERSISTENT = "P"
local HASH_DELIM_INTRO = "|"
local HASH_DELIM_STAT_BASE = "#"
local HASH_DELIM_STAT_BONUS = "&"
local HASH_DELIM_STAT_EQUALS = "="
local HASH_PATTERN_FULL = "^(.*)|(.*)|(.*)|(.*)|(.*)$"
local HASH_PATTERN_STAT = "([#&])([^#&=]+)=(....)"

function Item._StatInfo(statInfo)
    assert(statInfo.name, "stat info missing name")
    assert(statInfo.value, "stat info missing value")
    assert(statInfo.isBase or statInfo.isBonus, "stat must be either base or bonus")
    return statInfo
end

function Item:_Init(itemData, stackSize, enhancementLevel, limitBreakLevel)
    self.data = itemData
    self.stackSize = stackSize or 1
    self.enhancementLevel = enhancementLevel or 1
    self.limitBreakLevel = limitBreakLevel or 1
    self.stats = {}
    self.statTotals = {}
end

function Item:_IntoHash(isRuntime)
    local hashParts = {}
    table.insert(hashParts, isRuntime and HASH_RUNTIME or HASH_PERSISTENT)
    table.insert(hashParts, isRuntime and Base64.Encode24(self.data.index) or self.data.muid)
    table.insert(hashParts, HASH_DELIM_INTRO)
    table.insert(hashParts, Base64.Encode12(self:GetStackSize()))
    table.insert(hashParts, HASH_DELIM_INTRO)
    table.insert(hashParts, Base64.Encode6(self:GetEnhancementLevel()))
    table.insert(hashParts, HASH_DELIM_INTRO)
    table.insert(hashParts, Base64.Encode6(self:GetLimitBreakLevel()))
    table.insert(hashParts, HASH_DELIM_INTRO)
    for _,stat in ipairs(self.stats) do
        local statIndex = self.STATS[stat.name]
        local statDelimiter = stat.isBase and HASH_DELIM_STAT_BASE or HASH_DELIM_STAT_BONUS
        local statKey = isRuntime and Base64.Encode6(statIndex) or stat.name
        local statValue = Base64.Encode24(stat.value)
        table.insert(hashParts, statDelimiter)
        table.insert(hashParts, statKey)
        table.insert(hashParts, HASH_DELIM_STAT_EQUALS)
        table.insert(hashParts, statValue)
    end
    return table.concat(hashParts)
end

function Item._FromHash(database, hash)
    local hashType = hash:sub(1, 1)
    local hashData = hash:sub(2)
    local isRuntime = hashType == HASH_RUNTIME
    local hashItemId, hashStackSize, hashEnhancementLevel, hashLimitBreakLevel, hashItemStats = hashData:match(HASH_PATTERN_FULL)
    local itemData = nil
    if isRuntime then
        itemData = database:FindItemDataByIndex(Base64.Decode24(hashItemId))
    else
        itemData = database:FindItemDataByMUID(hashItemId)
    end
    if not itemData then
        warn("unable to locate item data for hash: ", hashData)
        return
    end
    local stackSize = hashStackSize and Base64.Decode12(hashStackSize) or nil
    local enhancementLevel = hashEnhancementLevel and Base64.Decode6(hashEnhancementLevel) or nil
    local limitBreakLevel = hashLimitBreakLevel and Base64.Decode6(hashLimitBreakLevel) or nil
    local item = Item.New(itemData, stackSize, enhancementLevel, limitBreakLevel)
    for statDelimiter,statNameHash,statValueHash in hashItemStats:gmatch(HASH_PATTERN_STAT) do
        local statIsBase = statDelimiter == HASH_DELIM_STAT_BASE or nil
        local statName = isRuntime and Item.STATS[Base64.Decode6(statNameHash)] or statNameHash
        local statValue = Base64.Decode24(statValueHash)
        local statInfo = Item._StatInfo{ 
            name = statName,
            value = statValue,
            isBase = statIsBase or nil,
            isBonus = not statIsBase or nil,
        }
        table.insert(item.stats, statInfo)
    end
    item:_RecalculateStatTotals()
    return item
end

function Item:_RecalculateStatTotals()
    -- Clear old values.
    for _,statName in ipairs(Item.STATS) do
        self.statTotals[statName] = 0
    end
    -- First compute enhanced stats.
    local enhancementMultiplier = self:_GetEnhancementMultiplier()
    self.statsEnhanced = {}
    for i,stat in ipairs(self.stats) do
        self.statsEnhanced[i] = {
            name = stat.name,
            isBase = stat.isBase,
            value = math.floor(0.5 + stat.value * enhancementMultiplier),
        }
    end
    -- Sum stats to get stat totals (effective and base).
    self.hasStats = nil
    for i,stat in ipairs(self.statsEnhanced) do
        self.hasStats = true
        self.statTotals[stat.name] = self.statTotals[stat.name] + stat.value
    end
end

function Item:_GetEnhancementMultiplier()
    return 1 + (math.max(0, self:GetEnhancementLevel() - 1) * self.ENHANCEMENT_STAT_PERCENT_INCREASE / 100)
end

function Item:__tostring()
    local s = {}
    table.insert(s, "ITEM:\n")
    table.insert(s, string.format("\tname:        %s\n", self:GetName()))
    table.insert(s, string.format("\trarity:      %s\n", self:GetRarity()))
    table.insert(s, string.format("\tenhancement: %s\n", self:GetEnhancementLevel()))
    table.insert(s, string.format("\tlimitBreaks: %s\n", self:GetLimitBreakLevel()))
    for _,stat in ipairs(self.stats) do
        local statType = stat.isBase and "BASE" or "BONUS"
        table.insert(s, string.format("\tstat:   %-5s %-9s %d\n", statType, stat.name, stat.value))
    end
    table.insert(s, string.format("\thash-R: %s\n", self:RuntimeHash()))
    table.insert(s, string.format("\thash-P: %s\n", self:PersistentHash()))
    return table.concat(s)
end

---------------------------------------------------------------------------------------------------------
return Item