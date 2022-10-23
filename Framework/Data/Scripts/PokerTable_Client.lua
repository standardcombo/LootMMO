local SPECTATOR_CONSOLE = script:GetCustomProperty('Spectator_Console'):WaitForObject()
local Trigger = script:GetCustomProperty('Trigger'):WaitForObject()

if SPECTATOR_CONSOLE and SPECTATOR_CONSOLE.isEnabled then
    Trigger.isInteractable = false
    return
end

local Root = script:GetCustomProperty('Root'):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()
local TexasPoker_Settings = require(script:GetCustomProperty('TexasPoker_Settings'))
local JOIN_GAME_POP_UP = script:GetCustomProperty('Join_Game_PopUp')
local SpawnedPopUp

local eventListeners = {}
local ReceiveinfoEvent

local function CommaValue(n) -- credit http://richard.warburton.it
    local left, num, right = string.match(n, '^([^%d]*%d)(%d*)(.-)$')
    return left .. (num:reverse():gsub('(%d%d%d)', '%1,'):reverse()) .. right
end

while not _G.CC_Util do
    Task.Wait()
end
local UMaths = _G.CC_Util:WaitForlibrary('Math_Utilities')
local function ReceiveInfo(info)
    if ReceiveinfoEvent then
        ReceiveinfoEvent:Disconnect()
        ReceiveinfoEvent = nil
    end
    if Object.IsValid(SpawnedPopUp) then
        SpawnedPopUp:Destroy()
    end

    SpawnedPopUp = World.SpawnAsset(JOIN_GAME_POP_UP)

    local max = math.min(info.maxBuyin, LOCAL_PLAYER:GetResource(TexasPoker_Settings.resource))
    local min = math.min(info.minBuyin, LOCAL_PLAYER:GetResource(TexasPoker_Settings.resource))
    local curVal = math.ceil(UMaths.Map(0.5, 0, 1, min, max))

    local Properties = SpawnedPopUp:GetCustomProperties()
    Properties.Stake:GetObject().text = string.format('%d/%d', info.smallBet, info.bigBet)
    Properties.Buyin:GetObject().text = string.format('%d/%d', info.minBuyin, info.maxBuyin)

    if LOCAL_PLAYER:GetResource(TexasPoker_Settings.resource) < TexasPoker_Settings.minBuyin then
        Properties.NotEnoughMoney:GetObject().visibility = Visibility.INHERIT
        Properties.JoinGame:GetObject().isInteractable = false
    end

    eventListeners[#eventListeners + 1] =
        Properties.JoinGame:GetObject().pressedEvent:Connect(
        function()
            Events.BroadcastToServer('PokerTable_JoinGame', Root.id, math.floor(curVal))
            SpawnedPopUp:Destroy()
        end
    )

    eventListeners[#eventListeners + 1] =
        Properties.SpectateGame:GetObject().pressedEvent:Connect(
        function()
            Events.BroadcastToServer('TexasPoker_Spectate', Root.id)
            SpawnedPopUp:Destroy()
        end
    )

    eventListeners[#eventListeners + 1] =
        Properties.Close:GetObject().pressedEvent:Connect(
        function()
            _G.pokerJoinTime = time()+1
            Events.BroadcastToServer('PokerTable_DeclineJoining')
            SpawnedPopUp:Destroy()
        end
    )
    local slider = Properties.Slider:GetObject().clientUserData.Slider

    eventListeners[#eventListeners + 1] =
        slider.changedEvent:Connect(
        function(_, percent)
            curVal = UMaths.Map(percent, 0, 1, min, max)
            Properties.SliderText:GetObject().text = CommaValue(math.ceil(curVal))
        end
    )

    Properties.SliderText:GetObject().text = CommaValue(math.floor(curVal))
end

eventListeners[#eventListeners + 1] =
    Trigger.interactedEvent:Connect(
    function()
        local lastTime = _G.pokerJoinTime or 0
        if time() < lastTime then return end

        _G.pokerJoinTime = time()+1
        ReceiveinfoEvent = Events.Connect('Poker_SendInfo', ReceiveInfo)
        Events.BroadcastToServer('PokerTable_AttemptToJoin', Root.id)
    end
)

function Tick()
    if LOCAL_PLAYER.parentCoreObject then
        Trigger.isInteractable = false
    else
        Trigger.isInteractable = true
    end
end

function UpdateData(p, key)
    if key == TexasPoker_Settings.storageKey then
        local data = LOCAL_PLAYER:GetPrivateNetworkedData(TexasPoker_Settings.storageKey)
        if data then
            Trigger.isInteractable = false
        else
            Trigger.isInteractable = true
        end
    end
end
eventListeners[#eventListeners + 1] = LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdateData)

-- Disconnect listeners when script is destroyed
eventListeners[#eventListeners + 1] =
    script.destroyEvent:Connect(
    function()
        if ReceiveinfoEvent then
            ReceiveinfoEvent:Disconnect()
        end

        for index, value in ipairs(eventListeners) do
            value:Disconnect()
        end
        eventListeners = nil

        if Object.IsValid(SpawnedPopUp) then
            SpawnedPopUp:Destroy()
        end
    end
)
