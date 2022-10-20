while not _G.CC_Util do
    Task.Wait()
end 
local LuaEvent = _G.CC_Util:WaitForlibrary('Lua Event')
local TP_Client = {
    updateEvent = LuaEvent.New(),
    newGameEvent = LuaEvent.New(),
    stateChangedEvent = LuaEvent.New(),
    poolChangedEvent = LuaEvent.New(),
    turnChangeEvent = LuaEvent.New(),
    potChangedEvent = LuaEvent.New(),
    newPotEvent = LuaEvent.New(),
    removePotEvent = LuaEvent.New(),
    dealerChangedEvent = LuaEvent.New(),
    playerJoinedEvent = LuaEvent.New(),
    playerLeftEvent = LuaEvent.New(),
    playerActionChangedEvent = LuaEvent.New(),
    playerStateChangedEvent = LuaEvent.New(),
    playerBetChangedEvent = LuaEvent.New(),
    gameEndEvent = LuaEvent.New(),
    winningAnnouncedEvent = LuaEvent.New(),
    showCardsEvent = LuaEvent.New(),
    preMoveChangedEvent = LuaEvent.New()
}
return TP_Client