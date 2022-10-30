Task.Wait(1)
local Itemdat   = _G["Items"]
local materials = _G["Items.Materials"]
local defultEquipment = "Quarterstaff"
local hotKeys = {"Weapon", "AxeTool", "PickaxeTool"}


function AddJob(player, jobID)
    local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
    _G.RewardsAdapter.AddItem(player, jobID)
end

--InventoryUpdated(inv, i)

function OnWeaponChange(player)
    RemoveTools(player, nil)
end

function EquipJobTool(player, hotKey)
    local weaponID = GetWeaponName(player)
    if DoubleCheck(player, hotKey, weaponID) then return end
    RemoveTools(player, weaponID)
    if hotKey == "Weapon" and weaponID then
        local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
        local Inventory = char:GetComponent("Inventory")
        if Inventory:GetInventory():GetItem(1) then
            Inventory:GetInventory():MoveFromSlot(1,54)
        end
        Inventory:GetInventory():MoveFromSlot(54,1)
    elseif hotKey ~= "Weapon" then
        local tool = World.SpawnAsset(script:GetCustomProperty(hotKey), { networkContext = NetworkContextType.NETWORKED })
        tool:Equip(player)
    end
end

function SetEnabled(equipment, value)
    if not Object.IsValid(equipment) then
        return
    end

    equipment.isEnabled = value

    for _, ability in ipairs(equipment:GetAbilities()) do
        ability.isEnabled = value
    end
end

function GetWeaponName(player)
    local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
    local Inventory = char:GetComponent("Inventory")
    local item = Inventory:GetInventory():GetItem(1)
    local name = defultEquipment
    if item then
        name = item.name
    end
    return name
end

function DoubleCheck(player, hotKey, weaponName)
    local currentEquipment = player:GetEquipment()
    local doubleCheck = false
    for key, value in pairs(currentEquipment) do
        if value.name == hotKey then
            doubleCheck = true
        end
        if hotKey == "Weapon" and value.name == weaponName then
            doubleCheck = true
        end
    end
    return doubleCheck
end

function RemoveTools(player, weaponName)
    local currentEquipment = player:GetEquipment()
    for key, value in pairs(currentEquipment) do
        if string.find(value.name, "Tool")then
            value:Unequip()
            value:Destroy()
        elseif weaponName then
            if value.name == weaponName or value.name == weaponName.."_Hollow" then
                value:Unequip()
                value:Destroy()
            end
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

Input.actionPressedEvent:Connect(OnActionPressed)
Events.Connect("WeaponChanged", OnWeaponChange)



-- function GivePlayerInventory(player, itemID)
--     local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
--     _G.RewardsAdapter.AddItem(player, itemID)
--     Task.Wait(4)
--     if char then
--         local Inventory = char:GetComponent("Inventory")
--         local iteminfo = Itemdat.GetDefinition(itemID) or materials.GetDefinition(itemID)
--         if iteminfo then
--             print(Inventory:GetInventory():GetItemCount(itemID), " count of ", itemID)
--             --Inventory:GetInventory():RemoveItem(iteminfo["itemAsset"], { count = 1 })
--         end
--     end
-- end

-- local Weapons         = Itemdat.GetDefinitionsForCategory("weapon")
-- local KWeapons        = {}
-- for index, value in ipairs(Weapons) do
-- 	KWeapons[value.id] = value
-- end