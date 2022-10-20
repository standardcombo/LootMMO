local CLASSAPI = _G['Character.Classes']
local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
setmetatable(
	{
		eventElements = {
			'classChangedEvent',
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = 'Class'
component.requiredComponents = {
	'Stats',
	'Progression'
}
component.autoNetorked = true

function component:SetClass(Class)
	if not Class then
		Class = 'None'
	end
	local oldClass = (self.class or {})['ClassIdentifier']
	self.Class = CLASSAPI.GetClass(Class)
	if oldClass ~= Class then
		self.TriggerEvent(self.classChangedEvent, Class)
	end
	assert(self.Class, 'No class Found')
end

function component:GetClassTable()
	if not self.Class then
		self:SetClass('None')
	end
	return self.Class
end

function component:IsMainClass()
	return (CLASSAPI.GetMainClass(self:GetClass()) and self:GetClassTable()['ClassIdentifier']) ~= nil
end

function component:HasClass()
	return self:GetClassTable()['ClassIdentifier'] ~= "None"
end

function component:GetMainClass()
	return self:GetClassTable()['MainClass']
end

function component:GetClass()
	return self:GetClassTable()['ClassIdentifier']
end

function component:Serialize()
	return self:GetClass()
end

function component:Deserialize(Class)
	self:SetClass(Class)
end

return component
