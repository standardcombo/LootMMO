local CharacterConstruction = _G['Character.Contsructor']
local LOOT_INVENTORY_SPAWN = script:GetCustomProperty('Loot_Inventory_Spawn')
local LOOT_INVENTORY_ITEM = script:GetCustomProperty("Loot_Inventory_Item")

function InventoryUpdated(inventory)
    local NetworkedInventory = inventory.backpack
    if NetworkedInventory then

    end
end

function Destroyed(character)
    local Inventory = character:GetComponent('Inventory')
    if Inventory.backpack then
        Inventory.backpack:Destroy()
    end
end

function ConnectIventory(Character, Inventory)
    Inventory.backpack = World.SpawnAsset(LOOT_INVENTORY_SPAWN)
    Inventory.backpack.name = tostring(Character.id)
    if Character.owner and Character.owner:IsA('Player') then
        Inventory.changedEvent:Connect(InventoryUpdated)
    end
end

function SetOwner(Character, newOwner)
    local Inventory = Character:GetComponent('Inventory')
    if Inventory.backpack then
        Inventory.backpack:Assign(newOwner)
    end
end

function CharacterSetUp(character)
    local Inventory = character:GetComponent('Inventory')
    character.setOwnerEvent:Connect(SetOwner)
    character.destroyedEvent:Connect(Destroyed)
    ConnectIventory(character, Inventory)
end

CharacterConstruction.newCharacterFinished:Connect(CharacterSetUp)
