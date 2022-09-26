local ABILITY_STUDY_GLOBAL = require(script:GetCustomProperty('AbilityStudy_Global'))
local returnCalls = ABILITY_STUDY_GLOBAL.returnCalls
local EquipAPI = _G['Character.EquipAPI']
local maxIncense = 10

local SantiseSelection = {
    '1',
    '2',
    '3',
    '4',
    'Shift'
}
local function CalcualteIncence(progression)
    local totalcount = 0
    for key, value in pairs(SantiseSelection) do
        local count = progression:GetProgressionKey('AbilitySlot' .. value) or 0
        totalcount = totalcount + count
        if totalcount > maxIncense then
            break
        end
    end

    return totalcount
end
local function CanStudy(character, incenseCost)
    --Search inventory for incense
    return true
end

local function ReadyToStudy(character, progression, index)
    if (progression:GetProgressionKey('AbilitySlot' .. index) or 0) > 3 then
        return false
    end
    local stats = character:GetComponent('Stats')
    local value = stats:GetStat('AbilitySlot' .. index)
    if value % 3 == 0 and value > 0 then
        return true
    end
    return false
end

local function ReturnCall(player, type, ...)
    Events.BroadcastToPlayer(player, 'Study.Ssent', type, ...)
end

local function WishToStudy(player, abilityIndex)
    if not SantiseSelection[abilityIndex] then
        ReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.PlayerNotFound)
        return
    end
    local character = EquipAPI.GetCurrentCharacter(player)
    local progression = character:GetComponent('Progression')
    local inventory = character:GetComponent('Inventory')
    local cost = CalcualteIncence(progression)

    if not (character and abilityIndex) then
        ReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.PlayerNotFound)
        return
    end
    if not CanStudy(character, cost) then
        ReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.NotEnoughItems)
        return
    end
    if not ReadyToStudy(character, progression) then
        ReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.NotEnoughLevel)
    end

    --- Remove Items from inventory

    local count = progression:GetProgressionKey('AbilitySlot' .. abilityIndex) or 0
    progression:SetProgression('AbilitySlot' .. abilityIndex, count + 1)
    ReturnCall(player, returnCalls.Success)
end

local function UpgradeReturnCall(player, type, ...)
    Events.BroadcastToPlayer(player, 'Ability.Ssent', type, ...)
end

local function CanUpgrade(stats, progression,points,abilityIndex)
    local progressAmount = progression:GetProgressionKey('AbilitySlot' .. abilityIndex) or 0
    local maxUpgrade = math.floor(progressAmount + 1) * 3
    local value = stats:GetStat(abilityIndex)
    return value < maxUpgrade
end

local function WishToUpgrade(player, abilityIndex)
    if not SantiseSelection[abilityIndex] then
        UpgradeReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.PlayerNotFound)
        return
    end
    local character = EquipAPI.GetCurrentCharacter(player)
    local stats = character:GetComponent('Stats')
    local points = character:GetComponent('Points')
    local progression = character:GetComponent('Progression')

    if not (character and abilityIndex) then
        UpgradeReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.PlayerNotFound)
        return
    end
    if not CanUpgrade(stats, progression,points ,abilityIndex) then
        UpgradeReturnCall(player, returnCalls.Error, ABILITY_STUDY_GLOBAL.errorCodes.NotEnoughItems)
        return
    end
    
    stats:SetStat(abilityIndex, stats:GetStat(abilityIndex) + 1)
end

Events.ConnectForPlayer('Study.Sreciever', WishToStudy)
Events.ConnectForPlayer('Ability.Sreciever', WishToUpgrade)
