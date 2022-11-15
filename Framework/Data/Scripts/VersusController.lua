_G.VersusRegistered = {}
_G.VersusPlayers = {}
local VSpawns = script:GetCustomProperty("VersusSpawns"):WaitForObject()
local SpawnPoints = {
    [1] = VSpawns:FindChildByName("1"), -- p1 spawn
    [2] = VSpawns:FindChildByName("2"), -- p2 spawn
    [3] = VSpawns:FindChildByName("3"), -- return spawn
}
local Started = false
local Winner
local VersusTaskController
local p1Events
local p2Events

local function CheckListForPlayer(player)
    local BOOL = false
    for k,v in pairs(_G.VersusRegistered) do
        if v == player then 
            BOOL = true
        end
    end
    return BOOL
end

function AddVersusPlayer(player)
    
    if CheckListForPlayer(player) == false then
        print("player entered into vs registration")
        table.insert(_G.VersusRegistered, player)
        player:SetPrivateNetworkedData("VSR", "+")
        return
    end
    print("player already registered.")
end

function RemoveVersusPlayer(player)
    local key
    for k,v in ipairs(_G.VersusRegistered) do
        print("searching for player registration",k,v)
        if v == player then
            key = k
            break
        end
    end
    if key ~= nil then
        table.remove(_G.VersusRegistered, key)
        player:SetPrivateNetworkedData("VSR", "-")
    end
end

local function Disconnector()
    if p1Events then
        p1Events:Disconnect()
    end
    if p2Events then
        p2Events:Disconnect()
    end
end

local function DeathEvent(player)
    --print("player from versus died", player.name)
    if Object.IsValid(player) then player.team = 1 end
    Disconnector()
    RemoveVersusPlayer(player)
    if Winner == nil then
        for k,v in pairs(_G.VersusPlayers) do
            if v ~= player then
                Winner = v
            end
        end
        Events.Broadcast("EndVs", Winner)
    end
end

local function TelePortPlayers(p1,p2,state)

    if state == true then
        table.insert(_G.VersusPlayers, p1)
        table.insert(_G.VersusPlayers, p2)
        
        if Object.IsValid(p1) then
            p1:Spawn({position = SpawnPoints[1]:GetWorldPosition(),rotation = SpawnPoints[1]:GetWorldRotation()})
            p1Events = p1.diedEvent:Connect(DeathEvent)
            p1.team = 2
        end
        if Object.IsValid(p2) then
            p2:Spawn({position = SpawnPoints[2]:GetWorldPosition(),rotation = SpawnPoints[2]:GetWorldRotation()})
            p2Events =p2.diedEvent:Connect(DeathEvent)
            p2.team=3
        end
    else
        for  k,v in pairs(_G.VersusPlayers) do
            if Object.IsValid(v) and v.isDead == false and v.isSpawned == true then
                v:Spawn({position = SpawnPoints[3]:GetWorldPosition(), rotation = SpawnPoints[3]:GetWorldRotation()})
                v.team = 1
            end
        end
        Disconnector()
        _G.VersusPlayers = {}
        Task.Spawn(function()
            print("waiting to set started back to false")
            Task.Wait(10)
            Started = false
         end)
        
    end
end

local function VersusStarted()
    print("Starting a Versus Match")
    local player1 = _G.VersusRegistered[1]
    local player2 = _G.VersusRegistered[2]
    TelePortPlayers(player1,player2,true)
    --Events.BroadcastToAllPlayers('CreateNotification', player1.name.." Versus "..player2.name, {theme = 'Success', width = 775})
end

local function VersusEnded(winner)
    print("Ending a Versus Match", winner)
    if winner ~= nil then
        print("I should reward the winner", winner.name)
        winner:SetPrivateNetworkedData("VSR", "+")
        --we'll figure out a reward later
        --Events.BroadcastToAllPlayers('CreateNotification', winner.name.." Won the Vs-Match !", {theme = 'Success', width = 775})
        Winner= nil
    end
    local player1 = _G.VersusPlayers[1]
    local player2 = _G.VersusPlayers[2]
    Task.Spawn(function()
        Task.Wait(2)
        TelePortPlayers(player1,player2,false)
    end)
    

end

local function PlayerLeaveCheck(player)
    for k,v in ipairs(_G.VersusPlayers) do
        if v == player then
--          print("Player left during versus match")
            VersusEnded()
            break
        end
    end
    RemoveVersusPlayer(player)
end

local function TaskSpawner()
    VersusTaskController = Task.Spawn(function()
        --print("Checking Registered Table spam", #_G.VersusRegistered)
        if #_G.VersusRegistered >= 2 and Started == false then
            Started = true
            print("I should start a round, Lets give a countDown")
            Task.Spawn(function()
                --Events.BroadcastToAllPlayers('CreateNotification', "Versus Match Starting in 5 seconds.", {theme = 'Success', width = 775})
                Task.Wait(5)
                VersusStarted()
            end)
            
        end
    end)
    VersusTaskController.repeatCount = -1
    VersusTaskController.repeatInterval = 1
end

TaskSpawner()

Events.Connect("StartVS",VersusStarted)
Events.Connect("EndVs",VersusEnded)
Events.Connect("VSJoin", AddVersusPlayer) -- VsJoinYes
Events.Connect("VSLeave", RemoveVersusPlayer) -- VsleaveYes
Events.ConnectForPlayer("VS+", AddVersusPlayer)
Events.ConnectForPlayer("VS-", RemoveVersusPlayer)
Game.playerLeftEvent:Connect(PlayerLeaveCheck)