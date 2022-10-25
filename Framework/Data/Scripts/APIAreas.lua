--[[
Copyright 2021 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

---@class APIAreas
local API = {}

API.TAG = "AR_"

-- These events can be used like: Events.Connect(APIAreas.Events.EventName, Handler)
API.Events = {
    PlayerAreaChanged = API.TAG .. "playerAreaChanged",
    AreaFinishedLoading = API.TAG .. "areaFinishedLoading",
    AreaFinishedUnloading = API.TAG .. "areaFinishedUnloading",
    PlayerFinishedLoadingArea = API.TAG .. "playerFinishedLoadingArea",
    TeleportToArea = API.TAG .. "teleportToArea"
}

-- Private Variables
local areas = {}
local assignableAreaGroups = {}

---Registers an Area.
---@param areaId string
---@param functionTable table
function API.RegisterArea(areaId, functionTable)
    areas[areaId] = functionTable
end

---Registers an assignable Area group.
---@param groupId string
---@param areaGroupKey string
---@param maxPlayers integer
function API.RegisterAssignableAreaGroup(groupId, areaGroupKey, maxPlayers)
    assignableAreaGroups[groupId] = {
        AreaGroupKey = areaGroupKey,
        MaxPlayers = maxPlayers
    }
end

---Returns all registered Areas.
---@return string[]
function API.GetAllAreas()
    local result = {}
    for id in pairs(areas) do
        table.insert(result, id)
    end
    return result
end

---Returns all Area ids under a specific Assignable Area Group.
---@param areaGroupKey string
---@return string[]
function API.GetAllAssignableAreas(areaGroupKey)
    local result = {}
    for areaId, area in pairs(areas) do
        if API.IsInAssignableAreaGroup(area.GetState().coreObject, areaGroupKey) then
            table.insert(result, areaId)
        end
    end
    return result
end

---Retuns an Area.
---@param areaId string
---@return table
function API.GetArea(areaId)
    return areas[areaId]
end

---Returns and Area Id for an Area that matches the provided name.
---@param name string
---@return string|nil
function API.FindAreaByName(name)
    for areaId, area in pairs(areas) do
        if area.GetState().name == name then
            return areaId
        end
    end
end

---Returns and Area Id for an Area that matches the provided assign key.
---@param assignKey string
---@return string|nil
function API.FindAreaByAssignKey(assignKey)
    for areaId, area in pairs(areas) do
        if area.GetState().assignKey == assignKey then
            return areaId
        end
    end
end

---Locates an Area by searching upward from the provided CoreObject and returns the Area Id if found.
---@param coreObject CoreObject
---@return string|nil
function API.FindAreaByAncestors(coreObject)
    while Object.IsValid(coreObject) do
        local areaId = coreObject.id
        if areas[areaId] then
            return areaId
        end
        coreObject = coreObject.parent
    end
end

---Returns the state of an Area.
---@param areaId string
---@return table|nil
function API.GetAreaState(areaId)
    if areas[areaId] == nil then
        return nil
    end
    return areas[areaId].GetState()
end

---Returns true if the Area is part of an assignable Areas group.
---@param coreObject CoreObject
---@param areaGroupKey string|nil
---@return boolean
function API.IsInAssignableAreaGroup(coreObject, areaGroupKey)
    while Object.IsValid(coreObject) do
        if assignableAreaGroups[coreObject.id] and (not areaGroupKey or areaGroupKey == assignableAreaGroups[coreObject.id].AreaGroupKey) then
            return true
        end
        coreObject = coreObject.parent
    end
    return false
end

---Returns true if the Player can be assigned to an Assignable Area with an optional area group key.
---@param areaId string
---@param areaGroupKey string
---@return boolean
function API.CanPlayerBeAssignedToArea(areaId, areaGroupKey)
    local areaState = API.GetAreaState(areaId)
    if areaState then
        local coreObject = areaState.coreObject
        while Object.IsValid(coreObject) do
            if assignableAreaGroups[coreObject.id] then
                if assignableAreaGroups[coreObject.id].MaxPlayers > 0 then
                    return (not areaGroupKey or assignableAreaGroups[coreObject.id].AreaGroupKey == areaGroupKey) and #API.GetPlayersInArea(areaId) < assignableAreaGroups[coreObject.id].MaxPlayers
                else
                    return not areaGroupKey or assignableAreaGroups[coreObject.id].AreaGroupKey == areaGroupKey
                end
            end
            coreObject = coreObject.parent
        end
    end
    return false
end

---Retuens the Area Id of the Area the Player is currently in.
---@param player Player
---@return string|nil
function API.GetPlayerArea(player)
    if Environment.IsServer() then
        return player.serverUserData.currentAreaId
    elseif Environment.IsClient() then
        return player.clientUserData.currentAreaId
    end
end

---Returns true if the Player is in the provided Area.
---@param player Player
---@param areaId string
---@return boolean
function API.IsPlayerInArea(player, areaId)
    if  API.GetPlayerArea(player) == areaId then
        return true
    else
        return false
    end
end

---Returns all Players in a specific Area.
---@param areaId string
---@return table
function API.GetPlayersInArea(areaId)
    local result = {}
    for _, player in ipairs(Game.GetPlayers()) do
        if API.IsPlayerInArea(player, areaId) then
            table.insert(result, player)
        end
    end
    return result
end

---Assigns a Player to a specific Area.
---@param player Player
---@param areaId string
function API.SendPlayerToArea(player, areaId)
    if Environment.IsServer() then
        local lastAreaId = player.serverUserData.currentAreaId
        if areaId ~= lastAreaId then
            API.LockPlayer(player)

            player.serverUserData.currentAreaId = areaId
            player.serverUserData.isLoading = true

            -- Unassign the area if it is now empty
            if lastAreaId and API.GetAreaState(lastAreaId).isAssignable then
                if #API.GetPlayersInArea(lastAreaId) == 0 then
                    areas[lastAreaId].Assign(nil)
                end
            end
        end

        Events.Broadcast(API.Events.PlayerAreaChanged, player, areaId, lastAreaId)
    else
        local lastAreaId = player.clientUserData.currentAreaId
        if areaId ~= lastAreaId then
            player.clientUserData.currentAreaId = areaId
            Events.Broadcast(API.Events.PlayerAreaChanged, player, areaId, lastAreaId)
        end
    end
end

---Allows a Player to move.
---@param player Player
function API.UnlockPlayer(player)
    player.isMovementEnabled = true
end

---Restricts Player mevement.
---@param player Player
function API.LockPlayer(player)
    player.isMovementEnabled = false
end

---Given a key, this function will either find an 'assignable' area that has the same key, or find an empty 'assignable'
---area and assign it to this key. Returns the Area Id if one is found or assigned.
---@param areaGroupKey string
---@param ignoreAreaId string|nil
---@param assignKey string|nil
---@return string|nil
function API.GetAndAssignArea(areaGroupKey, ignoreAreaId, assignKey)
    local foundAreaId = nil
    for _, areaId in ipairs(API.GetAllAreas()) do
        if areaId ~= ignoreAreaId then
            local areaState = API.GetAreaState(areaId)
            if areaState.isAssignable and API.CanPlayerBeAssignedToArea(areaId, areaGroupKey) then
                if not areaState.isAssigned and foundAreaId == nil then
                    foundAreaId = areaId
                end
                if areaState.isAssigned and areaState.assignKey == assignKey or areaGroupKey then
                    foundAreaId = areaId
                    break
                end
            end
        end
    end

    if foundAreaId then
        API.AssignArea(foundAreaId, assignKey or areaGroupKey)
        return foundAreaId
    end
end

---Assigns a key to an Area.
---@param areaId string
---@param assignKey string
function API.AssignArea(areaId, assignKey)
    local areaState = API.GetAreaState(areaId)
    if areaState and not areaState.isAssigned then
        areas[areaId].Assign(assignKey)
    end
end

return API