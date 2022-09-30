local CLASSAPI = _G['Character.Classes']
local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
setmetatable(
	{

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
	self.Class = CLASSAPI.GetClass(Class)
	assert(self.Class, 'No class Found')
end

function component:GetClassTable()
	if not self.Class then
		self:SetClass('None')
	end
	return self.Class
end

function component:IsMainClass()
	return self.Class['MainClass'] == self.Class['ClassIdentifier']
end

function component:GetMainClass()
	return self.Class['MainClass']
end

function component:GetClass()
	if not self.Class then
		self:SetClass('None')
	end
	return self.Class['ClassIdentifier']
end

function component:Serialize()
	return self:GetClass()
end

function component:Deserialize(Class)
	self:SetClass(Class)
end

return component
