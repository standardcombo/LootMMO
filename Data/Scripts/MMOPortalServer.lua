
local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local DESPAWN_PORTAL_TRIGGER = script:GetCustomProperty("DespawnPortalTrigger"):WaitForObject()
local DESPAWN_DELAY = script:GetCustomProperty("DespawnDelay")
local MAX_DURATION = script:GetCustomProperty("MaxDuration")

local TRANSFER_EVENT_ID = "Portal.Transfer"
local FLASH_VFX_EVENT_ID = "FlashPortalVfx"


ROOT.serverUserData.script = script


function SetEnabled(value)
	NET_OBJECT:SetCustomProperty("IsEnabled", value)
	NET_OBJECT:ForceReplication()
end


function DoTransfer(player)
	
	-- TODO

	--TransferPlayerToGame(player, destinationGame)

	TransferPlayerToSocialHub(player)
end

function TransferPlayerToGame(player, destinationGame)
	player:Despawn()
	for _,equipment in ipairs(player:GetEquipment()) do
		equipment:Destroy()
	end
	
	Task.Wait(1) -- TODO: Make sure this wait is actually necessary, or can it be shortened?

	player:TransferToGame(destinationGame)
end

function TransferPlayerToSocialHub(player)
	SPAWN_UTILS.SpawnPlayerAt(player, "Social")
end


local transferEventListener = Events.ConnectForPlayer(TRANSFER_EVENT_ID, function(player, portalId)
	if portalId == ROOT.id then
		DoTransfer(player)

		Events.BroadcastToAllPlayers(FLASH_VFX_EVENT_ID, ROOT.id, player)
	end
end)


-- Destroy the portal if players leave its vicinity

local isActive = true
local playerCount = 0
local despawnTask = nil
local maxDurationTask = nil

function BeginDespawn()
	if isActive then
		--print("MMOPortalServer::BeginDespawn()")
		despawnTask = Task.Spawn(DoDespawn, DESPAWN_DELAY)
	end
end

function CancelDespawn()
	if despawnTask then
		--print("MMOPortalServer::CancelDespawn()")
		despawnTask:Cancel()
		despawnTask = nil
	end
end

function DoDespawn()
	--print("MMOPortalServer::DoDespawn()")
	isActive = false
	despawnTask = nil

	SetEnabled(false)

	if maxDurationTask then
		maxDurationTask:Cancel()
		maxDurationTask = nil
	end
	CancelDespawn()
	transferEventListener:Disconnect()
	transferEventListener = nil

	ROOT.lifeSpan = 2
end

function OnBeginOverlap(trigger, player)
	if not player:IsA("Player") then return end
	
	playerCount = playerCount + 1
		
	CancelDespawn()
end

function OnEndOverlap(trigger, player)
	--print("MMOPortalServer::OnEndOverlap()")
	if not isActive then return end
	if not player:IsA("Player") then return end
	
	playerCount = playerCount - 1
	
	if playerCount == 0 then
		BeginDespawn()
	end
end

DESPAWN_PORTAL_TRIGGER.collision = Collision.FORCE_OFF

DESPAWN_PORTAL_TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
DESPAWN_PORTAL_TRIGGER.endOverlapEvent:Connect(OnEndOverlap)

Task.Wait()
DESPAWN_PORTAL_TRIGGER.collision = Collision.INHERIT


maxDurationTask = Task.Spawn(function()
	DoDespawn()
end, MAX_DURATION)

