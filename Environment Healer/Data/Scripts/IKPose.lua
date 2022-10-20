
local ANCHORS = script:FindDescendantsByType("IKAnchor")

function Play(player)
	for _,anchor in ipairs(ANCHORS) do
		_G.IkStack.Add(player, anchor)
	end
end

function Stop(player)
	for _,anchor in ipairs(ANCHORS) do
		_G.IkStack.Remove(player, anchor)
	end
end
