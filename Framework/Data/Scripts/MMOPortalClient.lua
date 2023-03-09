
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local INTERACTION_TRIGGER = script:GetCustomProperty("InteractionTrigger"):WaitForObject()
local PORTAL_VFX = script:GetCustomProperty("PortalVFX"):WaitForObject()

local TRANSFER_EVENT_ID = "Portal.Transfer"
local FLASH_VFX_EVENT_ID = "FlashPortalVfx"

local ENABLE_LERP_SPEED = 4
local ENABLE_EMISSIVE_BOOST = 50
local ENABLE_EDGE_DISTANCE = 1.5
local ENABLE_SPREAD = 0
local DEFAULT_EMISSIVE_BOOST = PORTAL_VFX:GetSmartProperty("Emissive Boost")
local DEFAULT_EDGE_DISTANCE = PORTAL_VFX:GetSmartProperty("Edge Distance")
local DEFAULT_SPREAD = PORTAL_VFX:GetSmartProperty("Portal Spread")
PORTAL_VFX:SetSmartProperty("Portal Spread", 0)


function Tick(deltaTime)
	local t = deltaTime * ENABLE_LERP_SPEED
	
	local emissive = PORTAL_VFX:GetSmartProperty("Emissive Boost")
	local edge = PORTAL_VFX:GetSmartProperty("Edge Distance")
	local spread = PORTAL_VFX:GetSmartProperty("Portal Spread")

	if IsEnabled() then
		emissive = CoreMath.Lerp(emissive, DEFAULT_EMISSIVE_BOOST, t)
		edge = CoreMath.Lerp(edge, DEFAULT_EDGE_DISTANCE, t)
		spread = CoreMath.Lerp(spread, DEFAULT_SPREAD, t)

		INTERACTION_TRIGGER.isEnabled = true
	else
		edge = CoreMath.Lerp(edge, ENABLE_EDGE_DISTANCE, t)
		spread = CoreMath.Lerp(spread, ENABLE_SPREAD, t)

		INTERACTION_TRIGGER.isEnabled = false
	end

	PORTAL_VFX:SetSmartProperty("Emissive Boost", emissive)
	PORTAL_VFX:SetSmartProperty("Edge Distance", edge)
	PORTAL_VFX:SetSmartProperty("Portal Spread", spread)
end


function FlashColor()
	PORTAL_VFX:SetSmartProperty("Emissive Boost", ENABLE_EMISSIVE_BOOST)
	PORTAL_VFX:SetSmartProperty("Edge Distance", ENABLE_EDGE_DISTANCE)
end


function Enable()
	INTERACTION_TRIGGER.isEnabled = true
	PORTAL_VFX.visibility = Visibility.INHERIT
	
	FlashColor()
	
	PORTAL_VFX:SetSmartProperty("Portal Spread", ENABLE_SPREAD)
end

function Disable()
	INTERACTION_TRIGGER.isEnabled = false
	PORTAL_VFX.visibility = Visibility.FORCE_OFF
end

--Disable()


function IsEnabled()
	return NET_OBJECT:GetCustomProperty("IsEnabled")
end

function OnCustomPropertyChanged(obj, propName)
	if propName == "DestinationName" then
		INTERACTION_TRIGGER.interactionLabel = "Travel to ".. obj:GetCustomProperty(propName)
--[[	else
		if IsEnabled() then
			Enable()
		else
			Disable()
		end
]]
	end
end
NET_OBJECT.customPropertyChangedEvent:Connect(OnCustomPropertyChanged)
OnCustomPropertyChanged(NET_OBJECT, "IsEnabled")


function OnInteracted(trigger, player)
	FlashColor()
	
	if player == Game.GetLocalPlayer() then
		Events.BroadcastToServer(TRANSFER_EVENT_ID, ROOT.id)
	end
end

INTERACTION_TRIGGER.interactedEvent:Connect(OnInteracted)


-- Another player went through the portal. Flash the VFX
local flashVfxEventListener = Events.Connect(FLASH_VFX_EVENT_ID, function(objectId, exceptPlayer)
	if Game.GetLocalPlayer() ~= exceptPlayer and objectId == ROOT.id then
		FlashColor();
	end
end)


script.destroyEvent:Connect(function()
	flashVfxEventListener:Disconnect()
	flashVfxEventListener = nil
end)


Task.Spawn(function()
	INTERACTION_TRIGGER.collision = Collision.INHERIT
end, 
0.6) -- Delay

