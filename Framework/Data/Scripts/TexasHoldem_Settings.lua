local Settings = {
    baseCash = 0, -- How much money a player starts out with when they play poker for the very first time.
    maxPlayers = 10, -- Max number of players that can play at one table.
    minPlayers = 2, -- The min number of players required before a poker game will start.
    turnTime = 15, -- How long a player has to take their turn.
    smallBet = 50, -- The small blind that a player will have to pay at the start of round.
    minBuyin = 200, -- The minimum amount of money a player has to have in order to join a table.
    maxBuyin = 20000, -- The max amount of money a player can bring to a table.
    storageKey = "TexasPoker", -- Storage key used for private networked data.
    resource = "Coins", -- Resource used to store money.
    additionString = "Pkr", -- Do not change.
    tourneyCountDown = 15 -- How long players have to enter through the portal before the tournament starts.
}

return Settings