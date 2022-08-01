local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local CostumeVFX = script:GetCustomProperty('AssassinOrcDeathsShadowCostumeBasic')
local SpawnedCostume = nil
local LOCAL_PLAYER = Game.GetLocalPlayer()

function Unequip()
    if Object.IsValid(SpawnedCostume) then
        SpawnedCostume:Destroy()
    end
    SpawnedCostume = nil
end

function Execute()
    if LOCAL_PLAYER.team == ABILITY.owner.team then
        SpawnedCostume = World.SpawnAsset(CostumeVFX)
        SpawnedCostume:AttachToPlayer(ABILITY.owner, 'Root')
    end
end

function Recovery()
    Unequip()
end

function Interrupt()
    Unequip()
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.recoveryEvent:Connect(Recovery)
ABILITY.interruptedEvent:Connect(Interrupt)
ROOT.unequippedEvent:Connect(Unequip)
