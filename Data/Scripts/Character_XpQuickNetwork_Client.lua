local Pkey = 'Cxp'
local LOCAL_PLAYER = Game.GetLocalPlayer()

while not _G['Character.EquipAPI'] do
    Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdateData(character, xp) 
    local Level = character:GetComponent('Level')
    Level:SetXP(xp)
end 

function UpdatedEvent(_, key)
    if key == Pkey then
        local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
        if character then
            UpdateData(character, LOCAL_PLAYER:GetResource(Pkey))
        end
    end
end 

if EquipAPI.GetCurrentCharacter(LOCAL_PLAYER) then  
    UpdateData(EquipAPI.GetCurrentCharacter(LOCAL_PLAYER),  LOCAL_PLAYER:GetResource(Pkey))
end
LOCAL_PLAYER.resourceChangedEvent:Connect(UpdatedEvent)
