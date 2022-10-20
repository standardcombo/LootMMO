local LOCAL_PLAYER = Game.GetLocalPlayer()
local EApi = _G['Character.EquipAPI']
local ClassConstructor = _G['Item.Constructor']
local Keyidentity = 'I/.'
local currentInventory = nil

function ResourceUpdated(player, key, value)
    local function isInventoryKey(testkey)
        return string.sub(testkey, 1, string.len(Keyidentity)) == Keyidentity
    end

    if isInventoryKey(key) then
        local newKey = string.sub(key, string.len(Keyidentity) + 1, string.len(key))
        if currentInventory then
            currentInventory:SetResource(newKey, value)
        end
    end
end

function InventoryUpdated(inventory, networkedInventory, slot)
end
function SetUpPlayer(character, inventory)
    --- @type table<number, Inventory>
    local NetworkInventories = World.FindObjectsByType('Inventory')
    for index, curinventory in ipairs(NetworkInventories) do
        if curinventory.name == character.id then
            print( inventory.backpack)
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
LOCAL_PLAYER.resourceChangedEvent:Connect(ResourceUpdated)
