local INVENTORY = script:GetCustomProperty('Inventory'):WaitForObject()
local LOOT_ABILITY_CONSTRUCTOR = require(script:GetCustomProperty('Loot_Ability_Constructor'))
local LOOT_ABILITY_SPAWN_API = require(script:GetCustomProperty('Loot_Ability_SpawnAPI'))
local LOOT_ABILITY_DATABASE = require(script:GetCustomProperty('Loot_Ability_Database'))
LOOT_ABILITY_DATABASE:WaitUntilSetup()
local spawnedAbilities = {}
local JSON = require(script:GetCustomProperty('Json'))

local function GetAbility(item)
    for key, value in pairs(spawnedAbilities) do
        if key == item then
            return value
        end
    end
end
local function AddAbility(abilityName)
    local newAbility = LOOT_ABILITY_DATABASE:GetAbility(abilityName)
    if newAbility then
        return LOOT_ABILITY_CONSTRUCTOR.CloneAbility(newAbility)
    end
end

function ChangedEvent(item, property)
    local ability = GetAbility(item)
    if not ability then
        if property == 'AbilityName' then
            ChangedEvent(item, property)
        end
        return
    end
    local propertyTable = {
        ['Owner'] = function()
            ability:SetOwner(Game.FindPlayer(item:GetCustomProperty(property)))
        end,
        ['Root'] = function() 
            local root = item:GetCustomProperty(property):WaitForObject()
            ability:SetCurrentAbility(root)
        end,
        ['Stats'] = function()
            local statString = item:GetCustomProperty(property)
            if statString and statString ~= '' then
                ability.lastStats = JSON.decode(item:GetCustomProperty(property))
            end
        end
    }

    if propertyTable[property] then
        propertyTable[property]()
    end
end

function ItemRemoved(slot)
end

function ItemAdded(item)
    if not spawnedAbilities[item] then
        local newAbility = AddAbility(item:GetCustomProperty('AbilityName'))
        if not newAbility then
            return
        end
        spawnedAbilities[item] = newAbility
        for key, value in pairs(item:GetCustomProperties()) do
            ChangedEvent(item, key)
        end
        if newAbility.owner == Game.GetLocalPlayer() then
            Events.Broadcast('Set Ability Icon', newAbility)
        end
    end
end

function ModifiedInventory(_, slot)
    local item = INVENTORY:GetItem(slot)
    if item then
        ItemAdded(item)
    else
        ItemRemoved(slot)
    end
end

for key, item in pairs(INVENTORY:GetItems()) do
    ItemAdded(item)
end

INVENTORY.changedEvent:Connect(ModifiedInventory)
INVENTORY.itemPropertyChangedEvent:Connect(ChangedEvent)
