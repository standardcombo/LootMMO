local Enums = {}

Enums.rankings = {
    ['Royal Flush']     = 1,
    ['Straight Flush']  = 2,
    ['Four of a kind']  = 3,
    ['Full House']      = 4,
    ['Flush']           = 5,
    ['Straight']        = 6,
    ['3 of a Kind']     = 7,
    ['2 Pair']          = 8,
    ['1 Pair']          = 9,
    ['High Card']       = 10,
}

Enums.rankingNames = {
    [1]     ='Royal Flush' ,
    [2]     ='Straight Flush',
    [3]     ='Four of a kind',
    [4]     ='Full house',
    [5]     ='Flush',
    [6]     ='Straight',
    [7]     ='3 of a Kind',
    [8]     ='2 Pair',
    [9]     ='1 Pair',
    [10]    ='High Card',
}
Enums.grammerRankingNames = {
    [1]     ='A Royal Flush' ,
    [2]     ='A Straight Flush',
    [3]     ='Four of a kind',
    [4]     ='A Full House',
    [5]     ='A Flush',
    [6]     ='A Straight',
    [7]     ='Three of a Kind',
    [8]     ='Two Pair',
    [9]     ='One Pair',
    [10]    ='High Card',
}
  
Enums.playerActionsName = {
    [1] = "Fold",
    [2] = "Call",
    [3] = "Check",
    [7] = "All in",
    [4] = "Raise",
    [5] = "Leave",
    [6] = "Join",
}

Enums.playerActions = {
    ["Fold"]    = 1,
    ["Call"]    = 2,
    ["Check"]   = 3,
    ["Raise"]   = 4,
    ["Leave"]   = 5,
    ["Join"]    = 6,
    ["All_in"]  = 7,
}

Enums.rounds = {
    ["waiting"]         = 0,
    ["dealing"]         = 1,
    ["preFlop"]         = 2,
    ["firstBetting"]    = 3,
    ["flop"]            = 4,
    ["secondBetting"]   = 5,
    ["turn"]            = 6,
    ["thirdBetting"]    = 7,
    ["river"]           = 8,
    ["fourthBetting"]   = 9,
    ["payOut"]          = 10,
    ["endGame"]         = 11,
}
Enums.PlayerStates = {
    ["None"] = 1,
    ["Call"] = 2,
    ["Fold"] = 3,
}


Enums.WinChart = {
    ['Win'] = 1,
    ['Lose'] = 2,
    ['Tie'] = 3
}

return Enums