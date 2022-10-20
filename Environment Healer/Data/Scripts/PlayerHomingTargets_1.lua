--[[
	Player Homing Targets
	v1.0
	by: standardcombo
	
	Spawns an invisible targeting object for each Player and attaches it to their neck position.
	These objects can be used for targeting homing shots that will result in successful hits,
	regardless of the Player's animation or mount.
--]]

-- Registers itself into the global table
local API = {}
_G["standardcombo.Combat.PlayerHomingTargets"] = API


local TARGET_TEMPLATE = script:GetCustomProperty("PlayerHomingTarget")


local targetingObjects = {}


function API.GetTargetForPlayer(player)
	if targetingObjects[player] then
		return targetingObjects[player]
	end
	return player
end


function OnPlayerJoined(player)
	local obj = World.SpawnAsset(TARGET_TEMPLATE)
	obj:AttachToPlayer(player, "upper_spine")
	targetingObjects[player] = obj
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

