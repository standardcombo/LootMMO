local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local StatSheet = {}
StatSheet.__index = StatSheet

---------------------------------------------------------------------------------------------------------
-- CONSTANTS
---------------------------------------------------------------------------------------------------------
local function Enum(values) for i,v in ipairs(values) do values[v] = i end return values end

StatSheet.STATS = Enum{
    "Health",
    "Defense",
    "Attack",
    "Magic",
    "Haste",
    "Tenacity",
    "CritChance",
    "CDR",
}

-- Calculate the base stat amounts at a given level.
StatSheet.STAT_CURVES = {}
for _,statName in ipairs(StatSheet.STATS) do
    local statBase      = script:GetCustomProperty("Base"..statName) or 0
    local statPerLevel  = script:GetCustomProperty("PerLevel"..statName) or 0
    StatSheet.STAT_CURVES[statName] = function(level)
        return statBase + statPerLevel * (level - 1)
    end
end

-- The maximum attainable level.
StatSheet.MAX_LEVEL = 15

-- Calculate the experience required to reach a given level.
-- (courtesy of OSRS: https://oldschool.runescape.wiki/w/Experience)
StatSheet.EXPERIENCE_CURVE = { [1] = 0 }
setmetatable(StatSheet.EXPERIENCE_CURVE, {
    __index = function(self, level)
        local sum = 0
        for x=1,level-1 do
            local levelCost = math.floor(x + 1200 * 2^(x/2))
            if x < 5 then
                levelCost = levelCost / 1.5
            end
            sum = sum + levelCost
        end
        self[level] = math.floor(0.25 * sum)
        return self[level]
    end
})

---------------------------------------------------------------------------------------------------------
-- PUBLIC
---------------------------------------------------------------------------------------------------------
function StatSheet.New()
    local self = {}
    setmetatable(self, StatSheet)
    self:_Init()
    return self
end

---------------------------------------------------------------------------------------------------------
function StatSheet:Update()
    self:_UpdateLevel()
    self:_UpdateStats()
end

---------------------------------------------------------------------------------------------------------
function StatSheet:GetExperience()
    return self.experience
end

function StatSheet:SetExperience(experience)
    self.experience = math.ceil(experience)
    self:Update()
end

function StatSheet:AddExperience(experience)
    self:SetExperience(self.experience + math.ceil(experience))
end

---------------------------------------------------------------------------------------------------------
function StatSheet:GetLevel()
    return self.level
end

function StatSheet:GetLevelProgress()
    if self.level == self.MAX_LEVEL then
        return 1.0
    else
        local prev, next = self:GetLevelExperienceInterval()
        return CoreMath.Clamp((self.experience - prev) / (next - prev))
    end
end

function StatSheet:GetLevelExperienceInterval()
    local prev = self.EXPERIENCE_CURVE[self.level]
    local next = self.EXPERIENCE_CURVE[math.min(self.level + 1, self.MAX_LEVEL)]
    return prev, next
end

function StatSheet:GetLevelExperienceRemaining()
    if not self:IsMaxLevel() then
        return self.EXPERIENCE_CURVE[self.level + 1] - self.experience
    end
end

function StatSheet:IsMaxLevel()
    return self.level == self.MAX_LEVEL
end

---------------------------------------------------------------------------------------------------------

function StatSheet:GetStatTotalValue(statName)
    return self.statTotals[statName]
end

function StatSheet:GetStatBaseValue(statName)
    return self.statBases[statName]
end

function StatSheet:IsStatBuffed(statName)
    return self.statHasUppers[statName]
end

function StatSheet:IsStatDebuffed(statName)
    return self.statHasDowners[statName]
end

function StatSheet:GetStatTotalModifierAdd(statName)
    return self.statTotalModifiersAdd[statName]
end

function StatSheet:GetStatTotalModifierMul(statName)
    return self.statTotalModifiersMul[statName] + 1.
end

function StatSheet:GetStatDynamicModifierAdd(statName)
    return self.statDynamicModifiersAdd[statName]
end

function StatSheet:GetStatDynamicModifierMul(statName)
    return self.statDynamicModifiersMul[statName] + 1.
end

---------------------------------------------------------------------------------------------------------
function StatSheet:NewStatModifierAdd(statName, addend, isStatic)
    local modifier = {
        statName    = statName,
        addend      = addend,
        isStatic    = isStatic,
    }
    self.statModifiersAdd[modifier] = true
    self:Update()
    return modifier
end

-- The isStatic flag is used to indicate sources of stats which are already
-- replicated across server/client by some other means. The primary example of this
-- is the inventory system, which handles its own replication and applies its own
-- modifiers already. We do not want to include these amounts in the replicated values
-- lest they be double-counted.
function StatSheet:NewStatModifierMul(statName, multiplier, isStatic)
    assert(multiplier >= 0)
    local modifier = {
        statName    = statName,
        multiplier  = multiplier,
        isStatic    = isStatic,
    }
    self.statModifiersMul[modifier] = true
    self:Update()
    return modifier
end

function StatSheet:RemoveStatModifier(modifier)
    self.statModifiersAdd[modifier] = nil
    self.statModifiersMul[modifier] = nil
    self:Update()
end

---------------------------------------------------------------------------------------------------------
-- PRIVATE
---------------------------------------------------------------------------------------------------------
function StatSheet:_Init()
    self.experience = 0
    self.level = 1
    self.statBases = {}
    self.statTotals = {}
    self.statTotalModifiersAdd = {}
    self.statTotalModifiersMul = {}
    self.statDynamicModifiersAdd = {}
    self.statDynamicModifiersMul = {}
    self.statModifiersAdd = {}
    self.statModifiersMul = {}
    self.statHasUppers = {}
    self.statHasDowners = {}
    self:Update()
end

function StatSheet:_UpdateLevel()
    if self.experience >= self.EXPERIENCE_CURVE[self.MAX_LEVEL] then
        self.level = self.MAX_LEVEL
        return
    end
    local oldLevel = self.level
    -- Bisect the experience curve to find the correct level.
    local lo = 1
    local hi = self.MAX_LEVEL
    while true do
        local mi = (lo + hi) // 2
        local isAboveLoCutoff = self.experience >= self.EXPERIENCE_CURVE[mi]
        local isBelowHiCutoff = self.experience <  self.EXPERIENCE_CURVE[mi+1]
        if isAboveLoCutoff and isBelowHiCutoff then
            self.level = mi
            break
        elseif not isAboveLoCutoff then
            hi = mi - 1
        elseif not isBelowHiCutoff then
            lo = mi + 1
        end
    end
    local newLevel = self.level
    if newLevel ~= oldLevel then
        API_RE.Broadcast("StatSheet_LevelChanged", self, newLevel, oldLevel)
    end
end

function StatSheet:_UpdateStats()
    -- Base.
    for _,statName in ipairs(self.STATS) do
        self.statBases[statName] = self.STAT_CURVES[statName](self.level)
        self.statTotalModifiersAdd[statName] = 0
        self.statTotalModifiersMul[statName] = 0
        self.statDynamicModifiersAdd[statName] = 0
        self.statDynamicModifiersMul[statName] = 0
        self.statHasUppers[statName] = nil
        self.statHasDowners[statName] = nil
    end
    -- Additive.
    for modifier,_ in pairs(self.statModifiersAdd) do
        -- All modifiers count towards the total.
        self.statTotalModifiersAdd[modifier.statName] = self.statTotalModifiersAdd[modifier.statName] + modifier.addend
        -- Non-static modifiers are included in the dynamic calculation.
        if not modifier.isStatic then
            self.statDynamicModifiersAdd[modifier.statName] = self.statDynamicModifiersAdd[modifier.statName] + modifier.addend
            self.statHasUppers[modifier.statName] = modifier.addend > 0 or self.statHasUppers[modifier.statName]
            self.statHasDowners[modifier.statName] = modifier.addend < 0 or self.statHasDowners[modifier.statName]
        end
    end
    -- Multiplicative.
    for modifier,_ in pairs(self.statModifiersMul) do
        -- Multiplicative modifers combine additively. This is semantically confusing, but conceptually what you would expect.
        local multiplierAsPercent = modifier.multiplier - 1.0
        -- All modifiers count towards the total.
        self.statTotalModifiersMul[modifier.statName] = self.statTotalModifiersMul[modifier.statName] + multiplierAsPercent
        -- Non-static modifiers are included in the dynamic calculation.
        if not modifier.isStatic then
            self.statDynamicModifiersMul[modifier.statName] = self.statDynamicModifiersMul[modifier.statName] + multiplierAsPercent
            self.statHasUppers[modifier.statName] = modifier.multiplier > 1 or self.statHasUppers[modifier.statName]
            self.statHasDowners[modifier.statName] = modifier.multiplier < 1 or self.statHasDowners[modifier.statName]
        end
    end
    -- Accumulate and truncate.
    for _,statName in ipairs(self.STATS) do
        self.statTotals[statName] = math.floor((self.statBases[statName] + self.statTotalModifiersAdd[statName]) * (1 + self.statTotalModifiersMul[statName]))
    end
end

function StatSheet:__tostring()
    local s = {}
    table.insert(s, "----------------------------------------------------------------")
    table.insert(s, "STAT SHEET:")
    for _,statName in ipairs(self.STATS) do
        table.insert(s, string.format("\t%-12s%-8d = (%-6d + %-6d) * %.3f",
            statName,
            self.statTotals[statName],
            self.statBases[statName],
            self.statTotalModifiersAdd[statName],
            self.statTotalModifiersMul[statName]
        ))
    end
    table.insert(s, "----------------------------------------------------------------")
    return table.concat(s, "\n")
end 

return StatSheet