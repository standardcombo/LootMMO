local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local LOOT_ABILITY_EAGLE_SUMMON = script:GetCustomProperty("Loot_Ability_EagleSummon")

local function Summon()
    local Owner = ABILITY.owner
    local mod = ROOT.serverUserData.CalculateAllModifiers()
    if Object.IsValid(ABILITY.owner.serverUserData.Eagle) then
        ABILITY.owner.serverUserData.Eagle:Destroy()
    end
    ABILITY.owner.serverUserData.Eagle = World.SpawnAsset(LOOT_ABILITY_EAGLE_SUMMON, {position = Owner:GetWorldPosition() + Vector3.UP * 75, networkContext = NetworkContextType.NETWORKED})
    ABILITY.owner.serverUserData.Eagle.serverUserData.owner = Owner
    ABILITY.owner.serverUserData.Eagle:SetCustomProperty('Team', Owner.team)
    ABILITY.owner.serverUserData.Eagle:SetCustomProperty('Damage', mod['Damage'][1])
    ABILITY.owner.serverUserData.Eagle:SetCustomProperty('IsCrit', mod['Damage'][2])
    ABILITY.owner.serverUserData.Eagle.lifeSpan = mod['Duration'] or 10
end

function DestroyEagle(player)
    if Object.IsValid(player.serverUserData.Eagle) then
        player.serverUserData.Eagle:Destroy()
    end
end

function OnPlayerLeft(player)
    DestroyEagle(player)
end

ABILITY.executeEvent:Connect(Summon)
Game.playerLeftEvent:Connect(OnPlayerLeft)
script.destroyEvent:Connect(function()
    DestroyEagle(ABILITY.owner)
end)