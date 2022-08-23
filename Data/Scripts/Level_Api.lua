local API = {}
_G['Loot.level'] = API
local LEVEL = require(script:GetCustomProperty('Level'))
local newKeys = {}
local levelKeys = {}
for index, value in ipairs(LEVEL) do
    table.insert(newKeys, CurveKey.New(value['XP'], index))
    table.insert(levelKeys, CurveKey.New(index, value['XP']))
end
local XPCURVE = SimpleCurve.New(newKeys)
local LEVELCURVE = SimpleCurve.New(levelKeys)
local ResourceKey = 'Loot.XP'
local LevelResourceKey = 'Loot.Level'


function API.GetLevelKey ()
    return LevelResourceKey
end 

function API.GetXPKey()
    return ResourceKey
end 

function API.GetLevel(player)
    local xp = API.GetXp(player)
    local level = math.floor(XPCURVE:GetValue(xp))
    return level or 1
end
function API.GetXpUntilNextLevel(player)
    local xp = API.GetXp(player)
    local level = math.floor(XPCURVE:GetValue(xp)) or 1
    local nextXp = LEVELCURVE:GetValue(level + 1)

    return math.floor(nextXp - xp)
end
function API.GetXp(player)
    if player and player.IsA and player:IsA('Player') then
        return player:GetResource(ResourceKey) or 0
    end
    return 0
end
function API.SetXP(player, XP)
    if Environment.IsClient() then
        error('Server Only Function')
        return
    end
    if player and player.IsA and player:IsA('Player') then
        player:SetResource(ResourceKey, XP)
        player:SetResource(LevelResourceKey, API.GetLevel(player))
    end
end
function API.AddXP(player, amountXP)
    if Environment.IsClient() then
        error('Server Only Function')
        return
    end
    if player and player.IsA and player:IsA('Player') then
        local newXP = API.GetXp(player)
        newXP = newXP + amountXP
        API.SetXP(player, newXP)
    end
end

return API
