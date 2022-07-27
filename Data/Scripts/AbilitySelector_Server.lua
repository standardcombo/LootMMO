local LOOT_ABILITY_SPAWN_API = require(script:GetCustomProperty('Loot_Ability_SpawnAPI'))

function SelectNewAbility(player, Ability)
    local newAbility = LOOT_ABILITY_SPAWN_API:Spawn(Ability)
    if newAbility then
        newAbility:SetOwner(player)
        Events.Broadcast('EquippedAbility', player, newAbility)
    end
end

Events.ConnectForPlayer('RequestNewAbility', SelectNewAbility)
