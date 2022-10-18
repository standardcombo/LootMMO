local Class = {}
Class.isBag = false
local ItemsApi = _G.Items
local Order = _G['Items.Order']
function Class:CalculateStats()
	local StatTable = {
		'W',
		'A',
		'V',
		'AP',
		'SP',
		'SR',
		'B',
		'H'
	}
	local calculation =
	setmetatable(
		{},
		{
			__index = function()
				return 0
			end
		}
	)
	local greatness = self:GetGreatness()
	local scale = 1 + (greatness - 1) * 0.25
	local item = self:GetItem()
	if not item then
		warn('Item should be registed to class')
		return calculation
	end
	for index, value in ipairs(StatTable) do
		calculation[value] = 0
		calculation[value] = math.floor(item[value] * scale)
		if self.greatness >= 15 then
			local ordervalue = 0
			if self.order then
				ordervalue = self.order[value]
			end
			calculation[value] = math.floor(calculation[value] + ordervalue * (greatness - 14))
		end
	end
	return calculation
end

function Class:SetOrder(order)
	self.order = order
end

function Class:SetBag(bool)
	self.isBag = bool or false
end

function Class:GetBag()
	return self.isBag or false
end

function Class:GetOrder()
	return self.order or {}
end

function Class:SetGreatness(greatness)
	self.greatness = greatness
end

function Class:GetGreatness()
	return self.greatness or 0
end

function Class:GetItem()
	return self.item or {}
end

function Class:SetItem(item)
	self.item = item
end

function Class:GetCatagory()
	return self:GetItem()['category']
end

function Class:IsA(type)
	return type == 'LootItem'
end

function Class:Serialize()
	local returnData = {}
	returnData.greatness = self:GetGreatness()
	returnData.item = self:GetItem()['id']
	returnData.order = self:GetOrder()['id']
	returnData.isBag = self.isBag
	return returnData
end

function Class:Deserialize(data)
	if not data then
		return
	end
	local greatness = data.greatness or 0
	local item = ItemsApi.GetDefinition(data.item)
	local order = Order.GetOrder(data.order)

	self:SetItem(item)
	self:SetGreatness(greatness)
	self:SetOrder(order)
end

local ClassConstructor = {}

function ClassConstructor.New(data)
	local newItem = setmetatable({}, { __index = Class })
	newItem:Deserialize(data)
	return newItem
end

_G['Item.Constructor'] = ClassConstructor
