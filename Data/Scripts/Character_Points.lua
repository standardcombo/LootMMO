local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
    setmetatable(
    {
        tableElements = {
            'spentPoints',
            'pendingPoints'
        },
        eventElements = {
            'pointChangedEvent',
            'spentChangedEvent',
            'confirmPointEvent',
            'resetPointEvent'
        }
    },
    {__index = COMPONET_DATATYPE}
)
component.id = 'Points'
component.unspentPoints = 0
component.potentialPoints = 0

function TriggerEvent(event, ...)
    if event then
        event:Trigger(...)
    end
end

function component:_SilentSetPoints(value)
    self.unspentPoints = value
end
function component:_SilentSetPending(value)
    self.pendingPoints = value
end

function component:SetPoints(value)
    if value.unspentPoints == value then
        return
    end
    self:_SilentSetPoints(value)
    TriggerEvent(self.pointChangedEvent, self, self.unspentPoints)
end

function component:SetPending(value)
    if value.pendingPoints == value then
        return
    end
    self:_SilentSetPending(value)

    TriggerEvent(self.spentChangedEvent, self, self.unspentPoints)
end

function component:SetSpent(element)
    if not element then
        return
    end
    for key, value in pairs(element) do
        self.spentPoints[key] = value
    end
end

function component:AddPoint(amount)
    amount = amount or 1
    self.unspentPoints = self.unspentPoints + amount
    self.potentialPoints = self.potentialPoints + amount
    TriggerEvent(self.pointChangedEvent, self, self.unspentPoints)
end

function component:GetUnspentPoints()
    return self.unspentPoints
end

function component:SpendPoint(catagory)
    if self.potentialPoints > 0 then
        self.potentialPoints = self.potentialPoints - 1
        self.pendingPoints[catagory] = self.pendingPoints[catagory] or 0
        self.pendingPoints[catagory] = self.pendingPoints[catagory] + 1
    end
    TriggerEvent(self.spentChangedEvent, self, self.potentialPoints)
end
function component:RemovePoint(catagory)
    if self.pendingPoints[catagory] and self.pendingPoints[catagory] > 0 then
        self.potentialPoints = self.potentialPoints + 1
        self.pendingPoints[catagory] = self.pendingPoints[catagory] - 1
    end
    TriggerEvent(self.spentChangedEvent, self, self.potentialPoints)
end

function component:ConfirmSpending()
    for key, value in pairs(self.pendingPoints) do
        self.spentPoints[key] = self.spentPoints[key]
    end
    self.unspentPoints = self.potentialPoints
    TriggerEvent(self.confirmPointEvent, self)
end

function component:CancelSpending()
    self.pendingPoints = {}
    self.potentialPoints = self.unspentPoints
end

function component:Refund()
    self:CancelSpending()
    for key, value in pairs(self.pendingPoints) do
        self.unspentPoints = self.unspentPoints + value
    end
    self.pendingPoints = self.unspentPoints
    TriggerEvent(self.resetPointEvent, self)
end

function component:Serialize(information)
    information = information or {}
    self:SetPoints(information.unspentPoints or 0)
    self:SetSpent(information.spentPoints)
end

function component:Deserialize()
    local serialize = {}
    serialize.unspentPoints = self.unspentPoints
    serialize.spentPoints = {}
    for key, value in pairs(self.spentPoints) do
        serialize.spentPoints[key] = value
    end
    return serialize
end

return component
