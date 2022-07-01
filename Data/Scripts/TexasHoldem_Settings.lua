local Settings = {
    baseCash = 50000, -- How much money a player starts out with when they play poker for the very first time.
    maxPlayers = 10, -- Max number of players that can play at one table.
    minPlayers = 2, -- The min number of players required before a poker game will start.
    turnTime = 15, -- How long a player has to take their turn.
    smallBet = 500, -- The small blind that a player will have to pay at the start of round.
    minBuyin = 2000, -- The minimum amount of money a player has to have in order to join a table.
    maxBuyin = 200000, -- The max amount of money a player can bring to a table.
    storageKey = "TexasPoker", -- Storage key used for private networed data.
    resource = "Cash", -- Resource used to store money.
    additionString = "Pkr", -- Do not change.
    tourneyCountDown = 15 -- How long players have to enter through the portal before the tournamaent starts.
}

return Settings