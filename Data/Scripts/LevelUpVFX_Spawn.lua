local LEVEL_UP_VFX = script:GetCustomProperty('LevelUpVfx')
while not _G.CharacterContructor do
    Task.Wait()
end
local CHARACTER = _G.CharacterContructor
local function LevelUp(character)
    local owner = character:GetOwner()
    if owner then
        if owner:IsA('Player') then
            local newElement = World.SpawnAsset(LEVEL_UP_VFX, {networkContext = NetworkContextType.NETWORKED})
            newElement:AttachToPlayer(owner, 'Root')
        end
    end
end

local function ConnectLevelUp(newCharacter)
    local level = newCharacter:GetComponent('Level')
    if level then
        level.levelUpEvent:Connect(
            function()
                LevelUp(newCharacter)
            end
        )
    end
end

CHARACTER.newCharacterFinished:Connect(ConnectLevelUp)
