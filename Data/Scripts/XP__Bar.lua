local EquipAPI = _G['Character.EquipAPI']
local LOCAL_PLAYER = Game.GetLocalPlayer()
local PROGRESS_BAR = script:GetCustomProperty('ProgressBar'):WaitForObject()
local PROGRESS_TEXT = script:GetCustomProperty('ProgressText'):WaitForObject()

local level = nil
local function EquipCharacter(character, player)
    if player == LOCAL_PLAYER then
        level = character:GetComponent('Level')
    end
end

local function UnequipCharacter(_, player)
    if player == LOCAL_PLAYER then
        level = nil
    end
end

function Tick()
    if level then
        local inLevel = level:GetXPInLevel()
        local nextLevel = level:GetXPForNextLevel()
        local progress = inLevel / nextLevel
        PROGRESS_BAR.progress = progress
        PROGRESS_TEXT.text = string.format('%d/%d', inLevel, nextLevel)
    end
end

EquipAPI.playerEquippedEvent:Connect(EquipCharacter)
EquipAPI.playerUnequippedEvent:Connect(UnequipCharacter)
