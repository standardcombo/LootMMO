local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local LOOT_ABILITY_HAWK_SUMMON = script:GetCustomProperty('Loot_Ability_HawkSummon')

local function Summon()
    local Owner = ABILITY.owner
    local mod = ROOT.serverUserData.calculateModifier()
    local Hawk =
        World.SpawnAsset(
        LOOT_ABILITY_HAWK_SUMMON,
        {position = Owner:GetWorldPosition() + Vector3.UP * 75, networkContext = NetworkContextType.NETWORKED}
    )
    Hawk:SetCustomProperty('Team', Owner.team)
    Hawk:SetCustomProperty('Damage', mod['Damage'])
    Hawk.lifeSpan = mod['Duration'] or 10
end

ABILITY.executeEvent:Connect(Summon)
