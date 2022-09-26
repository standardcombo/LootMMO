local EquipAPI = _G['Character.EquipAPI']
local LOCAL_PLAYER = Game.GetLocalPlayer()
local SLOTS = script:GetCustomProperty('Slots'):WaitForObject():GetChildren()

local slots = {}
for index, value in ipairs(SLOTS) do
    slots[index] = {}
    slots[index].icon = value:FindChildByName('icon')
    slots[index].count = value:FindChildByName('count')
    slots[index].Button = value:FindChildByName('Button')
end

local function CharacterEquipped(player)
    if player == LOCAL_PLAYER then
        local character = EquipAPI.GetCurrentCharacter(player)
        if character then
            
        end
    end
end
CharacterEquipped(LOCAL_PLAYER)
EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
