local ItemDatabase = _G.Items
local equipmentStack = _G.EquipmentStack

local Weapons = ItemDatabase.GetDefinitionsForCategory('weapon')

local function Swap(player, oldId, newId)
    for _, equipment in ipairs(player:GetEquipment()) do
        for _, Item in ipairs(Weapons) do
            local templateSplit = CoreString.Split(Item[oldId] or '', ':')
            if equipment.sourceTemplateId == templateSplit then
                if Item[newId] then
                    local socket = equipment.socket
                    local newWeapon = World.SpawnAsset(Item[newId], {networkContext = NetworkContextType.NETWORKED})
                    for key, stackdex in pairs(equipmentStack.GetStackPlayer(player, socket)) do
                        if stackdex.value == equipment then
                            stackdex.value = newWeapon
                        end
                    end
                    equipment:Destroy()
                    if newWeapon then
                        newWeapon:Equip(player)
                    end
                    equipmentStack.UpdateStack(player, socket)
                end

                return
            end
        end
    end
end
local function SafeZoneEnter(player, zonedata)
    if not player then
        return
    end
    local oldId = 'equipment'
    local newId = 'equipmentHollow'
    Swap(player, oldId, newId)
end

local function SafeZoneLeft(player, zonedata)
    if not player then
        return
    end
    local newId = 'equipment'
    local oldId = 'equipmentHollow'
    Swap(player, oldId, newId)
end

Events.Connect('SafeZone_Enter', SafeZoneEnter)
Events.Connect('SafeZone_Exit', SafeZoneLeft)
