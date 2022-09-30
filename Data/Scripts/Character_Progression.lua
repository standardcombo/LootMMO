local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local PROGRESSION = _G['Character.Progression']
local component =
setmetatable(
	{
		tableElements = {
			'progression'
		},
		eventElements = {
			'progressionUpdatedEvent'
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = 'Progression'
component.autoNetorked = true
component.requiredComponents = {
	'Level'
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
	if self.progression[key] == value then
		return
	end
	self:SilentSetProgression(key, value)
	TriggerEvent(self.progressionUpdatedEvent, self, key, PROGRESSION[key], value)
end

function component:GetProgressionKey(key)
	return self.progression[key] or false
end

function component:GetProgression()
	return self.progression
end

function component:Update(currentLevel)
	for index, element in pairs(PROGRESSION) do
		local NeededLevel = element['Level']
		if NeededLevel <= currentLevel then
			self:SetProgression(index, true)
		end
	end
end

function component:AddParent(newParent)
	COMPONET_DATATYPE.AddParent(self, newParent)
	local owner = self.owner
	if owner then
		local Level = owner:GetComponent('Level')
		Level.levelUpEvent:Connect(
			function()
				self:Update(Level:GetLevel())
			end
		)
	end
end

function component:Serialize()
	return self:GetProgression()
end

function component:Deserialize(data)
	for key, value in pairs(data) do
		self:SilentSetProgression(key, value)
	end
end

return component
