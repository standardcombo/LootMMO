local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local Potions = _G["Potions.Equipment"]
local component =
setmetatable(
	{
		tableElements = {
			"equippedPotions",
		},
		eventElements = {
			"potionChangedEvent",
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = 'Potions'
component.autoNetorked = false
component.slotCount = 3

function component:GetAllEquipped()
	return self.equippedPotions
end

function component:GetEquipped(slot)
	return self:GetAllEquipped()[slot]
end

function component:SetUnequipped(slot)
	if slot > self.slotCount or slot < 1 then return end
	if self:GetEquipped(slot) == nil then return end

	self.equippedPotions[slot] = nil
	self.TriggerEvent(self.potionChangedEvent, self, slot)
end

function component:SetEquipped(potionName, slot)
	if slot > self.slotCount or slot < 1 then return end
	if not Potions.GetEntry(potionName) then return end
	if self:GetEquipped(slot) == potionName then return end

	self.equippedPotions[slot] = potionName
	self.TriggerEvent(self.potionChangedEvent, self, slot, potionName)
end

function component:Serialize()
	return self:GetAllEquipped()
end

function component:Deserialize(data)
	if not data then return end
	for index, value in pairs(data) do
		self:SetEquipped(value, index)
	end
end

return component
