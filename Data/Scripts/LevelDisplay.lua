local TEXT = script.parent
assert(TEXT:IsA('UIText'), 'parent needs to be a text')
local LOCAL_PLAYER = Game.GetLocalPlayer()
local CequipApi = _G['Character.EquipAPI']
local LevelUpEvent = nil

function LevelChanged(level, newlevel)
    TEXT.text = tostring(newlevel)
end

function PlayerEquipped(character, player)
    if player ~= LOCAL_PLAYER then
        return
    end

    local level = character:GetComponent('Level')
    LevelChanged(level, level:GetLevel())
    level.levelUpEvent:Connect(LevelChanged)
end

function PlayerUnequipped(character, player)
    if player ~= LOCAL_PLAYER then
        return
    end
    if LevelUpEvent then
        LevelUpEvent:Disconnect()
        LevelUpEvent = nil
    end
end

CequipApi.playerEquippedEvent:Connect(PlayerEquipped)
CequipApi.playerUnequippedEvent:Connect(PlayerUnequipped)
