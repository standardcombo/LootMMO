local SHARED_STORAGE_REF = script:GetCustomProperty("SharedStorageRef")

local library = {}

function library.SetPlayerData(player, data)
    if SHARED_STORAGE_REF.referenceType == NetReferenceType.SHARED_PLAYER_STORAGE then
        Storage.SetSharedPlayerData(SHARED_STORAGE_REF, player, data)
    end
    Storage.SetPlayerData(player, data)
end

function library.GetPlayerData(player)
    if SHARED_STORAGE_REF.referenceType == NetReferenceType.SHARED_PLAYER_STORAGE then
        local sharedPlayerData = Storage.GetSharedPlayerData(SHARED_STORAGE_REF, player)

        if Storage.SizeOfData(sharedPlayerData) > 0 then
            return sharedPlayerData
        end
    end
    return Storage.GetPlayerData(player)
end

return library