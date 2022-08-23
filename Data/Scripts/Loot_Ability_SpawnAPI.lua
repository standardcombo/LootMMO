local Api = {
    spawnFunction = function(abilityName)
    end,
    destoyFunction = function(ability)
    end,
    spawnedAbilities = {}
}

function Api:Spawn(AbilityName)
    local newAbility = self.spawnFunction(AbilityName)
    if newAbility then
        table.insert(self.spawnedAbilities, newAbility)
        return newAbility
    end
end

function Api:Destoy(ability)
    for i = #self.spawnedAbilities, 1, -1 do
        if self.spawnedAbilities[i] == ability then
            table.remove(self.spawnedAbilities, i)
            return self.destoyFunction(ability)
        end
    end
end

function Api:GetAbilities()
    return self.spawnedAbilities
end

return Api
