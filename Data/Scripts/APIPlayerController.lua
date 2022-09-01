local API = {}
local functions = nil

API.VALID_SOCKETS = {
    ["right_prop"] = 1,
    ["pelvis"] = 2,
    ["root"] = 3,
    ["head"] = 4,
}

-- Exluded input actions to ignore player idle
API.EXCLUDED_ACTIONS = {
    ["Look"] = true,
    ["Zoom"] = true,
    ["PushToTalk"] = true,
    ["Chat"] = true,
    ["SlotPicker"] = true,
    ["News"] = true,
    ["Menu"] = true,
    ["Interact"] = true,
}

API.DANCE_STANCES = {
    "unarmed_dance_basic",
    "unarmed_dance_party",
    "unarmed_dance_basic_side_to_side",
    "unarmed_dance_basic_arm_swing",
    "unarmed_dance_basic_head_bop"
}

API.DEFAULT_STANCE = "unarmed_stance"

function API.Register(functionTable)
    functions = functionTable
end

function API.IsRegistered()
    if not functions then
        return false
    end

    return true
end

function API.SetPlayerData(player, dataItemId)
    if functions then
        functions.SetPlayerData(player, dataItemId)
    end
end

function API.GetPlayerData(player)
    if functions then
        return functions.GetPlayerData(player)
    end

    return nil
end

-- Convenience function from GetPlayerData
function API.GetPlayerStanceId(player)
    if functions and functions.GetPlayerData(player) then
        return functions.GetPlayerData(player).stance
    end

    return nil
end

-- Convenience function from GetPlayerData
function API.GetPlayerAttachmentId(player, socket)
    if functions and functions.GetPlayerData(player) then
        return functions.GetPlayerData(player)[socket]
    end

    return nil
end

--#region Utility Functions

function API.IsValidAttachmentSocket(socket)
    return API.VALID_SOCKETS[socket]
end

---Returns a clean player data table
---@param player Player
---@param property string
---@return table
function API.ContructPlayerData(player, property)
    return {
        property = property,
        stance = "",
        ability = "",

        -- Note: add more socket table data here if more attachment sockets needed
        --       update ConstructPlayerDataString and DeconstructPlayerDataString functions to reflect the sockets
        right_prop = "",
        pelvis = "",
        root = "",
        head = ""
    }
end

---Creates a string of player data to use for saving on a networked property. Mainly used on server
---@param player Player
---@return string
function API.ConstructPlayerDataString(player, playerData)
    local dataString = ""
    if playerData then
        dataString = player.id

        dataString = dataString..","..playerData.stance
        dataString = dataString..","..playerData.ability

        dataString = dataString..","..playerData.right_prop
        dataString = dataString..","..playerData.pelvis
        dataString = dataString..","..playerData.root
        dataString = dataString..","..playerData.head
    end
    return dataString
end

---Creates a table of data item ID out of player data string
---@param dataString string
---@return table
function API.DeconstructPlayerDataString(dataString)
    if dataString == "" then return nil end

    local splitTable = {CoreString.Split(dataString, ",")}
    return {
        playerId = splitTable[1],

        stance = splitTable[2],
        ability = splitTable[3],

        -- The order of sockets is dtermined in ConstructPlayerDataString function
        right_prop = splitTable[4],
        pelvis = splitTable[5],
        root = splitTable[6],
        head = splitTable[7],
    }
end

--#endregion

return API