local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
    setmetatable(
    {
        tableElements = {
            'progression', 
        },
        eventElements = {
            'progressionUpdated'
        }
    },
    {__index = COMPONET_DATATYPE}
)
component.id = 'Progression'
component.requiredComponents = {
    'Level', 
}
function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end

function component:SilentSetProgression(key, value)
    self.progression[key] = value
end

function component:SetProgression(key, value)
    self:SilentSetProgression(key, value)
    TriggerEvent(self.progressionUpdated, self, key)
end

function component:GetProgressionKey(key)
    return self.progression[key]
end
function component:GetProgression()
    return self.progression
end
function component:Update()
    
end

function component:Serialize()
    return self:GetProgression()
end
function component:Deserialize(data)
    for key, value in pairs(data) do
        self:SilentSetProgression(key,value)
    end
end
return component