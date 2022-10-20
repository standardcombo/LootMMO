
local PORTAL_TEMPLATE = script:GetCustomProperty("PortalTemplate")

local PORTAL_SPAWN_OFFSET_FORWARD = 135
local PORTAL_SPAWN_OFFSET_Z = -102
local CHANNEL_DURATION = 4


function OnChannelingComplete(player)
	if Object.IsValid(player) then
		-- Close a previous existing portal
		if Object.IsValid(player.serverUserData.portal) then
			local portalScript = player.serverUserData.portal.serverUserData.script
			portalScript.context.DoDespawn()
		end
		
		-- Create new portal
		local pos = player:GetWorldPosition()
		local rot = player:GetWorldRotation()
		local playerForward = Quaternion.New(rot):GetForwardVector()
		pos = pos + playerForward * PORTAL_SPAWN_OFFSET_FORWARD
		pos.z = pos.z + PORTAL_SPAWN_OFFSET_Z
		local params = {
			position = pos,
			rotation = rot,
			networkContext = NetworkContextType.NETWORKED
		}
		local portal = World.SpawnAsset(PORTAL_TEMPLATE, params)
		player.serverUserData.portal = portal
		
		Events.Broadcast("Portal.Summoned", player)
	end
end

function OnBindingPressed(player, action)
	if action == "BackToTavern" 
	and _G.AppState.GetStateForPlayer(player) == _G.AppState.Adventure 
	and _G.ChannelAbility.CanChannel(player)
	then
		_G.ChannelAbility.Start(player, CHANNEL_DURATION, OnChannelingComplete)
	end
end

Input.actionPressedEvent:Connect(OnBindingPressed)