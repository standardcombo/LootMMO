local Pkey = 'Cxp'
local LOCAL_PLAYER = Game.GetLocalPlayer()

while not _G['Character.EquipAPI'] do
    Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdatedEvent(_, key)
    if key == Pkey then
        local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
        if character then
            local Level = character:GetComponent('Level')
            Level:SetXP(LOCAL_PLAYER:GetResource(Pkey))
        end
    end
end

LOCAL_PLAYER.resourceChangedEvent:Connect(UpdatedEvent)
