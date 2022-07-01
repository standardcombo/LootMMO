local TexasPoker_Enums = require(script:GetCustomProperty('TexasPoker_Enums'))
local function BypassLoop(fuc)
    fuc()
end

if not _G.LoopBypass then
    _G.LoopBypass = Events.Connect('LoopBypass', BypassLoop)
end

local function clone(t)
    local n = {}
    for i = 1, #t do
        n[i] = t[i]
    end
    return n
end

local function insertvalue(t, v)
    for j = 1, #t do
        table.insert(t[j], 1, v)
    end
end

local function copytable(t1, t2)
    for j, v in ipairs(t2) do
        table.insert(t1, v)
    end
end

function SplitCard(card)
    return card.data.number, card.data.suit.index
end

function SplitHand(hand)
    local num = {}
    local suit = {}
    for index, card in ipairs(hand) do
        local cNum, cSuit = SplitCard(card)
        num[index] = cNum
        suit[index] = cSuit
    end
    return num, suit
end

--Calculates the Rank of a 5 card Poker hand using bit manipulations.
function RankPokerHand(hand)
    local hands = {
        'Four of a kind',
        'Straight Flush',
        'Straight',
        'Flush',
        'High Card',
        '1 Pair',
        '2 Pair',
        'Royal Flush',
        '3 of a Kind',
        'Full House'
    }

    local num, suit = SplitHand(hand)
    if #hand <= 2 then
        if num[1] == num[2] then
            return TexasPoker_Enums.rankings['1 Pair']
        else
            return TexasPoker_Enums.rankings['High Card']
        end
    end

    local offset
    local position = 0
    local hankchart = 1 << num[1] | 1 << num[2] | 1 << num[3] | 1 << num[4] | 1 << num[5]

    for i = 1, #num do
        offset = 2 ^ (num[i] * 4)
        local val = (math.floor((position / offset)) & 15)
        position = math.floor(offset * ((val) + 1) + position)
    end

    local subval = 1
    if (hankchart / (hankchart & -hankchart) == 31) or (hankchart == 16444) then
        subval = 3
    end
    position = position % 15 - subval

    local newval = 0

    local isSame = true

    for i = 1, #suit do
        if suit[1] ~= suit[i] then
            isSame = false
        end
    end

    if isSame then
        newval = 1
    end

    local otherval = 1
    if (hankchart == 31744) then
        otherval = -5
    end

    position = position - newval * otherval
    position = position + 1
    assert(TexasPoker_Enums.rankings[hands[position]])
    return TexasPoker_Enums.rankings[hands[position]]
end

function ReturnRankCards(deck)
    local cardAmounts = {
        [TexasPoker_Enums.rankings['Royal Flush']] = 5,
        [TexasPoker_Enums.rankings['Straight Flush']] = 5,
        [TexasPoker_Enums.rankings['Four of a kind']] = 4,
        [TexasPoker_Enums.rankings['Full House']] = 5,
        [TexasPoker_Enums.rankings['Flush']] = 5,
        [TexasPoker_Enums.rankings['Straight']] = 5,
        [TexasPoker_Enums.rankings['3 of a Kind']] = 3,
        [TexasPoker_Enums.rankings['2 Pair']] = 4,
        [TexasPoker_Enums.rankings['1 Pair']] = 2,
        [TexasPoker_Enums.rankings['High Card']] = 1
    }

    local rank = RankPokerHand(deck)
    if rank == TexasPoker_Enums.rankings['High Card'] then
        local highestCard = 0
        local returnCard = {}
        for key, card in pairs(deck) do
            if highestCard < card.data.number then
                highestCard = card.data.number
                returnCard = {card}
            end
        end
        return rank, returnCard
    end
    local neededCards = cardAmounts[rank]
    if neededCards == 5 then
        return rank, deck
    end

    if not neededCards then
        return rank, deck
    end
    if #deck < neededCards then
        return rank, deck
    end

    local returnCards = {}

    for i = 1, #deck do
        local newDeck = clone(deck)
        newDeck[i] = {data = {number = 15, suit = 'Z'}}
        local newRank = RankPokerHand(newDeck)
        if rank ~= newRank then
            table.insert(returnCards, deck[i])
        end
        if #returnCards >= neededCards then
            return rank, returnCards
        end
    end
    return rank, returnCards
end

function RankHandScore(cards)
    local totalHand = 0
    for key, value in pairs(cards) do
        totalHand = totalHand | (1 << value.data.number)
    end
    return totalHand
end

function GenerateCombination(originalTable, combinesize)
    local combinationTable = {}
    if #originalTable < combinesize then
        return combinationTable
    end
    if combinesize == 1 then
        for i = 1, #originalTable do
            table.insert(combinationTable, {originalTable[i]})
        end
    else
        local copyOriginalTable = clone(originalTable)
        for i = 1, #originalTable - 1 do
            table.remove(copyOriginalTable, 1)
            local mergeTable = GenerateCombination(copyOriginalTable, combinesize - 1)
            insertvalue(mergeTable, originalTable[i])
            copytable(combinationTable, mergeTable)
        end
    end

    return combinationTable
end

function BestHand(possibleCombinations)
    local bestHand = {}
    local bestRank = 9999
    local handValue = 0

    for index, cards in ipairs(possibleCombinations) do
        local rank = RankPokerHand(cards)
        if rank < bestRank then
            local _, neededCards = ReturnRankCards(cards)
            bestHand = neededCards
            bestRank = rank
            handValue = RankHandScore(neededCards)
        elseif rank == bestRank then
            local _, neededCards = ReturnRankCards(cards)
            local currenthighest = RankHandScore(neededCards)
            if handValue < currenthighest then
                bestHand = neededCards
                bestRank = rank
                handValue = currenthighest
            end
        end
    end
    return bestHand, bestRank, handValue
end

local evaluation = {}

function evaluation.EvaluateDeck(deck)
    if not deck then
        return
    end
    table.sort(
        deck,
        function(a, b)
            return a.data.number > b.data.number
        end
    )
    local possibleCombinations = GenerateCombination(deck, 5)
    if #possibleCombinations == 0 then
        possibleCombinations = GenerateCombination(deck, 2)
    end
    local bestCombo, HandRank, HandScore = BestHand(possibleCombinations)
    return bestCombo, HandRank, HandScore
end

function evaluation.CompareHand(hand1, hand2)
    local HandRank = TexasPoker_Enums.WinChart

    if hand1.rank == hand2.rank then
        if hand1.score == hand2.score then
            local function GetHighCards(allCards)
                local highest = 0
                for key, card in pairs(allCards or {}) do
                    highest = math.max(card.data.number, highest)
                end
                return highest
            end

            local high1 = GetHighCards(hand1.allCards)
            local high2 = GetHighCards(hand2.allCards)
            if high1 == high2 then
                return HandRank.Tie
            end
            if high1 > high2 then
                return HandRank.Win
            end
            return HandRank.Lose
        end
        if hand1.score > hand2.score then
            return HandRank.Win
        end
        return HandRank.Lose
    end

    if hand1.rank < hand2.rank then
        return HandRank.Win
    end
    return HandRank.Lose
end

function evaluation.GetHandStrength(deck, maincards, allCards)
    local allCards2 = {}
    local mainCards = {}
    copytable(mainCards, maincards)
    copytable(allCards2, allCards)

    local function MergeDeck(curDeck)
        local newDeck = {}
        for index, card in ipairs(curDeck) do
            table.insert(newDeck, card)
        end
        for index, card in ipairs(mainCards or {}) do
            table.insert(newDeck, card)
        end
        return newDeck
    end

    local mainDeck = MergeDeck(deck)
    for i = #allCards2, 1, -1 do
        for key, card in pairs(mainDeck) do
            if allCards2[i] then
                local num, suit = SplitCard(card)
                local num2, suit2 = SplitCard(allCards2[i])

                if num == num2 and suit == suit2 then
                    table.remove(allCards2, i)
                end
            end
        end
    end

    local mainCombo, mainRank, MainScore = evaluation.EvaluateDeck(mainDeck)
    local GenTable = GenerateCombination(allCards2, 2)

    local wins = 0
    local losses = 0
    local ties = 0

    local HandRank = TexasPoker_Enums.WinChart
    local Handfunction = {
        [HandRank.Win] = function()
            wins = wins + 1
        end,
        [HandRank.Lose] = function()
            losses = losses + 1
        end,
        [HandRank.Tie] = function()
            ties = ties + 1
        end
    }

    for i = 1, #GenTable do
        local value = GenTable[i]
        Events.Broadcast(
            'LoopBypass',
            function()
                if (i % 50 == 0) then
                    Task.Wait()
                end
                local Deck = MergeDeck(value)
                local newCombo, newRank, newScore = evaluation.EvaluateDeck(Deck)

                local hand =
                    evaluation.CompareHand(
                    {hand = mainCombo, rank = mainRank, score = MainScore, allCards = mainDeck},
                    {hand = newCombo, rank = newRank, score = newScore, allCards = Deck}
                )
                if Handfunction[hand] then
                    Handfunction[hand]()
                end
            end
        )
    end

    return {total = #GenTable, wins = wins, losses = losses, ties = ties}
end

evaluation.DirectEvaluation = RankPokerHand
evaluation.RankHandScore = RankHandScore
evaluation.neededCards = ReturnRankCards
evaluation.SplitCard = SplitCard
return evaluation
