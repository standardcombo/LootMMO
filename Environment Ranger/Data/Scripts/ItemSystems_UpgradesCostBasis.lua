local Database = require(script:GetCustomProperty("Database"))
local ENHANCEMENT_CURRENCY_MUID = script:GetCustomProperty("EnhancementCurrency"):match("(.*):")
local LIMIT_BREAK_CURRENCY_MUID = script:GetCustomProperty("LimitBreakCurrency"):match("(.*):")

local ENHANCEMENT_BASE_COST = 3
local ENHANCEMENT_POWER_COST = 1.6
local LIMIT_BREAK_BASE_COST = 1

local mockItemEnhancement = nil
local mockItemLimitBreak = nil
local hasInitialized = nil
local function LazyInit()
    if hasInitialized then return end
    hasInitialized = true
    Database:WaitUntilLoaded()
    assert(ENHANCEMENT_CURRENCY_MUID)
    assert(LIMIT_BREAK_CURRENCY_MUID)
    local enhancementItemData = Database:FindItemDataByMUID(ENHANCEMENT_CURRENCY_MUID)
    local limitBreakItemData = Database:FindItemDataByMUID(LIMIT_BREAK_CURRENCY_MUID)
    assert(enhancementItemData, "Cannot find enhancement currency item.")
    assert(limitBreakItemData, "Cannot find limit break currency item.")
    mockItemEnhancement = Database:CreateItemFromData(enhancementItemData)
    mockItemLimitBreak = Database:CreateItemFromData(limitBreakItemData)
end

--------------------------------------------------------------------------------------------------------------
local UpgradesCostBasis = {}

-- Returns the cost item MUID and the price.
function UpgradesCostBasis.AppraiseItemUpgrade(item)
    if not item then return end
    LazyInit()

    -- USEFUL QUANTITIES FOR COMPUTING COST...
    -- Enhancement can be anything from 0-50.
    local enhancementNumber = item:GetEnhancementLevel()
    -- Limit break can be anything from 1-5.
    local limitBreakNumber = item:GetLimitBreakLevel()
    -- Rarity can be 1-5 (common, uncommon, rare, epic, legendary).
    local rarityNumber = item.RARITIES[item:GetRarity()]

    if item:IsNextUpgradeEnhancement() then

        -- Compute the cost to enhance an item by one.
        local cost = math.floor((ENHANCEMENT_BASE_COST * rarityNumber) + (rarityNumber+enhancementNumber)^ENHANCEMENT_POWER_COST) 
		
		if item:IsTwoHanded() then
			cost = cost*2
		end
        -- Return example cost item and cost.
        return mockItemEnhancement, math.floor(cost)

    elseif item:IsNextUpgradeLimitBreak() then

        -- Compute the cost to limit break an item to the next star-level.
        local cost = LIMIT_BREAK_BASE_COST * (rarityNumber-1 + limitBreakNumber)^2
		
		if item:IsTwoHanded() then
			cost = cost*2
		end
		
        -- Return example cost item and cost.
        return mockItemLimitBreak, math.floor(cost)

    end
end

return UpgradesCostBasis