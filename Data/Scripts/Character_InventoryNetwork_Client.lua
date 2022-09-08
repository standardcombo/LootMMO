local LOCAL_PLAYER = Game.GetLocalPlayer()
EApi = _G['Character.EquipAPI']
local ClassConstructor = _G['Item.Constructor']


 
function InventoryUpdated(inventory, networkedInventory, slot)
    for i = 1, 10, 1 do
        
    end
end
function SetUpPlayer(character, inventory)
    --- @type table<number, Inventory>
    local NetworkInventories = World.FindObjectsByType('Inventory')
    for index, curinventory in ipairs(NetworkInventories) do
        if curinventory.name == character.id then
            inventory.backpack = curinventory
            curinventory.changedEvent:Connect(
                function(networkedInventory, slot)
                    InventoryUpdated(inventory, networkedInventory, slot)
                end
            )
            return
        end
    end
end

function PlayerEquipped(character, player)
    if player == LOCAL_PLAYER then
        local inventory = character:GetComponent('Inventory')
        if inventory then
            SetUpPlayer(character, inventory)
        end
    end
end

EApi.playerEquippedEvent:Connect(PlayerEquipped)
