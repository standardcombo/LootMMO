if _G.PokerTournamentActive then
    return
end

local TexasPoker_API = require(script:GetCustomProperty('TexasPoker_API'))
local Root = script:GetCustomProperty('Root'):WaitForObject()
local newGame = TexasPoker_API.NewGame({id = Root.id})

local Chairs = script:GetCustomProperty('Chairs'):WaitForObject()
local chairChild = Chairs:GetChildren()
local Seats = {}
local hasBeenDestroyed = false

for i = 1, #Chairs:GetChildren() do
    Seats[i] = {
        chair = chairChild[i],
        occupied = false
    }
end

local function InSeat(player)
    for index, seat in ipairs(Seats) do
        if seat.occupied == player then
            return seat
        end
    end
end

local function PlayerLeft(player)
    local seat = InSeat(player)
    if seat then
        if Object.IsValid(player) then
            if Object.IsValid(seat.chair) and not hasBeenDestroyed then
                local chairTransform = seat.chair:GetWorldTransform()
                player:SetWorldPosition(
                    chairTransform:GetPosition() + Vector3.UP * 100 - chairTransform:GetRightVector() * 100
                )
            end

            player:Detach()
            
            if _G.StanceStack then
        		_G.StanceStack.Remove(player, 'unarmed_sit_chair_upright', script.id)
	        else
	        	player.animationStance = 'unarmed_stance'
	        end
        end
        seat.occupied = false
    end
end

local function PlayerJoined(player, value)
    if InSeat(player) then
        if not TexasPoker_API.PlayerJoin(newGame.id, player, value) then
            PlayerLeft(player)
        end
    end
end

local function AttempToJoin(player, id)
    if InSeat(player) then
        return
    end
    local function findFreeSeat()
        local freesets = {}
        for index, seat in ipairs(Seats) do
            if not seat.occupied or not Object.IsValid(seat.occupied) then
                table.insert(freesets, seat)
            end
        end
        if #freesets > 0 then
            local playerPos = player:GetWorldPosition()
            table.sort(
                freesets,
                function(a, b)
                    local smaller =
                        (a.chair:GetWorldPosition() - playerPos).sizeSquared <
                        (b.chair:GetWorldPosition() - playerPos).sizeSquared
                    return smaller
                end
            )
            return freesets[1]
        end
    end
    local freeset = findFreeSeat()
    Events.BroadcastToPlayer(player, 'Poker_SendInfo', TexasPoker_API.RequestInfo(newGame.id))
    if freeset then
        freeset.occupied = player
        player:AttachToCoreObject(freeset.chair:GetChildren()[1])
        
        if _G.StanceStack then
        	_G.StanceStack.Add(player, 'unarmed_sit_chair_upright', script.id)
        else
        	player.animationStance = 'unarmed_sit_chair_upright'
        end
    end
end

local function RequestToJoin(player, id, value)
    if id == Root.id then
        PlayerJoined(player, value)
    end
end

local function RequestToSit(player, id)
    if id == Root.id then
        AttempToJoin(player, id)
    end
end

local Events = {
    Game.playerLeftEvent:Connect(PlayerLeft),
    newGame.playerLeftEvent:Connect(PlayerLeft),
    newGame.spectateLeftEvent:Connect(PlayerLeft),
    Events.ConnectForPlayer('PokerTable_DeclineJoining', PlayerLeft),
    Events.ConnectForPlayer('PokerTable_JoinGame', RequestToJoin),
    Events.ConnectForPlayer('PokerTable_AttemptToJoin', RequestToSit)
}

Events[#Events + 1] =
    script.destroyEvent:Connect(
    function()
        hasBeenDestroyed = true

        for key, value in pairs(newGame.players) do
            PlayerLeft(value)
        end

        for index, seat in ipairs(Seats) do
            if Object.IsValid(seat.occupied) then
                PlayerLeft(seat.occupied)
            end
        end

        TexasPoker_API.GameEnd(newGame.id)

        for key, value in pairs(Events) do
            value:Disconnect()
        end
        newGame = nil
    end
)
