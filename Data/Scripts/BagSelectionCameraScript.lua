
local CAMERA = script.parent

function OnPlayerJoined(player)
	if player == Game.GetLocalPlayer() then
		local distance = (player:GetWorldPosition() - CAMERA:GetWorldPosition()).size
		if distance < 1000 then
			player:SetDefaultCamera(CAMERA)
		end
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

