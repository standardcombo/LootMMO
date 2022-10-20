local component = {
	id = nil,
	owner = nil,
	autoNetorked = false,
	requiredComponents = {}
}
function component.TriggerEvent(event, ...)
	if event then
		event:Trigger(...)
	else
		warn("Event that was not found tried to trigger")
	end
end

function component:IsA(type)
	return type == 'component'
end

function component:Serialize(data)
	return {}
end

function component:Deserialize()
	return {}
end

function component:GetOwner()
	return self.owner
end

function component:AddParent(owner)
	self.owner = owner
	for key, value in pairs(self.requiredComponents) do
		if not self.owner:GetComponent(value) then
			owner:AddComponent(value)
		end
	end
end

function component:Destroy()
	if not self.eventElements then
		return
	end

	for key, value in pairs(self.eventElements) do
		local Event = self[value]
		if Event then
			Event:Disconnect()
		end
	end
end

function component:Init()
	return
end

return component
