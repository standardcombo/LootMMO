local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
    setmetatable(
    {
        eventElements = {
            'levelUpEvent',
            'xpChangedEvent'
        }
    },
    {__index = COMPONET_DATATYPE}
)
component.id = 'Level'
component.xp = 0
component.level = 1
component.lastLevel = 1
local LevelCurve = _G['Loot.level']
local LEVEL = LevelCurve.GetTable()
local XPCURVE = LevelCurve.GetXpCurve()
local LEVELCURVE = LevelCurve.GetLevelCurve()
local ResourceKey = 'Loot.XP'
local LevelResourceKey = 'Loot.Level'

function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end

function component:GetLevelKey()
    return LevelResourceKey
end

function component:GetXPKey()
    return ResourceKey
end
function component:GetMaxLevel()
    return #LEVEL
end
function component:GetLevel()
    local xp = self:GetXP()
    local level = math.floor(XPCURVE:GetValue(xp))
    return level or 1
end
function component:GetXPForNextLevel()
    local level = self:GetLevel()
    return LEVELCURVE:GetValue(level + 1)
end
function component:GetXPUntilNextLevel()
    local xp = self:GetXP()
    local level = self:GetLevel()
    local nextXp = LEVELCURVE:GetValue(level + 1)
    return math.floor(nextXp - xp)
end
function component:GetXPInLevel()
    local xp = self:GetXP()
    local level = self:GetLevel()
    local nextXp = LEVELCURVE:GetValue(level)
    return math.floor(xp - nextXp)
end
function component:GetXP()
    return self.xp
end
function component:SetXP(XP)
    if self.xp == XP then
        return
    end
    self.xp = XP
    TriggerEvent(self.xpChangedEvent, self, self.xp)
    self.level = self:GetLevel()
    if self.level > self.lastLevel then
        TriggerEvent(self.levelUpEvent, self, self.level)
    end
    self.lastLevel = self.level
end
function component:AddXP(amountXP)
    local newXP = self:GetXP()
    newXP = math.min(newXP + amountXP, LEVELCURVE:GetValue(self:GetMaxLevel()))
    self:SetXP(newXP)
end
function component:Serialize()
    local data = {}
    data.xp = self.xp
    data.level = self.level
    data.lastLevel = self.lastLevel
    return data
end

function component:Deserialize(data)
    self.lastLevel = data.lastLevel
    self:SetXP(data.xp)
end
return component
