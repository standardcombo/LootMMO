
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local APPEAR_FX = script:GetCustomProperty("AppearFX")

local LOOT_ID = ROOT:GetCustomProperty("LootID")
local APPEAR_EVENT_ID = ROOT:GetCustomProperty("AppearEventID")
local HIDE_EVENT_ID = ROOT:GetCustomProperty("HideEventID")
local ADDITIONAL_APPEAR_DELAY = ROOT:GetCustomProperty("AdditionalAppearDelay")

function LOOT_DROP_FACTORY() return _G["standardcombo.NPCKit.LootDropFactory"] end

local appearListener
local hideListener

local isOpen = false


function Open()
	if isOpen then return end
	isOpen = true
	
	TRIGGER.isInteractable = false
	
	if LOOT_DROP_FACTORY() and LOOT_ID ~= "" then
		local pos = script:GetWorldPosition()
		LOOT_DROP_FACTORY().Drop(LOOT_ID, pos)
	end
	
	Task.Wait(1)
	
	Hide()
end

TRIGGER.interactedEvent:Connect(function(trigger, player)
	Open()
end)


function Appear()
	if ADDITIONAL_APPEAR_DELAY and ADDITIONAL_APPEAR_DELAY > 0 then
 		Task.Wait(ADDITIONAL_APPEAR_DELAY)
 	end
	script.parent.visibility = Visibility.INHERIT
	script.parent.collision = Collision.INHERIT
	
	if APPEAR_FX then
		World.SpawnAsset(APPEAR_FX, {position = script:GetWorldPosition()})
	end
end


function Hide()
	script.parent.visibility = Visibility.FORCE_OFF
	script.parent.collision = Collision.FORCE_OFF
end


if APPEAR_EVENT_ID ~= "" then
	appearListener = Events.Connect(APPEAR_EVENT_ID, Appear)
end

if HIDE_EVENT_ID ~= "" then
	hideListener = Events.Connect(HIDE_EVENT_ID, Hide)
end


script.destroyEvent:Connect(function()
	if appearListener then
		appearListener:Disconnect()
		appearListener = nil
	end
	if hideListener then
		hideListener:Disconnect()
		hideListener = nil
	end
end)

