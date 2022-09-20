local CharacterConstruction = _G['Character.Contsructor']
local LOOT_INVENTORY_SPAWN = script:GetCustomProperty('Loot_Inventory_Spawn')
local LOOT_INVENTORY_ITEM = script:GetCustomProperty('Loot_Inventory_Item')
local Keyidentity = 'I/.'

function InventoryUpdated(inventory)
    local NetworkedInventory = inventory.backpack
    if NetworkedInventory then
    end
end

function ResourceChangedEvent(inventory, key, value)
    if inventory.networkedPlayer then
        inventory.networkedPlayer:SetResource(Keyidentity .. key, value)
    end
end

function Destroyed(character)
    local Inventory = character:GetComponent('Inventory')
    if Inventory.backpack then
        Inventory.backpack:Destroy()
    end
end

function ConnectIventory(Character, Inventory)
    Inventory.backpack = World.SpawnAsset(LOOT_INVENTORY_SPAWN, {networkContext = NetworkContextType.NETWORKED})
    Inventory.backpack.name = tostring(Character.id)
    Inventory.backpack:Resize(Inventory.inventorySize)
    for i = 1, Inventory.inventorySize do
        Inventory.backpack:AddItem(LOOT_INVENTORY_ITEM, {slot = i, count = 1})
    end
    Inventory.changedEvent:Connect(InventoryUpdated)
    Inventory.resourceChangedEvent:Connect(ResourceChangedEvent)
end

function SetOwner(Character, newOwner)
    local Inventory = Character:GetComponent('Inventory')
    if newOwner:IsA('Player') and Inventory.backpack then
        Inventory.backpack:Assign(newOwner)
        Inventory.networkedPlayer = newOwner
        for key, value in pairs(Inventory:GetResourceKeys()) do
            ResourceChangedEvent(Inventory, value, Inventory:GetResource(value))
        end
        InventoryUpdated(Inventory)
    end
end
function RemoveOwner(Character, newOwner)
    local Inventory = Character:GetComponent('Inventory')
    if Inventory then
        Inventory.networkedPlayer = nil
    end
end
function CharacterSetUp(character)
    local Inventory = character:GetComponent('Inventory')
    character.setOwnerEvent:Connect(SetOwner)
    character.removeOwnerEvent:Connect(SetOwner)
    character.destroyedEvent:Connect(Destroyed)
    ConnectIventory(character, Inventory)
end

CharacterConstruction.newCharacterFinished:Connect(CharacterSetUp)
