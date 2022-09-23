
local PORTAL_TEMPLATE = script:GetCustomProperty("PortalTemplate")

local KEY_BINDING = "ability_extra_24" --T


function OnBindingPressed(player, action)
	if action == KEY_BINDING then
		local params = {
			position = player:GetWorldPosition() + Vector3.New(0, 0, -102),
			rotation = player:GetWorldRotation(),
			networkContext = NetworkContextType.NETWORKED
		}
		World.SpawnAsset(PORTAL_TEMPLATE, params)
	end
end

Game.playerJoinedEvent:Connect(function(player)
	player.bindingPressedEvent:Connect(OnBindingPressed)
end)

