local TexasPoker_Settings = require(script:GetCustomProperty('TexasPoker_Settings'))
local TexasPoker_Enums = require(script:GetCustomProperty('TexasPoker_Enums'))
local TexasPoker_EvaluatorOnline = require(script:GetCustomProperty('TexasPoker_EvaluatorOnline'))
local CardCC_DeckAPI = require(script:GetCustomProperty('CardCC_DeckAPI'))

while not _G.CC_Util do
    Task.Wait()
end
local luaEvents = _G.CC_Util:WaitForlibrary('Lua Event')
local UMaths = _G.CC_Util:WaitForlibrary('Math_Utilities')

local debugMode = false

local poker = {
    isActive = true, -- Determines whether of not the game is active.
    gameTask = nil, -- A task that is spawned that runs the main game loop.
    players = {}, -- Players that are sitting at the table and playing the game.
    id = '', -- The id of the poker game.
    roundBet = 0,
    roundBets = {},
    pots = {}, -- Stores all of the pots for the round
    dealer = nil,
    oldDealer = nil,
    bigBetPlayer = nil,
    maxPlayers = TexasPoker_Settings.maxPlayers,
    deck = CardCC_DeckAPI.New(),
    turn = nil, -- @table; stores which player's turn it is. (Not a Player object).
    showCards = false, -- True if the winnings players have to reveal their cards.
    hup = false, -- True for two player games.
    centerCards = {},
    spectating = {}, -- Players that are spectating the game.
    usableCards = {},
    showingCards = {}, -- Players that have opted in to reveal their cards to the other players.
    roundState = TexasPoker_Enums.rounds.waiting, -- The current state of the game.
    playerJoinedEvent = luaEvents.New(),
    spectateJoinedEvent = luaEvents.New(),
    playerLeftEvent = luaEvents.New(),
    spectateLeftEvent = luaEvents.New(),
    roundUpdate = luaEvents.New()
}

function poker:FindNextActivePlayer(player, ignoreplayer, ignoreCards)
    if not player then
        return
    end

    local Loops = 0
    local Curplayer = player
    while Loops < 30 do
        local newSlot = self:NextPlayer(Curplayer.slotNumber)

        for key, newPlayer in pairs(self.players) do
            if newPlayer.slotNumber == newSlot then
                if newPlayer == ignoreplayer then
                    return
                end
                if newPlayer.state == TexasPoker_Enums.PlayerStates['None'] then
                    return newPlayer
                else
                    Curplayer = newPlayer
                end
            end
        end
        Loops = Loops + 1
    end
end

function poker:RequestInfo()
    local data = {
        smallBet = self.smallBet,
        bigBet = self.smallBet * 2,
        minBuyin = self.minBuyin,
        maxBuyin = self.maxBuyin,
        maxPlayers = self.maxPlayers,
        turnTime = self.turnTime,
        gameid = self.id
    }
    return data
end

function poker:GetCash(player)
    if not Object.IsValid(player) then
        return 0
    end
    return player:GetResource(self.resource .. self.additionString)
end

function poker:NewGame()
    self.gameTask =
        Task.Spawn(
        function()
            self:ChangeRound(TexasPoker_Enums.rounds['waiting'])
        end
    )
end

function poker:GameEnd()
    for key, player in pairs(self.players) do
        self:PlayerLeave(player.player)
    end
    for key, player in pairs(self.spectating) do
        self:PlayerLeave(key)
    end
    for index, value in ipairs(self.deck.inventory) do
        value:Destroy()
    end
    self.isActive = false
    if self.gameTask then
        self.gameTask:Cancel()
    end
end

function poker:ChangeRound(round)
    self.roundState = round
    self.roundUpdate:Trigger(round)
    self.rounds[self.roundState](self)
end

function poker:FindFreeSlot()
    local usedSlots = {}
    for index, player in pairs(self.players) do
        table.insert(usedSlots, player.slotNumber)
    end

    local function CheckSlot(number)
        for key, value in pairs(usedSlots) do
            if number == value then
                return false
            end
        end
        return true
    end

    for i = 1, self.maxPlayers do
        if CheckSlot(i) then
            return i
        end
    end
end

function poker:ShowCards(player)
    self.showingCards[player] = true
end

function poker:canBet()
    if self.roundState == TexasPoker_Enums.rounds['firstBetting'] or
        self.roundState == TexasPoker_Enums.rounds['secondBetting'] or
        self.roundState == TexasPoker_Enums.rounds['thirdBetting'] or
        self.roundState == TexasPoker_Enums.rounds['fourthBetting']
    then
        return true
    end
end

function poker:KickBroke()
    for key, player in pairs(self.players) do
        if self:GetCash(player.player) <= 0 then
            self:PlayerLeave(player.player)
        end
    end
end

function poker:potentialPlayers()
    local active = {}
    for key, player in pairs(self.players) do
        if player.state ~= TexasPoker_Enums.PlayerStates['Fold'] and self:GetCash(player.player) > 0 then
            table.insert(active, player)
        end
    end
    return active
end

function poker:GetPlayerCount()
    local playerCount = 0
    for key, value in pairs(self.players) do
        playerCount = playerCount + 1
    end
    return playerCount
end

function poker:GetMaxAvailableBet(ignorePlayer, callAmount)
    if not ignorePlayer then
        error('Must provide the ignorePlayer.')
    end

    local highest = 0
    for player, value in pairs(self.players) do
        local playerData = self.players[player]
        if player ~= ignorePlayer and playerData.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
            local cash = player:GetResource(self.resource .. self.additionString)
            local edgeCase =
                (player == self.bigBetPlayer) and (self.roundBets[player] == self.smallBet * 2) and
                (self.roundState == TexasPoker_Enums.rounds['firstBetting'])

            if playerData.state == TexasPoker_Enums.PlayerStates['None'] and not edgeCase then
                cash = cash - callAmount
            end

            highest = math.max(highest, cash)
        end
    end

    return highest
end

function poker:HandCardsOut()
    for key, player in pairs(self.players) do
        if player.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
            for i = 1, 2 do
                table.insert(player.cards, self.usableCards[#self.usableCards])
                table.remove(self.usableCards, #self.usableCards)
            end
        end
    end
end

function poker:DrawCard()
    local card = self.usableCards[1]
    table.insert(self.centerCards, card)
    table.remove(self.usableCards, 1)
end

function poker:GetData()
    local data = {}
    local playerdata = {}

    for key, player in pairs(self.players) do
        playerdata[player.name] = {
            slotNumber = player.slotNumber,
            name = player.name,
            state = player.state,
            roundBet = player.roundBet,
            cards = {}
        }

        for index, value in ipairs(player.cards) do
            playerdata[player.name].cards[index] = 'ca'
        end
    end

    if self.turn then
        data.turn = self.turn.slotNumber
    end

    if self.dealer then
        data.dealer = self.dealer.slotNumber
    end

    if self.winnings then
        data.winnings = self.winnings
    end

    data.centerCards = {}
    for index, value in ipairs(self.centerCards) do
        data.centerCards[index] = value.id
    end

    data.pots = {}
    for key, pot in ipairs(self.pots) do
        data.pots[key] = pot.value
    end

    data.showingCards = {}
    for key, value in pairs(self.showingCards) do
        data.showingCards[key.name] = value
    end

    if self.currentPot then
        data.currentPot = self.currentPot.value
    end

    data.timeStamp = time()
    data.players = playerdata
    data.roundState = self.roundState
    data.roundBet = self.roundBet
    data.smallBet = self.smallBet
    data.showCards = self.showCards

    self.networkDataEvent:Trigger(self, data)
    return data
end

function poker:ShortUpdatePlayers()
    local data = {}
    if self.turn then
        data.turn = self.turn.slotNumber
    end

    for key, player in pairs(self.players) do
        player.player:SetPrivateNetworkedData(TexasPoker_Settings.storageKey .. 'short', data)
    end

    for key, player in pairs(self.spectating) do
        key:SetPrivateNetworkedData(TexasPoker_Settings.storageKey .. 'short', data)
    end
end

function poker:PlayerNetwork(player)
    local data = self:GetData()
    player:SetPrivateNetworkedData(TexasPoker_Settings.storageKey, data)
end

function poker:UpdatePlayers()
    local data = self:GetData()
    if self.roundState == TexasPoker_Enums.rounds['payOut'] or self.roundState == TexasPoker_Enums.rounds['endGame'] then
        for _, player in pairs(self.players) do
            for key, value in pairs(player.cards) do
                data.players[player.name].cards[key] = value.id
            end
        end

        for key, player in pairs(self.players) do
            player.player:SetPrivateNetworkedData(TexasPoker_Settings.storageKey, data)
        end

        for key, player in pairs(self.spectating) do
            key:SetPrivateNetworkedData(TexasPoker_Settings.storageKey, data)
        end
    else
        for key, player in pairs(self.players) do
            for key, value in pairs(player.cards) do
                data.players[player.name].cards[key] = value.id
            end
            player.player:SetPrivateNetworkedData(TexasPoker_Settings.storageKey, data)

            for key, value in pairs(player.cards) do
                data.players[player.name].cards[key] = 'ca'
            end
        end

        for key, player in pairs(self.spectating) do
            key:SetPrivateNetworkedData(TexasPoker_Settings.storageKey, data)
        end
    end
end

function poker:NextPlayer(nbr)
    local NextClosest = {}
    for key, player in pairs(self.players) do
        if player.slotNumber ~= nbr then
            local newNumber = player.slotNumber
            local distance = 0
            while newNumber ~= nbr do
                distance = distance + 1
                newNumber = UMaths.Wrap(newNumber - 1, 1, self.maxPlayers + 1)
            end
            if distance < (NextClosest.distance or math.huge) then
                NextClosest.number = player.slotNumber
                NextClosest.distance = distance
            end
        end
    end
    return NextClosest.number
end

function poker:SpectateGame(player, value)
    self.spectating[player] = true
    self:PlayerNetwork(player)
    self:UpdatePlayers()
    self.spectateJoinedEvent:Trigger(player)
    return true
end

function poker:PlayerJoin(player, value)
    local freeSlot = self:FindFreeSlot()
    if not freeSlot then
        return false
    end

    self.spectating[player] = nil

    value = math.min(value, player:GetResource(self.resource))
    if (value or 0) < self.minBuyin then
        return false
    end

    value = math.min(value, self.maxBuyin, player:GetResource(self.resource))

    self.players[player] = {
        name = player.name,
        player = player,
        slotNumber = freeSlot,
        cards = {},
        state = TexasPoker_Enums.PlayerStates['Fold'],
        roundBet = 0,
        payAmount = 0,
        stillOwe = 0
    }

    player:SetResource(self.resource .. self.additionString, value)
    player:AddResource(self.resource, -value)

    self:PlayerNetwork(player)
    self:UpdatePlayers()
    self.playerJoinedEvent:Trigger(player)
    return true
end

function poker:PlayerLeave(player)
    if self.players[player] then
        self.playerLeftEvent:Trigger(player)
    end

    if self.spectating[player] then
        self.spectateLeftEvent:Trigger(player)
    end

    self.players[player] = nil
    self.spectating[player] = nil
    local Rvalue = player:GetResource(self.resource .. self.additionString)
    player:SetResource(self.resource .. self.additionString, 0)
    player:AddResource(self.resource, Rvalue)

    player:SetPrivateNetworkedData(TexasPoker_Settings.storageKey, nil)
    self:UpdatePlayers()
end

function poker:FindPlayerFromSlot(number)
    for key, value in pairs(self.players) do
        if value.slotNumber == number then
            return value
        end
    end
end

function poker:ResetData()
    self.showCards = false
    self.deck:Shuffle()
    self.showingCards = {}
    self.turn = nil
    self.bigBetPlayer = nil
    self.roundBets = {}
    self.roundBet = 0
    self.centerCards = {}
    local newplayers = {}
    for key, value in pairs(self.players) do
        table.insert(newplayers, value)
    end
    self.pots = {{value = 0, players = newplayers}}
    self.currentPot = self.pots[1]
    self.winnings = nil
    self.hup = false
    for key, player in pairs(self.players) do
        player.cards = {}
        player.state = TexasPoker_Enums.PlayerStates['None']
        player.payAmount = 0
        player.stillOwe = 0
        player.roundBet = 0
    end
end

function poker:StartGame()
    self.oldDealer = self.dealer
    self.dealer = self.dealer or {}
    self.dealer = self:FindPlayerFromSlot(self:NextPlayer(self.dealer.slotNumber or 1))
    self:ResetData()
    for index, value in ipairs(self.deck.inventory) do
        self.usableCards[index] = value
    end
    local playerCount = 0
    for key, value in pairs(self.players) do
        playerCount = playerCount + 1
    end
    if playerCount == 2 then
        self.hup = true
    end
    self:UpdatePlayers()
end

function poker:GetPlayers()
    return self.players
end

function poker:Fold(player)
    if self:canBet() and self.turn == self.players[player] then
        self.players[player].state = TexasPoker_Enums.PlayerStates['Fold']
    end
end

function poker:AddToPot(bets)
    local function NewPot(allInPlayers)
        local NewPlayers = {}
        for key, bet in pairs(bets) do
            local player = bet.player
            if
                player.state ~= TexasPoker_Enums.PlayerStates.Fold and (allInPlayers[player.name] and bet.value ~= 0) or
                    not allInPlayers[player.name]
             then
                table.insert(NewPlayers, player)
            end
        end
        local newPot = {value = 0, players = NewPlayers}
        self.currentPot = newPot
        table.insert(self.pots, newPot)
    end

    local function CheckAllIn()
        local allInPlayers = {}
        local isAllIn = false
        for index, bet in ipairs(bets) do
            local player = bet.player
            if player and player.state ~= TexasPoker_Enums.PlayerStates.Fold and self:GetCash(player.player) == 0 and player.player then
                allInPlayers[player.name] = true
                isAllIn = true
            end
        end
        return isAllIn, allInPlayers
    end

    local function AddValue(value)
        local potValue = self.currentPot.value
        self.currentPot.value = potValue + value
    end

    local function RemoveValueFromBets(value)
        for key, bet in ipairs(bets) do
            local betvalue = bet.value
            bet.value = betvalue - value
        end
    end

    local function PopZeroBets()
        for i = #bets, 1, -1 do
            local bet = bets[i]
            if bet then
                if bet.value <= 0 then
                    table.remove(bets, i)
                end
            end
        end
    end

    PopZeroBets()
    table.sort(
        bets,
        function(a, b)
            return a.value < b.value
        end
    )

    while #bets > 0 do
        local value = bets[1].value
        RemoveValueFromBets(value)
        AddValue(value * #bets)
        local Allin, allInPlayers = CheckAllIn()

        if Allin then
            NewPot(allInPlayers)
        end

        PopZeroBets()
    end

    -- print('>> POTS')
    -- for index, value in ipairs(self.pots) do
    --     print(index, value.value)
    --     for i, player in pairs(value.players) do
    --         print('  - ' .. player.name)
    --     end
    -- end
    -- print('>>>>>>>>>>>>>>>>>>>>>>>>>>>')
end

function poker:AddToPots()
    local bets = {}
    for key, player in pairs(self.players) do
        table.insert(bets, {value = player.roundBet or 0, player = player})
    end
    for key, value in pairs(self.roundBets) do
        if not self.players[key] then
            table.insert(bets, {value = value or 0, player = key})
        end
    end

    self:AddToPot(bets)
    self:UpdatePlayers()
end

function poker:PayUp(player, raiseAmount, isSmallBlind)
    local playerData = self.players[player]
    local callAmount = self.roundBet - playerData.roundBet
    local cash = player:GetResource(self.resource .. self.additionString)

    raiseAmount = raiseAmount or 0
    if not isSmallBlind then
        local maxBet = self:GetMaxAvailableBet(player, callAmount)
        raiseAmount = math.min(raiseAmount, maxBet)
    end

    local payAmount = callAmount + raiseAmount
    payAmount = math.min(payAmount, cash) -- Can't pay more than what they have

    --[[
    print("Player: <".. playerData.name..">")
    print("callAmount:", callAmount)
    print("raiseAmount:", raiseAmount)
    print("payAmount:", payAmount)
    print("oldRoundBet:", playerData.roundBet)
    ]]
    player:RemoveResource(self.resource .. self.additionString, payAmount)
    playerData.roundBet = (playerData.roundBet or 0) + payAmount
    self.roundBets[player] = playerData.roundBet

    if playerData.roundBet > self.roundBet then
        self.roundBet = playerData.roundBet
    end

    --[[
    print("newPlayerBet", playerData.roundBet)
    print("tableRoundBet:", self.roundBet)
    print("\n")
    ]]
end

function poker:Raise(player, raiseAmount, isSmallBlind)
    if
        (self:canBet() and self.turn == self.players[player] and
            self.players[player].state == TexasPoker_Enums.PlayerStates['None']) or
            isSmallBlind
     then
        --print(">> Server Raise <<")
        self:PayUp(player, raiseAmount, isSmallBlind)

        for key, value in pairs(self.players) do
            if
                value.state == TexasPoker_Enums.PlayerStates['Call'] and value.roundBet < self.players[player].roundBet and
                    self:GetCash(value.player) ~= 0
             then
                value.state = TexasPoker_Enums.PlayerStates['None']
            end
        end

        self.players[player].state = TexasPoker_Enums.PlayerStates['Call']
    end
end

function poker:Call(player)
    if
        self:canBet() and self.turn == self.players[player] and
            self.players[player].state == TexasPoker_Enums.PlayerStates['None']
     then
        self:PayUp(player)
        self.players[player].state = TexasPoker_Enums.PlayerStates['Call']
    end
end

function poker:ResetRound()
    self.roundBet = 0
    self.roundBets = {}
    for key, value in pairs(self.players) do
        value.roundBet = 0
    end
end

function poker:BettingRound(reset, turn)
    Task.Wait(1)
    local function countPlayers()
        local count = 0
        for key, player in pairs(self.players) do
            if player.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
                count = count + 1
            end
        end
        return count
    end

    local function checkAllPlayers()
        for key, player in pairs(self.players) do
            if player.state == TexasPoker_Enums.PlayerStates['None'] then
                return true
            end
        end
        return false
    end

    local function HandleUpdate(player)
        if not player then
            return
        end
        local endTime = time() + self.turnTime
        while self.players[player.player] and
            (player.state == TexasPoker_Enums.PlayerStates['None'] and time() < endTime) do
            self:ShortUpdatePlayers()
            Task.Wait(1)
        end
        if player.state == TexasPoker_Enums.PlayerStates['None'] then
            player.state = TexasPoker_Enums.PlayerStates['Fold']
        end
    end

    local function CheckNulls()
        for key, player in pairs(self.players) do
            if player.state ~= TexasPoker_Enums.PlayerStates['Call'] then
                return false
            end
        end
        return true
    end

    if reset then
        for key, player in pairs(self.players) do
            if
                player.state ~= TexasPoker_Enums.PlayerStates['Fold'] and self:GetCash(player.player) > 0 and
                    #self:potentialPlayers() > 1
             then
                player.state = TexasPoker_Enums.PlayerStates['None']
            end
        end
    end

    if CheckNulls() then
        return true
    end

    if countPlayers() <= 1 then
        return false
    end

    self.turn = turn or self:FindNextActivePlayer(self.dealer, self.dealer)
    if self.hup and self.roundState == TexasPoker_Enums.rounds['firstBetting'] then
        self.turn = self.dealer
    end
    self:UpdatePlayers()

    while checkAllPlayers() do
        HandleUpdate(self.turn)
        if countPlayers() <= 1 then
            Task.Wait(2)
            return false
        end
        if checkAllPlayers() then
            self.turn = self:FindNextActivePlayer(self.turn, self.turn)
        end
        self:UpdatePlayers()
    end
    self.turn = nil
    self:UpdatePlayers()
    Task.Wait(2)
    return true
end

function poker:HandCash(player, potIndex, divisible)
    divisible = divisible or 1
    local moneyamount = math.floor(self.pots[potIndex].value / divisible)

    if moneyamount == 0 then
        return
    end -- If the pot is 0 then don't continue

    self.winnings[potIndex] = self.winnings[potIndex] or {}
    table.insert(self.winnings[potIndex], player.name)
    player.player:AddResource(self.resource .. self.additionString, moneyamount)
    --print(potIndex, player.player.name, moneyamount)
    if self.showCards then
        self.showingCards[player] = true
    end
end

function poker:ShowHands()
    local function GetCount()
        local count = 0
        for key, value in pairs(self.players) do
            if value.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
                count = count + 1
            end
            if count > 1 then
                return true
            end
        end
    end
    if GetCount() then
        self.showCards = true
    end
end

function poker:PayOut()
    self.winnings = {}
    local ratings = {}
    local function GetCount()
        local count = 0
        for key, value in pairs(self.players) do
            if value.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
                count = count + 1
            end
            if count > 1 then
                return true
            end
        end
    end

    if not GetCount() then
        for key, value in pairs(self.players) do
            if value.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
                for key, pot in pairs(self.pots) do
                    self:HandCash(value, key, 1)
                end
                return
            end
        end
    end

    for key, player in pairs(self.players) do
        if player.state ~= TexasPoker_Enums.PlayerStates['Fold'] then
            local Cards = {}
            local highCards = {}

            for index, value in ipairs(player.cards) do
                table.insert(Cards, value)
                table.insert(highCards, value)
            end
            for index, value in ipairs(self.centerCards) do
                table.insert(Cards, value)
                table.insert(highCards, value)
            end
            table.sort(
                Cards,
                function(a, b)
                    return a.data.number > b.data.number
                end
            )
            local bestHand, HandValue, handScore = TexasPoker_EvaluatorOnline.EvaluateDeck(Cards)

            if HandValue == 9 then
                if (bestHand[1].data.number ~= bestHand[2].data.number) then
                    print('Something is not right')
                end
            end

            for index, value in ipairs(bestHand) do
                for i = #highCards, 1, -1 do
                    if highCards[i] == value then
                        table.remove(highCards, i)
                    end
                end
            end

            table.sort(
                highCards,
                function(a, b)
                    return a.data.number > b.data.number
                end
            )

            local highcardCount = 5 - #bestHand
            for i = #highCards, highcardCount + 1, -1 do
                table.remove(highCards, i)
            end
            table.insert(
                ratings,
                {
                    ['hand'] = bestHand,
                    ['rank'] = HandValue,
                    ['score'] = handScore,
                    ['player'] = player,
                    ['allCards'] = Cards,
                    ['HighCards'] = highCards
                }
            )
        end
    end

    for key, pot in pairs(self.pots) do
        for i = #pot.players, 1, -1 do
            if pot.players[i].state == TexasPoker_Enums.PlayerStates['Fold'] then
                table.remove(pot.players, i)
            end
        end
        local FilteredHands = {}
        for key, player in pairs(pot.players) do
            for key, Hand in pairs(ratings) do
                if Hand.player == player then
                    table.insert(FilteredHands, Hand)
                end
            end
        end

        table.sort(
            FilteredHands,
            function(a, b)
                if a.rank == b.rank then
                    if a.score == b.score then
                        for index, value in ipairs(a.HighCards) do
                            if not (a.HighCards[index] == b.HighCards[index]) then
                                return a.HighCards[index].data.number > b.HighCards[index].data.number
                            end
                        end
                    end
                    return a.score > b.score
                end
                return a.rank < b.rank
            end
        )
        local highestHands = {}

        if debugMode then
            local printString = ''

            printString = printString .. '______________\n'
            printString = printString .. 'centerCards\n'
            printString = printString .. '______________\n'
            for key, card in pairs(self.centerCards) do
                printString = printString .. card.id .. '|'
            end
            printString = printString .. '\n'
            printString = printString .. '______________\n'
            for key, value in pairs(FilteredHands) do
                printString = printString .. value.player.name
                printString = printString .. '\n'
                printString = printString .. '______________\n'
                for key, card in pairs(value.hand) do
                    printString = printString .. card.id .. '|'
                end
                printString = printString .. '\n'
                for key, card in pairs(value.player.cards) do
                    printString = printString .. card.id .. '|'
                end
                printString = printString .. '\n'
                for key, card in pairs(value.HighCards) do
                    printString = printString .. card.id .. '|'
                end
                printString = printString .. '\n'
                printString = printString .. value.score .. '\n'
                printString = printString .. value.rank .. '\n'

                printString = printString .. '______________\n'
            end
            print(printString)
        end
        local function MatchIndex(hand)
            if hand.rank ~= FilteredHands[1].rank then
                return false
            end
            if hand.score ~= FilteredHands[1].score then
                return false
            end

            for index, cardA in ipairs(hand.HighCards) do
                local cardB = FilteredHands[1].HighCards[index]
                if cardA.data.number ~= cardB.data.number then
                    return
                end
            end
            return true
        end
        for key, hand in pairs(FilteredHands) do
            if MatchIndex(hand) then
                table.insert(highestHands, hand)
            end
        end

        for _, value in pairs(highestHands) do
            self:HandCash(value.player, key, #highestHands)
        end
    end
end

poker.rounds = {
    [TexasPoker_Enums.rounds['waiting']] = function(self)
        self:ResetData()
        self:UpdatePlayers()
        while self:GetPlayerCount() < self.minPlayers do
            Task.Wait()
        end
        local endTime = time() + 5
        while time() < endTime do
            if self:GetPlayerCount() < self.minPlayers then
                self:ChangeRound(TexasPoker_Enums.rounds['dealing'])
            end
            Task.Wait()
        end
        self:KickBroke()
        self:StartGame()
        self:ChangeRound(TexasPoker_Enums.rounds['dealing'])
    end,
    [TexasPoker_Enums.rounds['dealing']] = function(self)
        self:ResetRound()
        self.newGameEvent:Trigger(self)
        self.turn = self.dealer
        local nextPlayer = self:FindNextActivePlayer(self.dealer, self.dealer, true)
        if self.hup then
            nextPlayer = self:FindNextActivePlayer(nextPlayer, nextPlayer, true)
        end
        if nextPlayer then
            self.turn = nextPlayer
            self:Raise(self.turn.player, self.smallBet, true)
            nextPlayer.state = TexasPoker_Enums.PlayerStates['None']
            local secondPlayer = self:FindNextActivePlayer(nextPlayer, nextPlayer, true)
            if secondPlayer then
                --print(">> Big bet:", secondPlayer.name)
                self.turn = secondPlayer
                self.bigBetPlayer = secondPlayer.player
                self:Raise(self.turn.player, self.smallBet, true)
                secondPlayer.state = TexasPoker_Enums.PlayerStates['None']
                self.turn = self:FindNextActivePlayer(secondPlayer, secondPlayer, true)
            end
        end
        self:UpdatePlayers()
        Task.Wait(1)
        self:ChangeRound(TexasPoker_Enums.rounds['preFlop'])
    end,
    [TexasPoker_Enums.rounds['preFlop']] = function(self)
        self:HandCardsOut()
        self:UpdatePlayers()
        Task.Wait(2)
        self:ChangeRound(TexasPoker_Enums.rounds['firstBetting'])
    end,
    [TexasPoker_Enums.rounds['firstBetting']] = function(self)
        self:UpdatePlayers()
        if self:BettingRound(false, self.turn) then
            self:AddToPots()
            self:ChangeRound(TexasPoker_Enums.rounds['flop'])
            return
        end
        self:AddToPots()
        self:ChangeRound(TexasPoker_Enums.rounds['payOut'])
    end,
    [TexasPoker_Enums.rounds['flop']] = function(self)
        self:ResetRound()
        self:DrawCard()
        self:DrawCard()
        self:DrawCard()
        self:ChangeRound(TexasPoker_Enums.rounds['secondBetting'])
    end,
    [TexasPoker_Enums.rounds['secondBetting']] = function(self)
        self:ResetRound()
        self:UpdatePlayers()
        if self:BettingRound(true) then
            self:AddToPots()
            self:ChangeRound(TexasPoker_Enums.rounds['turn'])
            return
        end
        self:AddToPots()
        self:ChangeRound(TexasPoker_Enums.rounds['payOut'])
    end,
    [TexasPoker_Enums.rounds['turn']] = function(self)
        self:ResetRound()
        self:DrawCard()
        self:ChangeRound(TexasPoker_Enums.rounds['thirdBetting'])
    end,
    [TexasPoker_Enums.rounds['thirdBetting']] = function(self)
        self:ResetRound()
        self:UpdatePlayers()
        if self:BettingRound(true) then
            self:AddToPots()
            self:ChangeRound(TexasPoker_Enums.rounds['river'])
            return
        end
        self:AddToPots()
        self:ChangeRound(TexasPoker_Enums.rounds['payOut'])
    end,
    [TexasPoker_Enums.rounds['river']] = function(self)
        self:ResetRound()
        self:DrawCard()
        self:ChangeRound(TexasPoker_Enums.rounds['fourthBetting'])
    end,
    [TexasPoker_Enums.rounds['fourthBetting']] = function(self)
        self:ResetRound()
        self:UpdatePlayers()
        if self:BettingRound(true) then
            self:AddToPots()
            self:ChangeRound(TexasPoker_Enums.rounds['payOut'])
            return
        end
        self:AddToPots()
        self:ChangeRound(TexasPoker_Enums.rounds['payOut'])
    end,
    [TexasPoker_Enums.rounds['payOut']] = function(self)
        self:ResetRound()
        self.turn = nil

        Task.Wait(1)
        self:ShowHands()
        self:PayOut()
        self:UpdatePlayers()

        Task.Wait(5)
        self:UpdatePlayers()
        self:ChangeRound(TexasPoker_Enums.rounds['endGame'])
    end,
    [TexasPoker_Enums.rounds['endGame']] = function(self)
        Task.Wait(1)
        self:UpdatePlayers()
        Task.Wait(5)
        self:KickBroke()
        self:ResetRound()
        self.centerCards = {}
        self:ChangeRound(TexasPoker_Enums.rounds['waiting'])
    end
}
return poker
