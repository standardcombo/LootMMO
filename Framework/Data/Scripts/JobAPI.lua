Task.Wait(1)
local hotKeys = {"Weapon", "AxeTool", "PickaxeTool"}
local swapValue = 1
local maxSwapValue = 3

function AddJob(player, jobID)
    _G.RewardsAdapter.AddItem(player, jobID)
end

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
    if item then
        local name = item.name
        return name
    end
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
    if weaponName == nil then
        weaponName = "Quarterstaff"
    end
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

function OnActionPressed(player, action, value)
    if action == "Hotswap" then
        if swapValue < maxSwapValue then
            swapValue = swapValue + 1
        else
            swapValue = 1
        end
        EquipJobTool(player, hotKeys[swapValue])
    end
end

Input.actionPressedEvent:Connect(OnActionPressed)
Events.Connect("WeaponChanged", OnWeaponChange)