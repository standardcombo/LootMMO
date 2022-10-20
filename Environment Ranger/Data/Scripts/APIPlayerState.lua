local API = {}

local playerStateHelperGroup = nil

function API.SetStateHelperGroup(group)
	playerStateHelperGroup = group
end

function API.GetStateHelperName(player)
	return player.id
end

function API.GetStateHelper(player)
	if playerStateHelperGroup then
		return playerStateHelperGroup:FindChildByName(API.GetStateHelperName(player))
	end
end

function API.SetTargetId(player, targetId)
	local helper = API.GetStateHelper(player)

	if helper then
		helper:SetNetworkedCustomProperty("TargetID", targetId)
	end
end

function API.GetTargetId(player)
	local helper = API.GetStateHelper(player)

	if helper then
		return helper:GetCustomProperty("TargetID")
	end
end

return API
