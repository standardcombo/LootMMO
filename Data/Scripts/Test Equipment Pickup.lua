
local TRIGGER = script:GetChildren()[1]

--[[
TRIGGER.beginOverlapEvent:Connect(function(_, obj)
	local equipment = obj:FindAncestorByType("Equipment")
	if equipment then
		print("FOUND")
	end
end)
--]]

local myPos = script:GetWorldPosition()
local equipment
local distance

local allEquipment = World.FindObjectsByType("Equipment")
for _,e in ipairs(allEquipment) do
	local pos = e:GetWorldPosition()
	pos.z = 0
	local d = (pos - myPos).size
	if distance == nil or d < distance then
		distance = d
		equipment = e
	end
end

TRIGGER.interactionLabel = "Pickup " .. equipment.name


function OnInteracted(_, player)
	-- Disable trigger. This setup is one-time use
	TRIGGER.isEnabled = false
	
	-- Remove previous equipment that's in the same slot
	for _,e in ipairs(player:GetEquipment()) do
		if e.socket == equipment.socket then
			e:Destroy()
		end
	end
	
	-- Equip new equipment
	equipment:Equip(player)
end

TRIGGER.interactedEvent:Connect(OnInteracted)

