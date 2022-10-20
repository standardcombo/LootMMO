local API_PS = require(script:GetCustomProperty("APIPlayerState"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

function OnSetTarget(player, targetId)
	API_PS.SetTargetId(player, targetId)
end

API_RE.ConnectForPlayer("ST", OnSetTarget)
