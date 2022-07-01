local Renderer = {}
local TexasHoldemArt = script:GetCustomProperty('TexasHoldemArt')
local TexasHoldemcharacter = script:GetCustomProperty('TexasHoldemcharacter')
local TexasPoker_Settings = require(script:GetCustomProperty('TexasPoker_Settings'))
local TexasPoker_Enums = require(script:GetCustomProperty('TexasPoker_Enums'))
local TEXAS_HOLDEM_CLIENT_DATA_PASS = require(script:GetCustomProperty('TexasHoldem_Client_DataPass'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))
local POKER_CHIP_RENDER = require(script:GetCustomProperty('PokerChip_Render'))
local TEXAS_POKER_EVALUATOR_ONLINE = require(script:GetCustomProperty('TexasPoker_EvaluatorOnline'))
local BUTTON_SHOW_CARDS_CONTAINER = script:GetCustomProperty('Button_ShowCards_Container')

local BetText = script:GetCustomProperty('BetText')
local DealerToken = script:GetCustomProperty('DealerToken')
local TexasHolem_popupText = script:GetCustomProperty('TexasHolem_popupText')
local CARD_SLIDE = script:GetCustomProperty('CardSlide')
local POT_TEXT = script:GetCustomProperty('PotText')
local CARD_HIGH_LIGHT = script:GetCustomProperty('CardHighLight')
local desk

local LOCAL_PLAYER = Game.GetLocalPlayer()
local art
local DealerTokenSpawn
local poolChips = {}
local PlayerMarkers = {}
local WorldMarkers = {}
local PotPosition
local Cards = {}
local PotTexts = {}
local PlayerBets = {}
local PlayerBetsRender = {}
local CenterCards = {}
local CardCC_DatabaseApi = require(script:GetCustomProperty('CardCC_DatabaseApi'))
local database = CardCC_DatabaseApi.WaitForDatabase('PlayingCard')
local TP_ClientEvents = {}
local resourceUpdateEvents = {}
local buttonEvents = {}
local ShowCardsButton

local cardY = 30

database:WaitUntilSetup()
while not _G.CC_Util do
    Task.Wait()
end
local UMaths = _G.CC_Util:WaitForlibrary('Math_Utilities')
local UI_Utilities = _G.CC_Util:WaitForlibrary('UI_Utilities', 0.3)

local function FindPlayerFromName(name)
    for key, value in pairs(Game.GetPlayers()) do
        if value.name == name then
            return value
        end
    end
end

local function canBet(state)
    if
        state == TexasPoker_Enums.rounds['firstBetting'] or state == TexasPoker_Enums.rounds['secondBetting'] or
            state == TexasPoker_Enums.rounds['thirdBetting'] or
            state == TexasPoker_Enums.rounds['fourthBetting']
     then
        return true
    end
end

local function CommaValue(n) -- credit http://richard.warburton.it
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

local function ScaleCard(card, scale)
    local ratio = scale / card.height
    UI_Utilities.ScaleUIElement(card, card.width * ratio, card.height * ratio)
end

local function SlotToCircle(data, mainslot, slot)
    mainslot = mainslot or 1
    local maxPlayers = TEXAS_HOLDEM_CLIENT_DATA_PASS:GetData('maxPlayers')
    return math.pi * 2 / maxPlayers * (UMaths.Wrap(slot + (maxPlayers - mainslot) + 2, 1, maxPlayers + 1)) + .35
end

local FlipedCard = {}
local isFlipped = false

local function AddFlipped(card)
    FlipedCard[card] = true
    for key, value in pairs(FlipedCard) do
        isFlipped = true
        return
    end
    isFlipped = true
end

local function RemoveFlipped(card)
    FlipedCard[card] = nil
    for key, value in pairs(FlipedCard) do
        isFlipped = true
        return
    end
    isFlipped = false
end

local function CheckFlipped()
    return isFlipped
end

local function MoveWorldChips(chips, endPosition)
    local speed = 15000
    local deltaTime = 0.01
    local MoveChips = {}
    local endTime = time() + 3
    for key, chip in pairs(chips) do
        table.insert(MoveChips, chip)
    end

    while #MoveChips > 0 and time() <= endTime do
        for i = #MoveChips, 1, -1 do
            local chip = MoveChips[i]
            if Object.IsValid(chip) then
                local Direction = endPosition - chip:GetWorldPosition()
                if Direction.sizeSquared <= 1000 then
                    table.remove(MoveChips, i)
                end
                local norm = Direction:GetNormalized()
                chip:SetVelocity(norm * speed * deltaTime)
            end
        end

        deltaTime = Task.Wait()
    end
end

function UpdateCash(player)
    local _player = FindPlayerFromName(player.name)
    local Cash = PlayerMarkers[player.name]:GetCustomProperty('Cash'):GetObject()
    if _player then
        Cash.text = CommaValue(_player:GetResource(TexasPoker_Settings.resource .. TexasPoker_Settings.additionString))
    end
end

function UpdatePlayer(player)
    if not Object.IsValid(PlayerBets[player.name]) then
        return
    end

    if PlayerBetsRender[player.name] then
        for index, value in ipairs(PlayerBetsRender[player.name] or {}) do
            if Object.IsValid(value) then
                value:Destroy()
            end
        end
        PlayerBetsRender[player.name] = nil
    end

    if player.roundBet == 0 or not player.roundBet then
        PlayerBets[player.name].visibility = Visibility.FORCE_OFF
    else
        PlayerBets[player.name].visibility = Visibility.INHERIT
        PlayerBetsRender[player.name] = POKER_CHIP_RENDER.RenderChips(player.roundBet, false)
        local width = 20
        local height = 4
        local forwardOffset = 2
        local towerHeight = 5
        for index, value in ipairs(PlayerBetsRender[player.name] or {}) do
            local dex = index - 1
            local row = math.floor(dex / towerHeight)
            local column = dex % towerHeight
            local offset = math.floor(#PlayerBetsRender[player.name] / towerHeight) * (-width / 2)
            local position =
                WorldMarkers[player.name].BetMarker + (Vector3.UP * column * height) +
                (Vector3.RIGHT * (row * width + offset)) + (Vector3.RIGHT * column * forwardOffset)
            value:SetWorldPosition(position)
        end
    end
    PlayerBets[player.name].text = tostring(player.roundBet)
    UpdateCash(player)
end

function RenderPlayers(playerList, data)
    local function HandleState(player, RenderImage)
        local colorChart = {
            [TexasPoker_Enums.PlayerStates['None']] = Color.WHITE,
            [TexasPoker_Enums.PlayerStates['Fold']] = Color.New(.1, .1, .1),
            [TexasPoker_Enums.PlayerStates['Call']] = Color.New(4, 4, 4)
        }
        if colorChart[player.state] then
            RenderImage:SetColor(colorChart[player.state])
        end
    end
    local function HandleHideState(player, RenderImage)
        local colorChart = {
            [TexasPoker_Enums.PlayerStates['None']] = Visibility.FORCE_OFF,
            [TexasPoker_Enums.PlayerStates['Fold']] = Visibility.FORCE_ON,
            [TexasPoker_Enums.PlayerStates['Call']] = Visibility.FORCE_OFF
        }
        if colorChart[player.state] then
            RenderImage.visibility = colorChart[player.state]
        end
    end
    local playerSlot = (playerList[LOCAL_PLAYER.name] or {}).slotNumber or 1
    for key, player in pairs(playerList) do
        if PlayerMarkers[key] then
            HandleState(player, PlayerMarkers[key]:GetCustomProperty('PlayerImage'):GetObject())
            HandleHideState(player, PlayerMarkers[key]:GetCustomProperty('Elimination'):GetObject())
            UpdateCash(player)
        end
    end
end

function PopUpAction(player, text)
    if PlayerMarkers[player.name] and Object.IsValid(art) then
        local popup =
            World.SpawnAsset(TexasHolem_popupText, {parent = art:GetCustomProperty('PlayerMarkers'):GetObject()})
        local posx = PlayerMarkers[player.name].x - 125
        local posy = PlayerMarkers[player.name].y
        popup.text = text
        popup.x = posx
        popup.y = posy
        popup.lifeSpan = 1.5
    end
end

function TurnUpdate(turn, data)
    if not data.players then
        return
    end

    local total = 0
    for playerName, data in pairs(data.players) do
        if data.roundBet then
            total = total + data.roundBet
        end
    end

    if data.currentPot then
        total = total + data.currentPot
    end
    
    UpdatePool(total)

    for key, player in pairs(data.players) do
        if Object.IsValid(PlayerMarkers[key]) then
            local Cash = PlayerMarkers[key]:GetCustomProperty('Cash'):GetObject()
            local _player = FindPlayerFromName(player.name)
            if _player then
                Cash.text =
                    tostring(_player:GetResource(TexasPoker_Settings.resource .. TexasPoker_Settings.additionString))
            end
        end
        if player.slotNumber == turn then
            if Object.IsValid(PlayerMarkers[key]) then
                local TurnGlow = PlayerMarkers[key]:GetCustomProperty('TurnGlow'):GetObject()

                TurnGlow.visibility = Visibility.INHERIT

                if canBet(data.roundState) then
                    local Timer = PlayerMarkers[key]:GetCustomProperty('Timer'):GetObject()
                    Timer.visibility = Visibility.INHERIT
                    Task.Spawn(
                        function()
                            local turnTime = TEXAS_HOLDEM_CLIENT_DATA_PASS:GetData('turnTime')
                            local endTime = turnTime + time()
                            while Object.IsValid(PlayerMarkers[key]) and data.turn == turn and
                                Timer.visibility == Visibility.INHERIT and
                                time() < endTime do
                                Timer.progress = (endTime - time()) / turnTime
                                Task.Wait()
                            end
                            if Object.IsValid(PlayerMarkers[key]) then
                                Timer.visibility = Visibility.FORCE_OFF
                            end
                        end
                    )
                end
            end
        else
            if Object.IsValid(PlayerMarkers[key]) then
                local TurnGlow = PlayerMarkers[key]:GetCustomProperty('TurnGlow'):GetObject()
                TurnGlow.visibility = Visibility.FORCE_OFF
                local Timer = PlayerMarkers[key]:GetCustomProperty('Timer'):GetObject()
                Timer.visibility = Visibility.FORCE_OFF
            end
        end
    end
end

function ActionUpdate(player, action, data)
    PopUpAction(player, TexasPoker_Enums.playerActionsName[action])
end

local function FlipCards(player, NotUp)
    for key, card in pairs(Cards[player.name]) do
        if card.isUp == NotUp then
            card:FlipCard()
        end
    end
end

function StateUpdate(player, state, data)
    if player.name == LOCAL_PLAYER.name then
        if state == TexasPoker_Enums.PlayerStates.Fold and Cards[player.name] then
            for key, value in pairs(Cards[player.name]) do
                value:FlipCard()
                
                buttonEvents[#buttonEvents+1] = value.hoveredEvent:Connect(
                    function()
                        AddFlipped(value)
                        FlipCards(player, false)
                    end
                )

                buttonEvents[#buttonEvents+1] = value.unhoveredEvent:Connect(
                    function()
                        RemoveFlipped(value)
                        if not CheckFlipped() then
                            FlipCards(player, true)
                        end
                    end
                )

                buttonEvents[#buttonEvents+1] = value.destroyEvent:Connect(
                    function()
                        RemoveFlipped(value)
                        if not CheckFlipped() then
                            FlipCards(player, true)
                        end
                    end
                )
            end
        end
    end
end

function UpdatePool(pool, data)
    if Object.IsValid(art) then
        local PoolValue = art:GetCustomProperty('Pool'):GetObject()
        PoolValue.text = CommaValue(pool)
        _G.TablePool = pool
    end
end

function SpawnPoolChips(value)
    for key, chip in pairs(poolChips) do
        if Object.IsValid(chip) then
            chip:Destroy()
        end
    end
    poolChips = POKER_CHIP_RENDER.RenderChips(value or 0, false)
    local width = 20
    local height = 4
    local forwardOffset = 5
    local towerHeight = 5
    for index, chip in ipairs(poolChips or {}) do
        if Object.IsValid(chip) then
            local dex = index - 1
            local row = math.floor(dex / towerHeight)
            local column = dex % towerHeight
            local offset = (#poolChips / towerHeight) * (-width / 2)
            local position = PotPosition + (Vector3.UP * column * height) + (Vector3.RIGHT * (row * width + offset)) + (Vector3.FORWARD * column * forwardOffset)
            chip:SetWorldPosition(position + (Vector3.FORWARD * -15))
        end
    end
end

local function UpdatePoolChips(data)
    if
        data.roundState == TexasPoker_Enums.rounds.dealing or data.roundState == TexasPoker_Enums.rounds.waiting or
            data.roundState == TexasPoker_Enums.rounds.preFlop or
            data.roundState == TexasPoker_Enums.rounds.firstBetting or
            data.roundState == TexasPoker_Enums.rounds.endGame
     then
        return
    end
    Task.Spawn(
        function()
            local MoveChips = {}
            for key, Bet in pairs(PlayerBetsRender) do
                for key, chip in pairs(Bet) do
                    table.insert(MoveChips, chip)
                    table.insert(poolChips, chip)
                end
                PlayerBetsRender[key] = {}
            end
            MoveWorldChips(MoveChips, PotPosition)
            Task.Wait(.4)
            if #poolChips > 0 then
                SpawnPoolChips(data.pool)
            end
        end
    )
    Task.Wait()
    Task.Wait()
end

function UpdateState(data)
    if data.roundState == TexasPoker_Enums.rounds['waiting'] then
        for key, player in pairs(Cards) do
            for key, card in pairs(player) do
                card:UnspawnCard()
                card:Destroy()
            end
        end
        Cards = {}

        for key, card in ipairs(CenterCards) do
            card:UnspawnCard()
            card:Destroy()
        end
        CenterCards = {}
    end
end

function UpdateCards(data)
    if not Object.IsValid(art) then
        return
    end
    local cardLayer = art:GetCustomProperty('CardLayer'):GetObject()
    for key, player in pairs(data.players) do
        if data.players[key] and Object.IsValid(PlayerMarkers[key]) then
            local markerX = PlayerMarkers[key].x
            local markerY = PlayerMarkers[key].y
            for index, Cardid in pairs(player.cards or {}) do
                Cards[key] = Cards[key] or {}
                if not Cards[key][index] then
                    Cards[key][index] = database:Clone(Cardid)
                    local showback = true
                    if data.showingCards[player.name] or player.name == LOCAL_PLAYER.name then
                        showback = false
                    end
                    Cards[key][index].isDraggable = false
                    Cards[key][index]:SpawnCard({parent = cardLayer, showBack = showback})
                    ScaleCard(Cards[key][index].spawnedCard, 110)
                    Cards[key][index].spawnedCard.x = -200
                    Cards[key][index].spawnedCard.y = cardY
                    local x = markerX + ((index - 1) * 85) - 70 --#TODO: controls spacing of cards in your hand
                    local y = markerY
                    y = y - 100
                    Cards[key][index]:MoveTo(Vector2.New(x, y + 30), 0.2)
                    World.SpawnAsset(CARD_SLIDE)
                    Task.Wait(.1)
                end
            end
        end
    end

    for index, value in ipairs(data.centerCards) do
        if not CenterCards[index] then
            CenterCards[index] = database:Clone(value)
            CenterCards[index]:SpawnCard({parent = cardLayer})
            CenterCards[index].isDraggable = false
            ScaleCard(CenterCards[index].spawnedCard, 110)
            CenterCards[index].spawnedCard.x = -200
            CenterCards[index].spawnedCard.y = cardY
            CenterCards[index]:MoveTo(Vector2.New((index - 1) * 90 - 200 + 35, cardY), .1)
            Task.Wait(.1)
        end
    end
end

local function PlayerJoined(player, data)
    if PlayerMarkers[player.name] then
        return
    end
    --print("++ Player joined:", player.name)
    local playerSlot = (data.players[LOCAL_PLAYER.name] or {}).slotNumber or 1
    local distance = 700
    local endDistance = 370 / 2.4
    local ID = SlotToCircle(data, playerSlot, player.slotNumber)

    local _player = FindPlayerFromName(player.name)
    PlayerMarkers[player.name] =
        World.SpawnAsset(TexasHoldemcharacter, {parent = art:GetCustomProperty('PlayerMarkers'):GetObject()})
    PlayerMarkers[player.name]:GetCustomProperty('Name'):GetObject().text = player.name
    if _player then
        PlayerMarkers[player.name]:GetCustomProperty('PlayerImage'):GetObject():SetPlayerProfile(_player)

        resourceUpdateEvents[player.name] =
            _player.resourceChangedEvent:Connect(
            function()
                if PlayerMarkers[player.name] then
                    UpdateCash(player)
                end
            end
        )
    end
    PlayerBets[player.name] = World.SpawnAsset(BetText, {parent = art:GetCustomProperty('PlayerMarkers'):GetObject()})
    local tablePos = desk:GetWorldPosition()
    local tableSphere =
        Vector3.New(math.cos(ID + 1.54) / 1.5 * distance / 2, math.sin(ID + 1.54) * distance / 2, 0) + tablePos
    local tablePoint =
        UMaths.ClosestPointOnLine(
        (Vector3.New(0, -200, 0) + tablePos),
        (Vector3.New(0, 200, 0) + tablePos),
        tableSphere
    )
    local betPoint =
        UMaths.ClosestPointOnLine(
        (Vector3.New(0, -170, 0) + tablePos),
        (Vector3.New(0, 170, 0) + tablePos),
        tableSphere
    )
    local tablePosition = (tableSphere - tablePoint):GetNormalized() * endDistance + tablePoint - Vector3.New(-5, 0, 0)
    local betPos = (tableSphere - betPoint):GetNormalized() * endDistance / 1.92 + betPoint
    PlayerBets[player.name]:SetWorldPosition(betPos + Vector3.New(-15, 0, 2))
    PlayerBets[player.name]:SetRotation(Rotation.New(Vector3.UP, Vector3.FORWARD))
    PlayerBets[player.name]:SetScale(Vector3.New(.5))
    WorldMarkers[player.name] = {playerMarker = tablePosition, BetMarker = betPos}
    --[[

        CoreDebug.DrawSphere(WorldMarkers[player.name].BetMarker, 10, {duration = 1000})
        CoreDebug.DrawSphere(tableSphere, 10, {duration = 1000})
        CoreDebug.DrawLine(tableSphere, betPoint, {duration = 1000})
        ]]
    while not UI.GetScreenPosition(tablePosition) do
        Task.Wait()
    end
    Task.Wait()

    local newPosition = UI.GetScreenPosition(WorldMarkers[player.name].playerMarker) - (UI.GetScreenSize() / 2)
    local betPosition = UI.GetScreenPosition(WorldMarkers[player.name].BetMarker) - (UI.GetScreenSize() / 2)
    if not newPosition then
        return
    end
    PlayerMarkers[player.name].x = newPosition.x + 40
    PlayerMarkers[player.name].y = newPosition.y + 25

    UpdatePlayer(player)
end

local function PlayerLeft(player, data)
    if Object.IsValid(PlayerMarkers[player.name]) then
        PlayerMarkers[player.name]:Destroy()
    end
    if Object.IsValid(PlayerBets[player.name]) then
        PlayerBets[player.name]:Destroy()
    end

    for index, chip in ipairs(PlayerBetsRender[player.name] or {}) do
        if Object.IsValid(chip) then
            chip:Destroy()
        end
    end
    for key, cards in pairs(Cards[player.name] or {}) do
        cards:Destroy()
    end
    if resourceUpdateEvents[player.name] then
        resourceUpdateEvents[player.name]:Disconnect()
        resourceUpdateEvents[player.name] = nil
    end
    Cards[player.name] = nil
    PlayerMarkers[player.name] = nil
    WorldMarkers[player.name] = nil
end

local function DealerChanged(dealerTurn, oldTurn, data)
    dealerTurn = dealerTurn or 1
    oldTurn = oldTurn or dealerTurn
    local playerSlot = (data.players[LOCAL_PLAYER.name] or {}).slotNumber
    local TablePoint = desk:GetWorldPosition()

    local distance = 700
    local endDistance = 370 / 2.4
    if dealerTurn < oldTurn then
        oldTurn = 0
    end
    Task.Spawn(
        function()
            local tme = 0
            local tablePos = desk:GetWorldPosition()
            while Object.IsValid(DealerTokenSpawn) and tme <= 1 do
                local lerptime = CoreMath.Lerp(oldTurn, dealerTurn, tme)
                local ID = SlotToCircle(data, playerSlot, lerptime)
                local tableSphere =
                    Vector3.New(math.cos(ID + 1.54) / 1.5 * distance / 2, math.sin(ID + 1.54) * distance / 2, 0) +
                    tablePos
                local tablePoint =
                    UMaths.ClosestPointOnLine(
                    (Vector3.New(0, -200, 0) + tablePos),
                    (Vector3.New(0, 200, 0) + tablePos),
                    tableSphere
                )
                local tablePosition =
                    (tableSphere - tablePoint):GetNormalized() * endDistance + tablePoint - Vector3.New(-5, 0, 0)
                local newPos = UI.GetScreenPosition(tablePosition) - (UI.GetScreenSize() / 2)
                DealerTokenSpawn.x = newPos.x + 110
                DealerTokenSpawn.y = newPos.y - 70
                tme = tme + Task.Wait()
            end
        end
    )
end

local function OutlineWinining(playername)
    local AllCards = {}
    if not Cards[playername] then
        return
    end
    if not Cards[playername][1].isUp then
        return
    end
    for key, card in pairs(Cards[playername]) do
        table.insert(AllCards, card)
    end

    for key, card in pairs(CenterCards) do
        table.insert(AllCards, card)
    end

    local function SpawnOutline(card)
        local cardSpawn = card.spawnedCard
        if not cardSpawn then
            return
        end
        local outline = World.SpawnAsset(CARD_HIGH_LIGHT, {parent = cardSpawn})
        outline:ReorderBeforeSiblings()
    end

    local bestHand, HandValue, handScore = TEXAS_POKER_EVALUATOR_ONLINE.EvaluateDeck(AllCards, Cards[playername])
    for key, card in pairs(bestHand) do
        SpawnOutline(card)
    end
end

local function RenderPlayerHand(playername)
    local AllCards = {}
    if not Cards[playername] then
        return
    end
    if not Cards[playername][1].isUp then
        return
    end
    for key, card in pairs(Cards[playername]) do
        table.insert(AllCards, card)
    end

    for key, card in pairs(CenterCards) do
        table.insert(AllCards, card)
    end
end

local function gameEnd(data)
    local function RenderFirst(winnings)
        for _, playername in pairs(winnings[1] or {}) do
            OutlineWinining(playername)
            return
        end
    end

    local function PrintAllWins(winnings)
        local function PrintPlayer(playername)
            local AllCards = {}
            if not Cards[playername] then
                return
            end
            for key, card in pairs(Cards[playername]) do
                if not card.isUp or not data.showingCards[playername] then
                    Chat.LocalMessage(string.format('%s%s won.', data.chatPrefix, playername))
                    return
                end
                table.insert(AllCards, card)
            end

            for key, card in pairs(CenterCards) do
                table.insert(AllCards, card)
            end

            local bestHand, HandValue, handScore = TEXAS_POKER_EVALUATOR_ONLINE.EvaluateDeck(AllCards, Cards[playername])

            if not TexasPoker_Enums.grammerRankingNames[HandValue] then
                Chat.LocalMessage(string.format('%s%s won.', data.chatPrefix, playername))
            else
                local function firstToUpper(str)
                    return (str:gsub("^%l", string.upper))
                end

                local cardsString = "Hand:"
                for index, value in ipairs(bestHand) do
                    cardsString = cardsString.." "..firstToUpper(value.data.name)
                end

                Chat.LocalMessage(string.format('%s%s won with %s.', 
                    data.chatPrefix, 
                    playername, 
                    TexasPoker_Enums.grammerRankingNames[HandValue]
                ))
                Chat.LocalMessage(cardsString)

            end
            Events.Broadcast('TexasHoldem_Winner', playername, HandValue)
        end

        local winners = {}
        for key, value in ipairs(winnings) do
            for _, playername in pairs(winnings[1] or {}) do
                winners[playername] = playername
            end
        end
        for key, playername in pairs(winners) do
            PrintPlayer(playername)
        end
    end

    local winnings = data.winnings or {}
    RenderFirst(winnings)
    PrintAllWins(winnings)

    local winners = {}
    local TotalWinners = 0
    for key, betwinners in pairs(data.winnings) do
        for _, playername in pairs(betwinners or {}) do
            winners[playername] = true
        end
    end

    for key, value in pairs(winners) do
        TotalWinners = TotalWinners + 1
    end

    if TotalWinners > 1 then
        for key, chips in pairs(poolChips) do
            if Object.IsValid(chips) then
                chips:Destroy()
            end
        end
    end

    for key, betwinners in pairs(data.winnings) do
        for _, playername in pairs(betwinners or {}) do
            if data.pots[key] and data.pots[key] > 0 then
                local chips = poolChips
                if TotalWinners > 1 then
                    chips = POKER_CHIP_RENDER.RenderChips(math.floor(data.pots[key] / (#betwinners or 1)), false)
                end
                for key, chip in pairs(chips) do
                    if Object.IsValid(chip) then
                        chip:SetWorldPosition(PotPosition)
                    end
                end

                Task.Spawn(
                    function()
                        if chips and (WorldMarkers[playername] or {}).playerMarker then
                            MoveWorldChips(chips, WorldMarkers[playername].playerMarker)
                        end
                        for key, chip in pairs(chips or {}) do
                            if Object.IsValid(chip) then
                                chip:Destroy()
                            end
                        end
                    end
                )
            end
        end
    end

    for key, value in pairs(PotTexts) do
        if Object.IsValid(value) then
            value:Destroy()
        end
    end

    for key, value in pairs(PlayerBetsRender) do
        if Object.IsValid(value) then
            value:Destroy()
        end
    end

    PotTexts = {}
    PlayerBetsRender = {}
end

local function NewPot()
    local newText = World.SpawnAsset(POT_TEXT, {parent = art:GetCustomProperty('PlayerMarkers'):GetObject()})
    newText:GetCustomProperty('Text'):GetObject().text = '0'
    table.insert(PotTexts, newText)
    local index = #PotTexts
    newText.x = -370
    newText.y = -160 + (index * 35)
end

local function RemovePot(potid, data)
    if Object.IsValid(potChips[potid]) then
        potChips[potid]:Destroy()
    end
    if Object.IsValid(PotTexts[potid]) then
        PotTexts[potid]:Destroy()
    end
end

local function PotChangedEvent(potid, value, data)
    local returnTable = {
        [TexasPoker_Enums.rounds['endGame']] = true,
        [TexasPoker_Enums.rounds['payOut']] = true
    }
    if returnTable[data.roundState] then
        return
    end
    if Object.IsValid(PotTexts[potid]) then
        PotTexts[potid]:GetCustomProperty('Text'):GetObject().text = CommaValue(value)
    end
end

local function TurnChange(turn, oldturn, data)
    TurnUpdate(turn, data)
end

local function ShowCards(data)
    local cardLayer = art:GetCustomProperty('CardLayer'):GetObject()
    local function renderCard(playername)
        local player = data.players[playername]
        for index, Cardid in pairs(player.cards or {}) do
            local x = 0
            local y = 0
            Cards[playername] = Cards[playername] or {}
            if Cards[playername][index] then
                x = Cards[playername][index].spawnedCard.x
                y = Cards[playername][index].spawnedCard.y
                Cards[playername][index]:UnspawnCard()
            end

            Cards[playername][index] = database:Clone(Cardid)

            Cards[playername][index].isDraggable = false
            Cards[playername][index]:SpawnCard({parent = cardLayer})
            ScaleCard(Cards[playername][index].spawnedCard, 110)
            Cards[playername][index].spawnedCard.x = x
            Cards[playername][index].spawnedCard.y = y
        end
    end

    for key, value in pairs(data.winnings or {}) do
        for key, player in pairs(value) do
            if Object.IsValid(PlayerMarkers[player]) then
                PlayerMarkers[player]:GetCustomProperty("Winner"):GetObject().visibility = Visibility.INHERIT
            end
        end
    end

    for key, _ in pairs(data.showingCards) do
        local player = data.players[key]
        if player then
            renderCard(key)
        end
    end
end

local function StateChanged(state, data)
    UpdatePoolChips(data)
    TurnUpdate(data.turn, data)
    UpdateState(data)

    if state == TexasPoker_Enums.rounds['payOut'] then
        local isWinner = false
        if data.showCards then
            for _, winners in pairs(data.winnings) do
                for index, winner in pairs(winners) do
                    if LOCAL_PLAYER.name == winner then
                        isWinner = true
                    end
                end
            end
        end

        if data.players[LOCAL_PLAYER.name] and next(data.players[LOCAL_PLAYER.name].cards) and Object.IsValid(art) and not isWinner then
            ShowCardsButton = World.SpawnAsset(BUTTON_SHOW_CARDS_CONTAINER, {parent = art:GetCustomProperty('OverlayArt'):GetObject()})
        end
    else
        if Object.IsValid(ShowCardsButton) then
            ShowCardsButton:Destroy()
        end
    end

    if state == TexasPoker_Enums.rounds['waiting'] then
        for player, value in pairs(data.players or {}) do
            if Object.IsValid(PlayerMarkers[player]) then
                PlayerMarkers[player]:GetCustomProperty("Winner"):GetObject().visibility = Visibility.FORCE_OFF
            end
        end
    end
end

function Renderer:Update(data)
    RenderPlayers(data.players, data)
    UpdateCards(data)
end

function Renderer:Close(data)
    if Object.IsValid(art) then
        art:Destroy()
    end
    for key, chip in pairs(poolChips) do
        if Object.IsValid(chip) then
            chip:Destroy()
        end
    end
    for key, Bet in pairs(PlayerBetsRender) do
        for key, chip in pairs(Bet) do
            if Object.IsValid(chip) then
                chip:Destroy()
            end
        end
    end
    for key, value in pairs(TP_ClientEvents) do
        value:Disconnect()
    end
    for key, value in pairs(Cards) do
        for _, card in pairs(value) do
            card:Destroy()
        end
    end
    for key, value in pairs(CenterCards) do
        value:Destroy()
    end
    TP_ClientEvents = {}
    CenterCards = {}
    PlayerMarkers = {}
    WorldMarkers = {}
    Cards = {}
    PlayerBets = {}
    PlayerBetsRender = {}
    PotTexts = {}
    poolChips = {}
end

local function UpdateData(data)
    data.WorldMarkers = WorldMarkers
    data.PotPosition = PotPosition
    data.TexasHoldemArt = art
end

function Renderer:Open(data)
    desk = data.desk
    PotPosition = desk:GetWorldPosition() - Vector3.New(-40, 0, 0)
    if Object.IsValid(art) then
        return art
    end

    local totalPool = 0
    for index, value in ipairs(data.pots) do
        totalPool = totalPool + value
    end
    SpawnPoolChips(totalPool)

    local TP_Client = TEXAS_HOLDEM_EVENTS
    TP_ClientEvents = {
        TP_Client.updateEvent:Connect(UpdateData),
        TP_Client.playerJoinedEvent:Connect(PlayerJoined),
        TP_Client.playerLeftEvent:Connect(PlayerLeft),
        TP_Client.stateChangedEvent:Connect(StateChanged),
        TP_Client.turnChangeEvent:Connect(TurnChange),
        TP_Client.showCardsEvent:Connect(ShowCards),
        TP_Client.dealerChangedEvent:Connect(DealerChanged),
        TP_Client.poolChangedEvent:Connect(UpdatePool),
        TP_Client.potChangedEvent:Connect(PotChangedEvent),
        TP_Client.newPotEvent:Connect(NewPot),
        TP_Client.playerBetChangedEvent:Connect(UpdatePlayer),
        TP_Client.gameEndEvent:Connect(gameEnd),
        --TP_Client.newGameEvent:Connect(newGame),
        TP_Client.playerActionChangedEvent:Connect(ActionUpdate),
        TP_Client.playerStateChangedEvent:Connect(StateUpdate)
    }
    art = World.SpawnAsset(TexasHoldemArt)
    local card = database:Clone('ca')
    card.isDraggable = false
    local cardLayer = art:GetCustomProperty('CardLayer'):GetObject()
    local playerLayer = art:GetCustomProperty('OverlayArt'):GetObject()
    DealerTokenSpawn = World.SpawnAsset(DealerToken, {parent = playerLayer})
    return art
end

function Renderer:DisconnectListeners()
    for key, value in pairs(TP_ClientEvents) do
        value:Disconnect()
    end

    for key, value in pairs(resourceUpdateEvents) do
        value:Disconnect()
    end
    
    for key, value in pairs(buttonEvents) do
        value:Disconnect()
    end
end

return Renderer
