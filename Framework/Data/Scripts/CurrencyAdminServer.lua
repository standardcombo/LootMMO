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
    Currency actions like adding and removing currency amounts from players. Commands will fail gracefully if they
    cannot be done.

    Add Player ids to the "AdminIds" Custom Property to give them access to the commands. These should be comma
    separated.

    Commands must be entered in the following format:

        /cur command param=value param=value param=value

    The params can be added in any order, but /inv command must appear as the first two items in the space separated string.

    Valid commands are:
        - /cur help
        - /cur list [player]
        - /cur add [player, cur, amount]
        - /cur remove [player, cur, amount]
        - /cur clear [player, cur, reset]

    Valid params are:
        - player    - The Player name or id (Optional, defaults to yourself)
        - cur       - The Currency id (Optional, defaults to first Currency found)
        - amount    - The amount (Varies by command)
        - reset     - A boolean (Used for clear command)

    Examples:
        - /cur help                                             - Writes instructions in chat to the admin
        - /cur list player=Booradley                            - Lists all of Booradley's Currency ids and amounts in chat to the admin
        - /cur add player=Booradley cur=coins amount=60         - Gives 60 coins to Booradley
        - /cur add amount=5                                     - Gives 5 of the first available Currency to the admin
        - /cur remove                                           - Clears the first available Currency for the admin
        - /cur clear player=6a5a4cf446bd43e58f2219d529206490    - Clears the first available Currency for Booradley
        - /cur clear cure=coins reset=true                      - Clears the coins Currency for the admin and resets it to the starting amount
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))

local ADMIN_IDS = COMPONENT_ROOT:GetCustomProperty("AdminIds")
local ALERT_TARGET_PLAYER = COMPONENT_ROOT:GetCustomProperty("AlertTargetPlayer")

if ADMIN_IDS == "" then
    warn("Currency Admin must have at least one Admin Id")
    return
end

-- Constants
local CURRENCY_COMMAND = "/cur"
local COMMAND_HELP = "help"
local COMMAND_LIST = "list"
local COMMAND_ADD = "add"
local COMMAND_REMOVE = "remove"
local COMMAND_CLEAR = "clear"
local PARAM_PLAYER = "player"
local PARAM_CURRENCY = "cur"
local PARAM_AMOUNT = "amount"
local PARAM_RESET = "reset"
local VALID_PARAMS = {
    PARAM_PLAYER,
    PARAM_CURRENCY,
    PARAM_AMOUNT,
    PARAM_RESET
}

-- Private Variables
local adminIds

function ListCurrenciesCommand(admin, params)
    local header = string.format("Currency: data for player: %s", params[PARAM_PLAYER].name)
    print(header)
    Chat.BroadcastMessage(header, { players = admin })

    Task.Spawn(function()
        for currencyId, amount in pairs(CURRENCY.GetCurrencies()) do
            if CURRENCY.IsCurrencyLoaded(params[PARAM_PLAYER], currencyId) then
                local message = string.format("Currency: %s = %d", currencyId, amount[params[PARAM_PLAYER]])
                print(message)
                Chat.BroadcastMessage(message, { players = admin })
                Task.Wait(0.20)
            end
        end
    end)

    return true
end

function AddCurrencyCommand(params)
    if not CURRENCY.AddCurrencyAmount(params[PARAM_PLAYER], params[PARAM_CURRENCY], params[PARAM_AMOUNT]) then
        return false, "See logs for warnings or errors"
    end

    if ALERT_TARGET_PLAYER then
        local currencyName = CURRENCY.GetSetting(params[PARAM_CURRENCY], CURRENCY.Setting.Name)
        Chat.BroadcastMessage(string.format("%d %s were added by an admin", params[PARAM_AMOUNT], currencyName), { players = params[PARAM_PLAYER] })
    end

    return true, GetResult(COMMAND_ADD, params)
end

function RemoveCurrencyCommand(params)
    if not CURRENCY.RemoveCurrencyAmount(params[PARAM_PLAYER], params[PARAM_CURRENCY], params[PARAM_AMOUNT]) then
        return false, "See logs for warnings or errors"
    end

    if ALERT_TARGET_PLAYER then
        local currencyName = CURRENCY.GetSetting(params[PARAM_CURRENCY], CURRENCY.Setting.Name)
        Chat.BroadcastMessage(string.format("%d %s were removed by an admin", params[PARAM_AMOUNT], currencyName), { players = params[PARAM_PLAYER] })
    end

    return true, GetResult(COMMAND_REMOVE, params)
end

function ClearCurrencyCommand(params)
    local amount = 0
    if params[PARAM_RESET] then
        amount = CURRENCY.GetSetting(params[PARAM_CURRENCY], CURRENCY.Setting.StartingAmount)
    end

    if not CURRENCY.SetCurrencyAmount(params[PARAM_PLAYER], params[PARAM_CURRENCY], amount) then
        return false, "See logs for warnings or errors"
    end

    if ALERT_TARGET_PLAYER then
        local currencyName = CURRENCY.GetSetting(params[PARAM_CURRENCY], CURRENCY.Setting.Name)
        Chat.BroadcastMessage(string.format("Your %s have been reset by an admin", currencyName), { players = params[PARAM_PLAYER] })
    end

    return true, GetResult(COMMAND_CLEAR, params)
end

function GetResult(command, params)
    if command == COMMAND_ADD then
        return string.format("Added %d to Currency: %s for Player: %s", params[PARAM_AMOUNT], params[PARAM_CURRENCY], params[PARAM_PLAYER].name)
    elseif command == COMMAND_REMOVE then
        return string.format("Removed %d from Currency: %s for Player: %s", params[PARAM_AMOUNT], params[PARAM_CURRENCY], params[PARAM_PLAYER].name)
    elseif command == COMMAND_CLEAR then
        return string.format("Currency: %s reset for Player: %s", params[PARAM_CURRENCY], params[PARAM_PLAYER].name)
    end

    return ""
end

function DisplayHelp(admin)
    local message1 = [[Commands must be entered in the format:
/cur command param=value param=value param=value
    ]]
    local message2 = [[Valid commands are:
- /cur list [player]
- /cur add [player, cur, amount]
- /cur remove [player, cur, amount]
- /cur clear [player, cur, reset]
    ]]
    local message3 = [[Valid params are:
- player (The Player name or id)
- cur (The Currency id)
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
        if string.sub(message, 1, #CURRENCY_COMMAND) == CURRENCY_COMMAND then
            -- Parse the command
            local commandType, commandParams = ParseCommandAndParams(speaker, message)

            -- Check and run the command type
            local success = false
            local result = ""

            if commandType == COMMAND_HELP then
                DisplayHelp(speaker)
                success = true
            elseif commandType == COMMAND_LIST then
                success, result = ListCurrenciesCommand(speaker, commandParams)
            elseif commandType == COMMAND_ADD then
                success, result = AddCurrencyCommand(commandParams)
            elseif commandType == COMMAND_REMOVE then
                success, result = RemoveCurrencyCommand(commandParams)
            elseif commandType == COMMAND_CLEAR then
                success, result = ClearCurrencyCommand(commandParams)
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

    -- Default to first available Currency
    if not commandParams[PARAM_CURRENCY] then
        commandParams[PARAM_CURRENCY] = GetFirstAvailableCurrency()
    end

    -- Default reset to false
    if not commandParams[PARAM_RESET] then
        commandParams[PARAM_RESET] = false
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
    elseif param == PARAM_CURRENCY then
        if not CURRENCY.IsCurrencyRegistered(value) then
            value = GetFirstAvailableCurrency()
            if value then
                warn(string.format("Invalid Currency id, falling back to first Currency: %s", value))
            else
                warn("Invalid Currency id, could not find any Currency to fall back to")
            end
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

function GetFirstAvailableCurrency()
    for currencyId, _ in pairs(CURRENCY.GetCurrencies()) do
        return currencyId
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