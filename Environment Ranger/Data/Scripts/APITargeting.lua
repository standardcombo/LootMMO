local API_PS = require(script:GetCustomProperty("APIPlayerState"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local API = {}

-- This script is client only, but is required by some scripts that are also used on the server
local IS_CLIENT, LOCAL_PLAYER = pcall(Game.GetLocalPlayer)

local localTarget = nil
local systemFunctions = nil

-- Owning client (for the targeting system itself)
function API.SetTarget_Direct(target)
	localTarget = target
	local targetId = API_ID.GetIdFromObject(target)
	API_RE.BroadcastToServer("ST", targetId)
end

-- Owning client
function API.FindAutoTarget()
	return systemFunctions.FindAutoTarget()
end

-- Owning client
function API.TrySetTarget(target, isAutoTarget)
	systemFunctions.TrySetTarget(target, isAutoTarget)
end

-- Any client
function API.GetTarget(player)
	local result = nil

	if player == LOCAL_PLAYER then
		result = localTarget
	else
		local targetId = API_PS.GetTargetId(player)
		result = API_ID.GetObjectFromId(targetId)
	end

	if Object.IsValid(result) then
		return result
	end
end

function API.RegisterSystem(functionTable)
	systemFunctions = functionTable
end

return API
