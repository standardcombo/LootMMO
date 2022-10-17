local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local LOOT_ABILITY_EAGLE_SUMMON = script:GetCustomProperty("Loot_Ability_EagleSummon")

local function Summon()
    local Owner = ABILITY.owner
    local mod = ROOT.serverUserData.calculateModifier()
    local Eagle = World.SpawnAsset(LOOT_ABILITY_EAGLE_SUMMON, {position = Owner:GetWorldPosition() + Vector3.UP * 75, networkContext = NetworkContextType.NETWORKED})
    Eagle.serverUserData.owner = Owner
    Eagle:SetCustomProperty('Team', Owner.team)
    Eagle:SetCustomProperty('Damage', mod['Damage'][1])
    Eagle:SetCustomProperty('IsCrit', mod['Damage'][2])
    Eagle.lifeSpan = mod['Duration'] or 10
end

ABILITY.executeEvent:Connect(Summon)
