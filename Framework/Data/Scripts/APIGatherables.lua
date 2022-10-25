---@class APIGatherables
local API = {}

API.GATHERABLES_TAG = "GTH_"
API.EVENT_GATHERABLE_GATHERED = API.GATHERABLES_TAG .. "gathered"
API.EVENT_GATHERABLE_DESTROYED = API.GATHERABLES_TAG .. "destroyed"
API.EVENT_GATHERABLE_RESPAWNED = API.GATHERABLES_TAG .. "respawned"
API.EVENT_RESET_GATHERABLE_GROUP = API.GATHERABLES_TAG .. "reset"

local gatherableGroups = {}

function API.FindGatherableGroupId(coreObject)
    local groups = {}
    for id, gatherable in pairs(gatherableGroups) do
        local group = gatherable.GetState().group
        groups[group] = id
    end

    local o = coreObject
    while o ~= nil do
        if groups[o] then
            break
        end
        o = o.parent
    end
    if o==nil then return nil end
    return groups[o]
end

function API.FindGatherablesInReplicator(replicatorId)
    local result = {}
    for id, gatherable in pairs(gatherableGroups) do
        if gatherable.GetState().replicatorId == replicatorId then
            table.insert(result, id)
        end
    end
    return result
end

function API.FindGatherableIndex(id, coreObject)
    return gatherableGroups[id].FindGatherableIndex(coreObject)
end

function API.GetGatherableGroupState(id)
    if gatherableGroups[id] then
        return gatherableGroups[id].GetState()
    end
end

function API.GetGatherableAtIndex(id, index)
    return gatherableGroups[id].GetGatherableAtIndex(index)
end

function API.IsGatherable(coreObject)
    if API.FindGatherableGroupId(coreObject) then
        return true
    end
end

function API.DestroyGatherableAtIndex(player, id, index)
    return gatherableGroups[id].DestroyGatherableAtIndex(player, index)
end

function API.RegisterGatherableGroup(id, functionTable)
    gatherableGroups[id] = functionTable
end

function API.UnregisterGatherableGroup(id)
    gatherableGroups[id] = nil
end

return API