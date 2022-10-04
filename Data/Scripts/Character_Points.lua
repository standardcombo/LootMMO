local COMPONET_DATATYPE = require(script:GetCustomProperty("ComponetDatatype"))
local component =
setmetatable(
	{
		tableElements = {
			"spentPoints",
			"pendingPoints"
		},
		eventElements = {
			"pointChangedEvent",
			"spentChangedEvent",
			"confirmPointEvent",
			"resetPointEvent"
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = "Points"
component.unspentPoints = 0
component.totalPoints = 0

component.autoNetorked = true

function component:SetPending(catagory, value)
	self.pendingPoints[catagory] = value
end

function component:SetSpent(catagory, value)
	if not catagory then
		return
	end
	if value == 0 then
		self.spentPoints[catagory] = nil
		COMPONET_DATATYPE.TriggerEvent(self.spentChangedEvent, self)
		return
	end
	self.spentPoints[catagory] = value
	COMPONET_DATATYPE.TriggerEvent(self.spentChangedEvent, self)
end

function component:SetTotal(value)
	self.totalPoints = value
end

function component:SetPoints(value)
	self.unspentPoints = value
	COMPONET_DATATYPE.TriggerEvent(self.pointChangedEvent, self)
end

function component:GetPendingPoints(catagory)
	return self.pendingPoints[catagory]
end

function component:GetSpentPoints(catagory)
	if not catagory then
		return self.spentPoints
	end
	return self.spentPoints[catagory]
end

function component:GetTotalPoints()
	return self.totalPoints
end

function component:GetUnspentPoints()
	return self.unspentPoints
end

function component:AddPoint(amount)
	amount = amount or 1
	self.totalPoints = self.totalPoints + amount
	self.unspentPoints = self.unspentPoints + amount
	COMPONET_DATATYPE.TriggerEvent(self.pointChangedEvent, self)
end

function component:ValidatePoints()
	local total = self:GetTotalPoints()
	local trueSpent = self:GetUnspentPoints() or 0
	for key, value in pairs(self.pendingPoints) do
		trueSpent = trueSpent + value
	end
	for key, value in pairs(self.spentPoints) do
		trueSpent = trueSpent + value
	end
	local difference = total - trueSpent
	if difference > 0 then
		self.unspentPoints = self.unspentPoints + difference
	elseif difference < 0 then
		warn("Somehow spent more points then earned")
	end
end

function component:SpendPoint(catagory)
	if not catagory then
		return
	end
	if self.unspentPoints > 0 then
		self.unspentPoints = self.unspentPoints - 1
		self.spentPoints[catagory] = self.spentPoints[catagory] + 1
	end
end

function component:RemovePendingPoint(catagory)
	if not catagory then
		return
	end
	if self.pendingPoint[catagory] > 0 then
		self.pendingPoint[catagory] = self.pendingPoint[catagory] - 1
		if self.pendingPoint[catagory] == 0 then
			self.pendingPoint[catagory] = nil
		end
	end
end

function component:ConfirmSpending()
	for catagory, value in pairs(self.pendingPoints) do
		self.spentPoints[catagory] = self.spentPoints[catagory] + self.pendingPoints[catagory]
		self.pendingPoints[catagory] = nil
	end
	COMPONET_DATATYPE.TriggerEvent(self.confirmPointEvent, self)
end

function component:CancelSpending()
	for catagory, value in pairs(self.pendingPoints) do
		self.unspentPoints = self.unspentPoints + self.pendingPoint[catagory]
		self.pendingPoint[catagory] = nil
	end
	COMPONET_DATATYPE.TriggerEvent(self.pointChangedEvent, self)
end

function component:Refund()
	self:CancelSpending()
	for key, value in pairs(self.spentPoints) do
		self.spentPoints[key] = nil
	end
	self.unspentPoints = self.totalPoints
	COMPONET_DATATYPE.TriggerEvent(self.pointChangedEvent, self)
	COMPONET_DATATYPE.TriggerEvent(self.resetPointEvent, self)
end

function component:Serialize()
	local data = {}
	data.unspentPoints = self.unspentPoints
	data.totalPoints = self.totalPoints
	data.pendingPoints = self.pendingPoints
	data.spentPoints = self.spentPoints
	return data
end

function component:Deserialize(data)
	data = data or {}
	self:SetTotal(data.totalPoints or 0)
	self:SetPoints(data.unspentPoints or 0)
	if type(data.spentPoints) == "number" then
		data.spentPoints = {}
	end
	for catagory, value in pairs(data.spentPoints or {}) do
		self:SetSpent(catagory, value or 0)
	end
	for catagory, value in pairs(data.pendingPoints or {}) do
		self:SetPending(catagory, value or 0)
	end
end

function component:Init()
	self.pendingPoints =
	setmetatable(
		{},
		{
			__index = function()
				return 0
			end
		}
	)
	self.spentPoints =
	setmetatable(
		{},
		{
			__index = function()
				return 0
			end
		}
	)

	return
end

return component
