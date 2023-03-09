
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local TRANSFER_TRIGGER = script:GetCustomProperty("TransferTrigger"):WaitForObject()
local INTERACTION_TRIGGER = script:GetCustomProperty("InteractionTrigger"):WaitForObject()
local PORTAL_VFX = script:GetCustomProperty("PortalVFX"):WaitForObject()
local SCALE_ON_ENABLE = script:GetCustomProperty("ScaleOnEnable")

local ENABLE_EVENT_ID = "EnablePortal"
local TRANSFER_EVENT_ID = "TransferPortal"

local ENABLE_LERP_SPEED = 4
local ENABLE_EMISSIVE_BOOST = 50
local ENABLE_EDGE_DISTANCE = 1.5
local DEFAULT_EMISSIVE_BOOST = PORTAL_VFX:GetSmartProperty("Emissive Boost")
local DEFAULT_EDGE_DISTANCE = PORTAL_VFX:GetSmartProperty("Edge Distance")
local DEFAULT_SPREAD = PORTAL_VFX:GetSmartProperty("Portal Spread")


function Tick(deltaTime)
	if PORTAL_VFX.visibility == Visibility.INHERIT then
		local t = deltaTime * ENABLE_LERP_SPEED
		local emissive = PORTAL_VFX:GetSmartProperty("Emissive Boost")
		local edge = PORTAL_VFX:GetSmartProperty("Edge Distance")
		local spread = PORTAL_VFX:GetSmartProperty("Portal Spread")
		emissive = CoreMath.Lerp(emissive, DEFAULT_EMISSIVE_BOOST, t)
		edge = CoreMath.Lerp(edge, DEFAULT_EDGE_DISTANCE, t)
		spread = CoreMath.Lerp(spread, DEFAULT_SPREAD, t)
		PORTAL_VFX:SetSmartProperty("Emissive Boost", emissive)
		PORTAL_VFX:SetSmartProperty("Edge Distance", edge)
		PORTAL_VFX:SetSmartProperty("Portal Spread", spread)
	end
end


function FlashColor()
	PORTAL_VFX:SetSmartProperty("Emissive Boost", ENABLE_EMISSIVE_BOOST)
	PORTAL_VFX:SetSmartProperty("Edge Distance", ENABLE_EDGE_DISTANCE)
end

function Enable()
	if INTERACTION_TRIGGER then
		INTERACTION_TRIGGER.isEnabled = false
	end
	TRANSFER_TRIGGER.isEnabled = true
	PORTAL_VFX.visibility = Visibility.INHERIT
	
	FlashColor()
	
	PORTAL_VFX:SetSmartProperty("Portal Spread", 0)
end

function Disable()
	if INTERACTION_TRIGGER then
		INTERACTION_TRIGGER.isEnabled = true
	end
	TRANSFER_TRIGGER.isEnabled = false
	PORTAL_VFX.visibility = Visibility.FORCE_OFF
end


function OnCustomPropertyChanged(obj, propName)
	if NET_OBJECT:GetCustomProperty("IsEnabled") then
		Enable()
	else
		Disable()
	end
end
NET_OBJECT.customPropertyChangedEvent:Connect(OnCustomPropertyChanged)
OnCustomPropertyChanged(NET_OBJECT, "IsEnabled")


function OnInteracted(trigger, player)
	Enable()
	Events.BroadcastToServer(ENABLE_EVENT_ID, ROOT.id, true)
end

function OnBeginOverlap(trigger, player)
	if not player:IsA("Player") then return end
	
	FlashColor()
	
	if player == Game.GetLocalPlayer() then
		Events.BroadcastToServer(TRANSFER_EVENT_ID, ROOT.id)
		Events.Broadcast("FreezeCamera")
	end
end


if INTERACTION_TRIGGER then
	INTERACTION_TRIGGER.interactedEvent:Connect(OnInteracted)
	
	Disable()
end

TRANSFER_TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)

