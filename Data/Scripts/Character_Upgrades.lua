local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
setmetatable(
	{
		tableElements = {
			"upgrades"
		},
		eventElements = {
			"upgradeChangedEvent"
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = 'Upgrades'

function component:GetUpgrades()
	return self.upgrades
end

function component:GetUpgrade(key)
	return self.upgrades[key]
end

function component:SetUpgrades(key, value)
	if self:GetUpgrade(key) == value then
		return
	end
	self.upgrades[key] = value
	self.TriggerEvent(self.upgradeChangedEvent, self, key, value)
end

function component:Serialize()
	return self:GetUpgrades()
end

function component:Deserialize(data)
	for key, value in pairs(data) do
		self:SetUpgrades(key, value)
	end
end

return component
