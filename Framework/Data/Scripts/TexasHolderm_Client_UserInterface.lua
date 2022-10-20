-- Custom
local TURN_INTERFACE = script:GetCustomProperty('Turn_interface'):WaitForObject() ---@type UIContainer
local INTERFACE = script:GetCustomProperty('interface'):WaitForObject() ---@type UIContainer
local TEXAS_POKER_APICLIENT = require(script:GetCustomProperty('TexasPoker_APIClient'))
local TEXAS_POKER_ENUMS = require(script:GetCustomProperty('TexasPoker_Enums'))
local TEXAS_POKER_SETTINGS = require(script:GetCustomProperty('TexasPoker_Settings'))
local TEXAS_HOLDEM_CLIENT_DATA_PASS = require(script:GetCustomProperty('TexasHoldem_Client_DataPass'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))
local LEAVE = script:GetCustomProperty('Leave'):WaitForObject()
local WAITING_FOR_PLAYERS = script:GetCustomProperty("WaitingForPlayers"):WaitForObject()

local QUICK_BET = TURN_INTERFACE:GetCustomProperty("QuickBet"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local oldData = {
    roundBet = 0
}

local BetPercentage = 0
local AllInterFaces = {
    TURN_INTERFACE,
    INTERFACE
}

while not _G.CC_Util do
    Task.Wait()
end
local UMath = _G.CC_Util:WaitForlibrary('Math_Utilities')

local TP_Client = TEXAS_HOLDEM_EVENTS

local function CommaValue(n) -- credit http://richard.warburton.it
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

function GetPercent(data, per)
    data = data or {}
    local lastBet = 0
    local smallbet = data.smallBet or TEXAS_HOLDEM_CLIENT_DATA_PASS:GetData('smallBet')
    local bigBet = smallbet * 2
    if data and data.players and (data.players[LOCAL_PLAYER.name] or {}) then
        lastBet = (data.players[LOCAL_PLAYER.name] or {}).roundBet or 0
    end
    
    local betamount = data.roundBet or 0

    local max =
        math.max(
        (betamount) * 2 + lastBet,
        LOCAL_PLAYER:GetResource(TEXAS_POKER_SETTINGS.resource .. TEXAS_POKER_SETTINGS.additionString)+ lastBet ,
        (bigBet)
    )
    max = math.min ( max,LOCAL_PLAYER:GetResource(TEXAS_POKER_SETTINGS.resource .. TEXAS_POKER_SETTINGS.additionString) )
    local min =
        math.min(
        betamount * 2 + lastBet,
        LOCAL_PLAYER:GetResource(TEXAS_POKER_SETTINGS.resource .. TEXAS_POKER_SETTINGS.additionString) + lastBet
    )

    min = bigBet --math.max(min, bigBet)
    max = math.max(LOCAL_PLAYER:GetResource(TEXAS_POKER_SETTINGS.resource .. TEXAS_POKER_SETTINGS.additionString), min)
    
    local amount = UMath.Map(per, 0, 1, min, max)
    return math.floor(amount)
end

local function RunForInterfaces(func, InterFaces)
    for key, value in pairs(InterFaces) do
        func(value)
    end
end

local function Open()
    RunForInterfaces(
        function(value)
            Task.Wait()
            local Slider = value:GetCustomProperty('Slider'):WaitForObject().clientUserData.Slider
            local SliderRaise = value:GetCustomProperty('SliderRaise'):WaitForObject()
            local SliderText = value:GetCustomProperty('SliderText'):WaitForObject()
            local RaiseAmountText = value:GetCustomProperty("RaiseAmountText"):WaitForObject()

            Slider.changedEvent:Connect(
                function(Slider, percent)
                    BetPercentage = percent
                    if Object.IsValid(SliderText) then
                        SliderText.text = "$"..CommaValue(GetPercent(oldData, BetPercentage))
                        RaiseAmountText.text = SliderText.text
                    end
                end
            )
            SliderRaise.pressedEvent:Connect(
                function()
                    local callAmount = (oldData.roundBet or 0) - (oldData.players[LOCAL_PLAYER.name].roundBet or 0)
                    local amount = GetPercent(oldData, BetPercentage)
                    TEXAS_POKER_APICLIENT.Raise(math.floor(amount))
                end
            )
            
            value:GetCustomProperty('RaiseALLIN'):GetObject().pressedEvent:Connect(
                function()
                    TEXAS_POKER_APICLIENT.Raise(
                        LOCAL_PLAYER:GetResource(TEXAS_POKER_SETTINGS.resource .. TEXAS_POKER_SETTINGS.additionString)
                    )
                end
            )
        end,
        {AllInterFaces[1]}
    )
    TURN_INTERFACE:GetCustomProperty('Call'):GetObject().pressedEvent:Connect(
        function()
            TEXAS_POKER_APICLIENT.Call(oldData.roundBet or 0)
        end
    )
    TURN_INTERFACE:GetCustomProperty('Fold'):GetObject().pressedEvent:Connect(
        function()
            TEXAS_POKER_APICLIENT.Fold(oldData.roundBet or 0)
        end
    )
end

local function UpdateTexts(data)
    if not data.players or not data.players[LOCAL_PLAYER.name] then return end

    RunForInterfaces(
        function(value)
            if Object.IsValid(value) and data.players[LOCAL_PLAYER.name].state ~= TEXAS_POKER_ENUMS.PlayerStates.Fold then
                local SliderText = value:GetCustomProperty('SliderText'):GetObject()
                local SliderRaise = value:GetCustomProperty('RaiseText'):WaitForObject()
                local RaiseAmountText = value:GetCustomProperty("RaiseAmountText"):WaitForObject()
                if Object.IsValid(SliderText) then
                    SliderText.text = "$"..CommaValue(GetPercent(data, BetPercentage))
                    RaiseAmountText.text = SliderText.text
                end
                if SliderRaise then
                    if data.roundBet <= 0 then
                        SliderRaise.text = 'Bet'
                    else
                        SliderRaise.text = 'Raise'
                    end
                end
            end
        end,
        {AllInterFaces[1]}
    )
    
    RunForInterfaces(
        function(value)
            if Object.IsValid(value) then
                if data.roundBet == data.players[LOCAL_PLAYER.name].roundBet or data.roundBet == 0 then
                    value:GetCustomProperty('Call'):GetObject():GetCustomProperty('Text'):GetObject().text = 'Check'
                    value:GetCustomProperty('Fold'):GetObject():GetCustomProperty('Text'):GetObject().text = 'Fold'
                else
                    local callAmount = data.roundBet - data.players[LOCAL_PLAYER.name].roundBet
                    value:GetCustomProperty('Call'):GetObject():GetCustomProperty('Text'):GetObject().text = string.format('Call %s', CommaValue(callAmount))
                    value:GetCustomProperty('Fold'):GetObject():GetCustomProperty('Text'):GetObject().text = 'Fold'
                end
            end
        end,
        AllInterFaces
    )
end

local function UpdateData(data)
    oldData = data
    UpdateTexts(data)

    local count=0 
    for index, value in pairs(data.players) do
        count = count+1
    end

    if count > 1 then
        WAITING_FOR_PLAYERS.visibility = Visibility.FORCE_OFF
    else
        WAITING_FOR_PLAYERS.visibility = Visibility.INHERIT
    end
end

local function HideUI()
    RunForInterfaces(
        function(value)
            value.visibility = Visibility.FORCE_OFF
        end,
        AllInterFaces
    )
end

local function SwapUI(turn, _, data)
    if not (data.players or {})[LOCAL_PLAYER.name] then
        return
    end
    if (data.players[LOCAL_PLAYER.name] or {}).state == TEXAS_POKER_ENUMS.PlayerStates.Fold and false then
        HideUI()
        return
    end

    if turn == (data.players[LOCAL_PLAYER.name] or {}).slotNumber then
        HideUI()
        Task.Wait(0.1)
        UpdateQuickBetButtons(data)
        TURN_INTERFACE.visibility = Visibility.INHERIT
    else
        HideUI()
        INTERFACE.visibility = Visibility.INHERIT
    end
end

function UpdateQuickBetButtons(data)
    local ONE_QUARTER = QUICK_BET:GetCustomProperty("OneQuarter"):WaitForObject()
    local ONE_HALF = QUICK_BET:GetCustomProperty("OneHalf"):WaitForObject()
    local THREE_QUARTERS = QUICK_BET:GetCustomProperty("ThreeQuarters"):WaitForObject()
    local POT = QUICK_BET:GetCustomProperty("Pot"):WaitForObject()

    local buttons = {ONE_QUARTER, ONE_HALF, THREE_QUARTERS, POT}
    local cash = LOCAL_PLAYER:GetResource(TEXAS_POKER_SETTINGS.resource .. TEXAS_POKER_SETTINGS.additionString)
    local callAmount = data.roundBet - data.players[LOCAL_PLAYER.name].roundBet

    local percent = 0.25
    for index, button in ipairs(buttons) do
        local betAmount = math.ceil(_G.TablePool*percent)+callAmount
        button.isInteractable = (cash >= betAmount and betAmount >= (data.smallBet*2))
        percent=percent+0.25
    end
end

local function OnQuickBetButtonClicked(button)
    local betAmount = 0
    if button.name == "One Quarter" then
        betAmount = math.ceil(_G.TablePool*0.25)
    elseif button.name == "One Half" then
        betAmount = math.ceil(_G.TablePool*0.5)
    elseif button.name == "Three Quarters" then
        betAmount = math.ceil(_G.TablePool*0.75)
    elseif button.name == "Pot" then
        betAmount = _G.TablePool
    else
        error("Quick bet button name is invalid:", button.name)
    end

    -- print(">> Quick bet <<")
    -- print("Table Pool:", _G.TablePool)
    -- print("Bet:", betAmount)
    -- print("Expected pot:", _G.TablePool+betAmount)
    -- print("\n")
    TEXAS_POKER_APICLIENT.Raise(betAmount)
end

for name, value in pairs(QUICK_BET:GetCustomProperties()) do
    value:GetObject().clickedEvent:Connect( OnQuickBetButtonClicked ) 
end

local TP_Events = {
    TP_Client.turnChangeEvent:Connect(SwapUI),
    TP_Client.updateEvent:Connect(UpdateData)
}
Open()
LEAVE.pressedEvent:Connect(function ()
    _G.pokerJoinTime = time()+1
    TEXAS_POKER_APICLIENT.Leave()
end)
script.destroyEvent:Connect(
    function()
        for key, value in pairs(TP_Events) do
            value:Disconnect()
        end
    end
)
HideUI()
