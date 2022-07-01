
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()

local DESTINATION_GAME = ROOT:GetCustomProperty("DestinationGame")

local ENABLE_EVENT_ID = ROOT:GetCustomProperty("EnableEvent") or "EnablePortal"
local ENABLE_DELAY = ROOT:GetCustomProperty("EnableDelay") or 0
local TRANSFER_EVENT_ID = "TransferPortal"


function SetEnabled(value)
	NET_OBJECT:SetCustomProperty("IsEnabled", value)
end


function DoTransfer(player)
	player:Despawn()
	for _,equipment in ipairs(player:GetEquipment()) do
		equipment:Destroy()
	end
	Task.Wait(1)
	player:TransferToGame(DESTINATION_GAME)
end


function OnEnable()
	if ENABLE_DELAY > 0 then
		Task.Wait(ENABLE_DELAY)
	end
	SetEnabled(true)
end

Events.Connect(ENABLE_EVENT_ID, OnEnable)
--Events.ConnectForPlayer(ENABLE_EVENT_ID, OnEnable)

Events.ConnectForPlayer(TRANSFER_EVENT_ID, function(player, portalId)
	if portalId == ROOT.id then
		DoTransfer(player)
	end
end)

