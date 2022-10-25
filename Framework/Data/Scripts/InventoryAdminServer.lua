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

--[[
    This script will listen for chat commands from specific admin players. You can use commands to do most common
    Inventory actions like adding and removing items from players. Commands will fail gracefully if they cannot be done.

    Add Player ids to the "AdminIds" Custom Property to give them access to the commands. These should be comma
    separated.

    Commands must be entered in the following format:

        /inv command param=value param=value param=value

    The params can be added in any order, but /inv command must appear as the first two items in the space separated string.

    Valid commands are:
        - /inv help
        - /inv list [player]
        - /inv add [player, inv, slot, item, amount]
        - /inv remove [player, inv, slot, item, amount]
        - /inv clear [player, inv, slot, reset]
        - /inv inspect [player, inv]

    Valid params are:
        - player    - The Player name or id (Optional, defaults to yourself)
        - inv       - The Inventory id (Optional, defaults to first Inventory found)
        - slot      - The slot index (Varies by command)
        - item      - The item id (Varies by command)
        - amount    - The amount (Varies by command)
        - reset     - A boolean (Used for clear command)

    Examples:
        - /inv help                                                             - Writes instructions in chat to the admin
        - /inv list player=Booradley                                            - Lists all of Booradley's Inventory ids in chat to the admin
        - /inv add player=Booradley inv=Inventory2 slot=4 item=water amount=60  - Adds 60 water to Booradley in Inventory 2, slot 4
        - /inv add item=1 amount=5                                              - Adds 5 item id 1 to the admin in the first available Inventory and slot
        - /inv remove slot=2                                                    - Clears the second slot in the first available Inventory for the admin
        - /inv clear player=6a5a4cf446bd43e58f2219d529206490                    - Clears the first available Inventory for Booradley
        - /inv clear inv=hotbar reset=true                                      - Resets the hotbar Inventory for the admin to the starting items
        - /inv inspect inv=bag player=Booradley                                 - Writes the contents of Booradleys bag Inventory in chat to the admin
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))

local ADMIN_IDS = COMPONENT_ROOT:GetCustomProperty("AdminIds")
local ALERT_TARGET_PLAYER = COMPONENT_ROOT:GetCustomProperty("AlertTargetPlayer")

if ADMIN_IDS == "" then
    warn("Inventory Admin must have at least one Admin Id")
    return
end

-- Constants
local INVENTORY_COMMAND = "/inv"
local COMMAND_HELP = "help"
local COMMAND_LIST = "list"
local COMMAND_ADD = "add"
local COMMAND_REMOVE = "remove"
local COMMAND_CLEAR = "clear"
local COMMAND_INSPECT = "inspect"
local PARAM_PLAYER = "player"
local PARAM_INVENTORY = "inv"
local PARAM_SLOT = "slot"
local PARAM_ITEM = "item"
local PARAM_AMOUNT = "amount"
local PARAM_RESET = "reset"
local VALID_PARAMS = {
    PARAM_PLAYER,
    PARAM_INVENTORY,
    PARAM_SLOT,
    PARAM_ITEM,
    PARAM_AMOUNT,
    PARAM_RESET
}

-- Private Variables
local adminIds

function ListInventoriesCommand(admin, params)
    local header = string.format("Inventory: ids for player: %s", params[PARAM_PLAYER].name)
    print(header)
    Chat.BroadcastMessage(header, { players = admin })

    Task.Spawn(function()
        for inventoryId, _ in pairs(INVENTORY.GetInventories()) do
            if INVENTORY.IsInventoryLoaded(params[PARAM_PLAYER], inventoryId) then
                print(inventoryId)
                Chat.BroadcastMessage(inventoryId, { players = admin })
                Task.Wait(0.20)
            end
        end
    end)

    return true
end

function AddInventoryCommand(params)
    if not INVENTORY.AddToInventory(params[PARAM_PLAYER], params[PARAM_INVENTORY], INVENTORY.ItemType.Item, params[PARAM_ITEM], params[PARAM_AMOUNT], params[PARAM_SLOT]) then
        return false, "See logs for warnings or errors"
    end

    if ALERT_TARGET_PLAYER then
        Chat.BroadcastMessage("Item(s) have been added to your inventory by an admin", { players = params[PARAM_PLAYER] })
    end

    return true, GetResult(COMMAND_ADD, params)
end

function RemoveInventoryCommand(params)
    if not INVENTORY.RemoveFromInventory(params[PARAM_PLAYER], params[PARAM_INVENTORY], INVENTORY.ItemType.Item, params[PARAM_ITEM], params[PARAM_AMOUNT], params[PARAM_SLOT]) then
        return false, "See logs for warnings or errors"
    end

    if ALERT_TARGET_PLAYER then
        Chat.BroadcastMessage("Item(s) have been removed from your inventory by an admin", { players = params[PARAM_PLAYER] })
    end

    return true, GetResult(COMMAND_REMOVE, params)
end

function ClearInventoryCommand(params)
    if not INVENTORY.ClearInventory(params[PARAM_PLAYER], params[PARAM_INVENTORY], params[PARAM_RESET]) then
        return false, "See logs for warnings or errors"
    end

    if ALERT_TARGET_PLAYER then
        Chat.BroadcastMessage("Your inventory has been cleared by an admin", { players = params[PARAM_PLAYER] })
    end

    return true, GetResult(COMMAND_CLEAR, params)
end

function InspectInventoryCommand(admin, params)
    local success = false
    local error = ""
    local contents = {}
    local inventoryContents = INVENTORY.GetInventory(params[PARAM_PLAYER], params[PARAM_INVENTORY])
    local hasInventory = false

    if inventoryContents then
        for slotIndex, slotContent in pairs(inventoryContents) do
            if slotContent then
                table.insert(contents, string.format("Slot: %d - Item id: %s, Amount: %d", slotIndex, slotContent[INVENTORY.Keys.ItemId], slotContent[INVENTORY.Keys.Amount]))
                hasInventory = true
            end
        end

        if not hasInventory then
            table.insert(contents, "Empty Inventory")
        end

        local header = string.format("Inventory: %s contents for player: %s", params[PARAM_INVENTORY], params[PARAM_PLAYER].name)
        print(header)
        Chat.BroadcastMessage(header, { players = admin })

        Task.Spawn(function()
            for _, row in ipairs(contents) do
                print(row)
                Chat.BroadcastMessage(row, { players = admin })
                Task.Wait(0.20)
            end
        end)

        success = true
    else
        error = string.format("Could not find Inventory: %s", params[PARAM_INVENTORY])
    end

    return success, error
end

function GetResult(command, params)
    local slot = string.format("Slot: %d", params[PARAM_SLOT])
    if params[PARAM_SLOT] == 0 then
        slot = "first available slot(s)"
    end

    if command == COMMAND_ADD then
        return string.format("Added %s x%d to Inventory: %s in %s for Player: %s", params[PARAM_ITEM], params[PARAM_AMOUNT], params[PARAM_INVENTORY], slot, params[PARAM_PLAYER].name)
    elseif command == COMMAND_REMOVE then
        return string.format("Removed %s x%d from Inventory: %s from %s for Player: %s", params[PARAM_ITEM], params[PARAM_AMOUNT], params[PARAM_INVENTORY], slot, params[PARAM_PLAYER].name)
    elseif command == COMMAND_CLEAR then
        return string.format("Inventory: %s cleared for Player: %s", params[PARAM_INVENTORY], params[PARAM_PLAYER].name)
    end

    return ""
end

function DisplayHelp(admin)
    local message1 = [[Commands must be entered in the format:
/inv command param=value param=value param=value
    ]]
    local message2 = [[Valid commands are:
- /inv list [player]
- /inv add [player, inv, slot, item, amount]
- /inv remove [player, inv, slot, item, amount]
- /inv clear [player, inv, slot, reset]
- /inv inspect [player, inv]
    ]]
    local message3 = [[Valid params are:
- player (The Player name or id)
- inv (The Inventory id)
- slot (The slot number)
- item  (The item id)
- amount (The amount)
- reset (Boolean)
    ]]

    print(message1)
    print(message2)
    print(message3)

    Chat.BroadcastMessage(message1, { players = admin })
    Chat.BroadcastMessage(message2, { players = admin })
    Chat.BroadcastMessage(message3, { players = admin })
end

function ParseAdminCommand(speaker, params)
    -- Check if speaker is an admin
    if IsAdmin(speaker) then
        local message = params.message
        -- Check for Inventory command signature
        if string.sub(message, 1, #INVENTORY_COMMAND) == INVENTORY_COMMAND then
            -- Parse the command
            local commandType, commandParams = ParseCommandAndParams(speaker, message)

            -- Check and run the command type
            local success = false
            local result = ""

            if commandType == COMMAND_HELP then
                DisplayHelp(speaker)
                success = true
            elseif commandType == COMMAND_LIST then
                success, result = ListInventoriesCommand(speaker, commandParams)
            elseif commandType == COMMAND_ADD then
                success, result = AddInventoryCommand(commandParams)
            elseif commandType == COMMAND_REMOVE then
                success, result = RemoveInventoryCommand(commandParams)
            elseif commandType == COMMAND_CLEAR then
                success, result = ClearInventoryCommand(commandParams)
            elseif commandType == COMMAND_INSPECT then
                success, result = InspectInventoryCommand(speaker, commandParams)
            else
                result = "Invalid command"
            end

            if success then
                if result and result ~= "" then
                    Chat.BroadcastMessage(result, { players = speaker })
                end
            else
                Chat.BroadcastMessage(string.format("Command failed, type /inv help for detailed instructions. Error: %s", result), { players = speaker })
            end

            -- Stop command from showing up in chat
            params.message = ""
        end
    end
end

function ParseCommandAndParams(admin, message)
    -- Parse the message into chunks
    local paramChunks = { CoreString.Split(message, " ", { removeEmptyResults = true }) }

    -- Remove signature
    table.remove(paramChunks, 1)

    -- Get and remove the command type
    local commandType = table.remove(paramChunks, 1)

    -- Build key / value object
    local commandParams = {}
    for _, paramPair in ipairs(paramChunks) do
        local param, value = CoreString.Split(paramPair, "=")
        if IsValidParam(param) and value then
            commandParams[param] = ParseValue(admin, param, value)
        end
    end

    -- Default to the admin running the command
    if not commandParams[PARAM_PLAYER] then
        commandParams[PARAM_PLAYER] = admin
    end

    -- Default to first available Inventory
    if not commandParams[PARAM_INVENTORY] then
        commandParams[PARAM_INVENTORY] = GetFirstAvailableInventory()
    end

    -- Default to first available slot if needed (0 is treated this way)
    if not commandParams[PARAM_SLOT] then
        commandParams[PARAM_SLOT] = 0
    end

    -- Default reset to false
    if not commandParams[PARAM_RESET] then
        commandParams[PARAM_RESET] = false
    end

    if not commandParams[PARAM_ITEM] then
        -- If item is nil we are affecting the slot
        if commandParams[PARAM_SLOT] > 0 then
            local slotContent = INVENTORY.GetSlot(commandParams[PARAM_PLAYER], commandParams[PARAM_INVENTORY], commandParams[PARAM_SLOT])
            if slotContent then
                commandParams[PARAM_ITEM] = slotContent[INVENTORY.Keys.ItemId]
                -- if amount is nil then we are affecting the whole slot
                if not commandParams[PARAM_AMOUNT] then
                    commandParams[PARAM_AMOUNT] = slotContent[INVENTORY.Keys.Amount]
                end
            end
        end
    end

    -- Default to an amount of 1
    if not commandParams[PARAM_AMOUNT] then
        commandParams[PARAM_AMOUNT] = 1
    end

    return commandType, commandParams
end

function ParseValue(admin, param, value)
    if param == PARAM_PLAYER then
        -- Find a player by name or id
        local foundPlayer = false
        for _, player in ipairs(Game.GetPlayers()) do
            if string.lower(value) == string.lower(player.name) or string.lower(value) == string.lower(player.id) then
                value = player
                foundPlayer = true
                break
            end
        end

        -- Fall back to admin
        if not foundPlayer then
            warn("Invalid player, falling back to admin")
            value = admin
        end
    elseif param == PARAM_INVENTORY then
        if not INVENTORY.IsInventoryRegistered(value) then
            value = GetFirstAvailableInventory()
            if value then
                warn(string.format("Invalid Inventory id, falling back to first Inventory: %s", value))
            else
                warn("Invalid Inventory id, could not find any Inventory to fall back to")
            end
        end
    elseif param == PARAM_SLOT then
        value = tonumber(value)
        if not value or value < 1 then
            warn("Invalid slot, falling back to first available slot")
            value = 0
        end
    elseif param == PARAM_AMOUNT then
        value = tonumber(value)
        if not value or value < 1 then
            warn("Invalid amount, defaulting to 1")
            value = 1
        end
    elseif param == PARAM_RESET then
        value = string.lower(value) == "true" or value == "1"
    end

    return value
end

function GetFirstAvailableInventory()
    for inventoryId, _ in pairs(INVENTORY.GetInventories()) do
        return inventoryId
    end
    return nil
end

function IsValidParam(param)
    for _, validParam in ipairs(VALID_PARAMS) do
        if param == validParam then
            return true
        end
    end

    return false
end

function IsAdmin(player)
    for _, playerId in ipairs(adminIds) do
        if playerId == player.id then
            return true
        end
    end

    return false
end

adminIds = { CoreString.Split(ADMIN_IDS, ",", { removeEmptyResults = true }) }
for index, admin in ipairs(adminIds) do
    adminIds[index] = CoreString.Trim(admin)
end

Chat.receiveMessageHook:Connect(ParseAdminCommand)