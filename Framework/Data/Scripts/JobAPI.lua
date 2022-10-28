Task.Wait(1)
local Itemdat   = _G["Items"]
local materials = _G["Items.Materials"]
local hotKeys = {"Weapon", "AxeTool", "PickaxeTool"}

function AddJob(player, jobID)
    local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
    _G.RewardsAdapter.AddItem(player, jobID)
end

function EquipJobTool(player, hotKey)
    if DoubleCheck(player, hotKey) then return end
    RemoveTools(player)
    if hotKey == "Weapon" then
        --Find and equip the object in the weapon slot
    else
        local tool = World.SpawnAsset(script:GetCustomProperty(hotKey))
        tool:Equip(player)
    end
end

function DoubleCheck(player, hotKey)
    local currentEquipment = player:GetEquipment()
    local doubleCheck = false
    for key, value in pairs(currentEquipment) do
        if value.name == hotKey then
            doubleCheck = true
        end
    end
    return doubleCheck
end

function RemoveTools(player)
    local currentEquipment = player:GetEquipment()
    for key, value in pairs(currentEquipment) do
        if string.find(value.name, "Tool") then
            value:Unequip()
            value:Destroy()
        end
    end
end

function CheckJobAbility(player)

end

function OnActionPressed(player, action, value)
    if action == "MyAction" then
        CheckJobAbility(player)
    else
        for key, hotKey in pairs(hotKeys) do
            if action == tostring(key) then
                EquipJobTool(player, hotKey)
            end
        end
    end
end

function OnActionReleased(player, action)
    if action == "MyAction" then
        
    end
end

Input.actionPressedEvent:Connect(OnActionPressed)
Input.actionReleasedEvent:Connect(OnActionReleased)


function GivePlayerInventory(player, itemID)
    local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
    _G.RewardsAdapter.AddItem(player, itemID)
    Task.Wait(4)
    if char then
        local Inventory = char:GetComponent("Inventory")
        local iteminfo = Itemdat.GetDefinition(itemID) or materials.GetDefinition(itemID)
        if iteminfo then
            print(Inventory:GetInventory():GetItemCount(itemID), " count of ", itemID)
            --Inventory:GetInventory():RemoveItem(iteminfo["itemAsset"], { count = 1 })
        end
    end
end