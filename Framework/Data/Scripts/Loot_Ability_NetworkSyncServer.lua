local LOOT_ABILITY_SPAWN_API = require(script:GetCustomProperty('Loot_Ability_SpawnAPI'))
local ABILITY_ITEM = script:GetCustomProperty('AbilityItem')
local INVENTORY = script:GetCustomProperty('Inventory'):WaitForObject()
local LOOT_ABILITY_DATABASE = require(script:GetCustomProperty('Loot_Ability_Database'))
local LOOT_ABILITY_CONSTRUCTOR = require(script:GetCustomProperty('Loot_Ability_Constructor'))
local JSON = require(script:GetCustomProperty('Json'))

local spawnedAbilities = {}

LOOT_ABILITY_SPAWN_API.spawnFunction = function(abilityName) 
    local ability = LOOT_ABILITY_DATABASE:GetEntry(abilityName)
    if ability then
        local newAbility = LOOT_ABILITY_CONSTRUCTOR.CloneAbility(ability)
        if newAbility then
            local root = newAbility:Setup()
            INVENTORY:AddItem(ABILITY_ITEM, {customProperties = {AbilityName = ability.name, Root = root,}})
            local newItem = INVENTORY:GetItem(INVENTORY.occupiedSlotCount)
            spawnedAbilities[newAbility] = newAbility
            newAbility.statChangedEvent:Connect(
                function()
                    local newString = JSON.encode(newAbility.lastStats)
                    newItem:SetCustomProperty('Stats', newString)
                end
            )
            newAbility.equippedEvent:Connect(
                function()
                    newItem:SetCustomProperty('Owner', newAbility.owner.id)
                end
            )
            newAbility.unequippedEvent:Connect(
                function()
                    newItem:SetCustomProperty('Owner', '')
                end
            )
            return newAbility, newItem
        end
    end
end

LOOT_ABILITY_SPAWN_API.destoyFunction = function(ability)
    for key, value in pairs(spawnedAbilities) do
        if value == ability then
            ability:Destroy()
            INVENTORY:RemoveFromSlot(key.slot)
        end
    end
end
