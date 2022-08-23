local MAIN_CLASS = require(script:GetCustomProperty('Main_Class'))
local SUB_CLASS = require(script:GetCustomProperty('SubClass'))
local CLASS_STATS = require(script:GetCustomProperty('Class_Stats'))
local LOOT_ABILITY_WEAPONS = require(script:GetCustomProperty('Loot_Ability_Weapons'))

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
    'Stats'
}
component.hasSpawned = false

local EquipmentKeys = {
    '1',
    '2',
    '3',
    '4',
    '5'
}

function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end

function component:SetClass(Class)
    if not Class then
        Class = 'None'
    end
    self:UnequipOwner()
    self.Class = SUB_CLASS[Class]
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
    if not owner then
        self:UnequipOwner()
        return
    end
    for i = 1, 5 do
        local equip =
            _G['Equipper'].EquipEquipment(owner, self:GetClassTable()['Ability' .. tostring(i)], EquipmentKeys[i])
        self.spawnedEquipment[i] = equip
    end
end
function component:UnequipOwner()
    if Environment.IsClient() then
        return 'Cannot Unequip From Client!'
    end
    for key, value in pairs(self.spawnedEquipment) do
        if Object.IsValid(value) then
            value:Destroy()
        end
    end
    self.spawnedEquipment = {}
end
function component:Init()
    COMPONET_DATATYPE.Init(self)
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
