Task.Wait()
EquipApi = _G['Character.EquipAPI']
local items = _G.Items

function BootUpPlayerBag(Character, player)
    local selectedbag = player.serverUserData.currentBag
    if Character and selectedbag then
        local inventory = Character:GetComponent('Inventory')
        for key, Item in pairs(selectedbag.items) do
            local name = Item.name
            local entry = items.GetDefinition(name)
            if entry then
                if entry['spawnItem'] then
                    local newitem = World.SpawnAsset(entry['spawnItem'])
                    newitem:SetCustomProperty('IsBag', true)
                    newitem:SetCustomProperty('Greatness', Item.greatness)
                    newitem:SetCustomProperty('Order', Item.order or "")
                end
            end
        end
    end
end

EquipApi.playerEquippedEvent:Connect(BootUpPlayerBag)
