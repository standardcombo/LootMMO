local LOCAL_PLAYER = Game.GetLocalPlayer()
local TABLE = script:GetCustomProperty('Table'):WaitForObject() ---@type Folder
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))

local TexasPoker_APIClient = require(script:GetCustomProperty('TexasPoker_APIClient'))
local TexasPoker_Settings = require(script:GetCustomProperty('TexasPoker_Settings'))
local TexasPoker_Enums = require(script:GetCustomProperty('TexasPoker_Enums'))
local TexasPoker_ClientRender = require(script:GetCustomProperty('TexasPoker_ClientRender'))
local PARTY_CONST = require(script:GetCustomProperty("PartyConst"))

local CAMERA = script:GetCustomProperty('Camera'):WaitForObject() ---@type Camera
local TEXAS_HOLDERM_CLIENT_USER_INTERFACE = script:GetCustomProperty('TexasHolderm_Client_UserInterface')
local TEXAS_HOLDEM_CLIENT_DATA_PASS = require(script:GetCustomProperty('TexasHoldem_Client_DataPass'))
local TEXAS_POKER_SFXMANAGER = script:GetCustomProperty('TexasPoker_SFXManager')
local TABLE = script:GetCustomProperty('Table'):WaitForObject()
local POKER_UI = script:GetCustomProperty("PokerUI"):WaitForObject()
local SPECTATOR_CONSOLE = script:GetCustomProperty("Spectator_Console"):WaitForObject()
local TABLE_WON_VFX = script:GetCustomProperty("TableWonVFX")

local interface
local TableSettingsConnection
local eventListeners = {}
local openTime

local chatMessagePrefix = ""
if SPECTATOR_CONSOLE and SPECTATOR_CONSOLE.isEnabled then
    chatMessagePrefix = "[T] "
end

local CC_Util = require(script:GetCustomProperty('CC_Util'))
while not _G.CC_Util do
    Task.Wait()
end
local ui_Cursor = _G.CC_Util:WaitForlibrary('UI_CursorHandler')

local oldData = {}

local function ResetData(keepData)
    local players = {}
    local oldRound = nil
    if oldData and keepData then
        players = oldData.players or {}
        oldRound = oldData['roundState']
    end

    oldData = {players = players, pots = {}, roundState = oldRound}
end

ResetData(false)
local updating = time()
local isOpen = false
local TP_Client = TEXAS_HOLDEM_EVENTS

local function FindPlayerFromName(name)
    for key, value in pairs(Game.GetPlayers()) do
        if value.name == name then
            return value
        end
    end
end

local function GetResource(name)
    local player = FindPlayerFromName(name)
    if player then
        return player:GetResource(TexasPoker_Settings.resource .. TexasPoker_Settings.additionString)
    else
        return 0
    end
end

local function PlayerAction(data, player, key)
    if not oldData.players[key] then
        TP_Client.playerJoinedEvent:Trigger(player, data)
    end

    if oldData.players[key] and player.state ~= oldData.players[key].state then
        TP_Client.playerStateChangedEvent:Trigger(player, player.state, data)
        if player.state == TexasPoker_Enums.PlayerStates.Fold then
            TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.Fold, data)
        elseif player.state == TexasPoker_Enums.PlayerStates.Call then
            if (data.roundBet or 0) == 0 then
                TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.Check, data)
            else
                if player.roundBet > (oldData.roundBet or 0) then
                    if GetResource(player.name) == 0 then
                        TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.All_in, data)
                    else
                        TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.Raise, data)
                    end
                else
                    if GetResource(player.name) == 0 then
                        TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.All_in, data)
                    else
                        TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.Call, data)
                    end
                end
            end
        end
    end
end

local function ShortUpdate(data)
    if isOpen then
        if data.turn ~= oldData.turn then
            TP_Client.turnChangeEvent:Trigger(data.turn, oldData.turn, data)
        end

        for key, value in pairs(data) do
            --oldData[key] = value
        end
    end
end

local function Update(data)
    updating = time() + 2
    local startTime = time()

    if data.timeStamp < (oldData.timeStamp or 0) then
        updating = time()
        return
    end

    data.desk = TABLE
    TP_Client.updateEvent:Trigger(data)

    local totalPool = 0
    for index, value in ipairs(data.pots) do
        if not oldData.pots[index] then
            TP_Client.newPotEvent:Trigger(data)
        end
        --if data.pots[index] ~= oldData.pots[index] then
            TP_Client.potChangedEvent:Trigger(index, value, data)
        --end
        oldData.pots[index] = data.pots[index]
        totalPool = totalPool + value
    end
    data.pool = totalPool

    --Player Action Check --------
    for key, player in pairs(oldData.players) do
        if not data.players[key] then
            TP_Client.playerActionChangedEvent:Trigger(player, TexasPoker_Enums.playerActions.Leave, data)
            TP_Client.playerLeftEvent:Trigger(player, data)
        end
    end

    for key, player in pairs(data.players) do
        PlayerAction(data, player, key)
    end

    ----------------------

    if data['roundState'] ~= oldData['roundState'] then
        TP_Client.stateChangedEvent:Trigger(data.roundState, data)
        if data['roundState'] == TexasPoker_Enums.rounds.dealing then
            TP_Client.newGameEvent:Trigger(data)
        elseif data['roundState'] == TexasPoker_Enums.rounds.endGame then
            -- Check if a player won the table
            local count = 0
            for playerName, _ in pairs(data.players) do
                local cash = GetResource(playerName)
                if cash > 0 then
                    count = count+1
                end
            end

            if count == 1 then
                World.SpawnAsset(TABLE_WON_VFX, {parent=script})
            end
        end
    end

    for key, player in pairs(data.players) do
        if oldData.players[key] and player.roundBet ~= oldData.players[key].roundBet then
            TP_Client.playerBetChangedEvent:Trigger(player, player.roundBet, oldData.players[key].roundBet, data)
        end
    end

    if data.turn ~= oldData.turn then
        TP_Client.turnChangeEvent:Trigger(data.turn, oldData.turn, data)
    end

    if data.dealer ~= oldData.dealer then
        TP_Client.dealerChangedEvent:Trigger(data.dealer, oldData.dealer, data)
    end

    if data['roundState'] == TexasPoker_Enums.rounds.payOut then
        TP_Client.showCardsEvent:Trigger(data)
    end

    for key, value in pairs(oldData.pots) do
        if not data.pots[key] then
            TP_Client.removePotEvent:Trigger(key, data)
        end
    end

    if data.pool ~= oldData.pool then
        TP_Client.poolChangedEvent:Trigger(data.pool, data)
    end

    if data.winnings and not oldData.winnings then
        TP_Client.winningAnnouncedEvent:Trigger(data.winnings)
    end

    TexasPoker_ClientRender:Update(data)
    if data['roundState'] ~= oldData['roundState'] then
        if data['roundState'] == TexasPoker_Enums.rounds.endGame then
            data.chatPrefix = chatMessagePrefix
            TP_Client.gameEndEvent:Trigger(data)
        end
    end

    if isOpen then
        oldData = data
    end
    updating = time()
end

function Open(data)
    if isOpen then
        return
    end

    openTime = CoreMath.Round(time())
    updating = time()+2
    isOpen = true
    data.desk = TABLE
    Game.GetLocalPlayer():SetOverrideCamera(CAMERA)
    Task.Wait(.2)
    TexasPoker_ClientRender:Open(data)

    interface = World.SpawnAsset(TEXAS_HOLDERM_CLIENT_USER_INTERFACE)

    TableSettingsConnection =
        Events.Connect(
        'Poker_SendInfo',
        function(info)
            for key, value in pairs(info) do
                TEXAS_HOLDEM_CLIENT_DATA_PASS:SetData(key, value)
            end
        end
    )
    ui_Cursor:RegisterOpen(script)
    updating = time()
end

function Close()
    if not isOpen then
        return
    end
    isOpen = false
    updating = time()
    if TableSettingsConnection then
        TableSettingsConnection:Disconnect()
    end
    TEXAS_HOLDEM_CLIENT_DATA_PASS:ClearData()
    if Object.IsValid(interface) then
        interface:Destroy()
    end
    Game.GetLocalPlayer():ClearOverrideCamera()
    ResetData(false)
    TexasPoker_ClientRender:Close()
    ui_Cursor:UnRegisterOpen(script)
end

function UpdateData(p, key)
    if key == TexasPoker_Settings.storageKey then
        local data = LOCAL_PLAYER:GetPrivateNetworkedData(TexasPoker_Settings.storageKey)
        if data then
            Open(data)
            if time() >= updating then
                Update(data)
            end
        else
            Close()
        end
        return
    end

    if key == TexasPoker_Settings.storageKey .. 'short' then
        local data = LOCAL_PLAYER:GetPrivateNetworkedData(TexasPoker_Settings.storageKey .. 'short')
        if data and isOpen then
            if time() >= updating then
                ShortUpdate(data)
            end
        end
    end

    if key == PARTY_CONST.NETWORKED_DATA_KEY then
        local data = LOCAL_PLAYER:GetPrivateNetworkedData(key)
        if data and data.pids ~= nil and data.pids[LOCAL_PLAYER] then
            POKER_UI.visibility = Visibility.INHERIT
        else
            POKER_UI.visibility = Visibility.FORCE_OFF
        end
    end
end

eventListeners[#eventListeners+1] = LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdateData)

-- Disconnect listners when script is destroyed
eventListeners[#eventListeners+1] = script.destroyEvent:Connect(function ()
    Close()
    
    for index, value in ipairs(eventListeners) do
        value:Disconnect()
    end
    eventListeners = nil

    TexasPoker_ClientRender:DisconnectListeners()
end)