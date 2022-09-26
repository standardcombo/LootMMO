local CLASSAPI = _G['Character.Classes']

local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
    setmetatable(
    {
        tableElements = {
            'spawnedEquipment'
        }
    },
    {__index = COMPONET_DATATYPE}
)
component.id = 'Class'
component.requiredComponents = {
    'Stats',
    'Progression'
}
component.autoNetorked = true

local EquipmentKeys = {
    'Shift',
    '1',
    '2',
    '3',
    '4'
}

function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end
function component:GetSpawned()
    return self.spawnedEquipment
end
component.hasSpawned = false
function component:SetClass(Class)
    if not Class then
        Class = 'None'
    end
    self:UnequipOwner()
    self.Class = CLASSAPI.GetClass(Class)
    assert(self.Class, 'No class Found')
end
function component:GetClassTable()
    if not self.Class then
        self:SetClass('None')
    end
    return self.Class
end
function component:GetClass()
    if not self.Class then
        self:SetClass('None')
    end
    return self.Class['ClassIdentifier']
end
function component:EquipOwner()
    if Environment.IsClient() then
        return 'Cannot Equip From Client!'
    end
    local owner = self.owner:GetOwner()
    local progression = self.owner:GetComponent('Progression')
    if not owner then
        self:UnequipOwner()
        return
    end
    component.hasSpawned = true
    for i = 1, 5 do
        if not self:GetSpawned()[i] and progression:GetProgressionKey('AbilitySlot' .. i) then
            local equip =
                _G['Equipper'].EquipEquipment(owner, self:GetClassTable()['Ability' .. tostring(i)], EquipmentKeys[i])
            self.spawnedEquipment[i] = equip
        end
    end
end
function component:UnequipOwner()
    if Environment.IsClient() then
        return 'Cannot Unequip From Client!'
    end
    component.hasSpawned = false
    for key, value in pairs(self.spawnedEquipment) do
        if Object.IsValid(value) then
            value:Destroy()
        end
    end
    self.spawnedEquipment = {}
end
function component:AddParent(newParent)
    COMPONET_DATATYPE.AddParent(self, newParent)
    if Environment.IsServer() then
        if self.owner then
            self.owner.removeOwnerEvent:Connect(
                function()
                    self:UnequipOwner()
                end
            )
        end
    end
end

function component:Serialize()
    return self:GetClass()
end

function component:Deserialize(Class)
    self:SetClass(Class)
end

return component
