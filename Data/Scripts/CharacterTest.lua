while not _G.CharacterContructor do
    Task.Wait()
end

local character = _G.CharacterContructor

function PLAYERJOINED(player)
    local newCharacter = character.NewCharacter()
    newCharacter:SetOwner(player)
end

for key, value in pairs(Game.GetPlayers()) do
    PLAYERJOINED(value)
end
Game.playerJoinedEvent:Connect(PLAYERJOINED)
