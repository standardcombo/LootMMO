local EquipAPI = _G['Character.EquipAPI']

local function ResourceUpdated(player, resource, value)
    if resource == "XP" then
        local character = EquipAPI.GetCurrentCharacter(player)
        if character then
            local level = character:GetComponent('Level')
            if level then
                level:SetXP(value)
            end
        end
    end
end
local function HookPlayerUp(player)
    player.resourceChangedEvent:Connect(ResourceUpdated)
end

for key, player in pairs(Game.GetPlayers()) do
    HookPlayerUp(player)
end
Game.playerJoinedEvent:Connect(HookPlayerUp)
