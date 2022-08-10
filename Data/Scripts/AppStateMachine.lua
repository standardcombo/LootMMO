
--[[
	API:
	
	Server/Client
		GetStateForPlayer(player)
	
	Server-only
		SetStateForPlayer(player, newState)
	
	Client-only
		GetLocalState()
		SetLocalState(newState)
		
	Events
		AppState.Exit<player, currentState, newState>
		AppState.Enter<player, newState, prevState>
]]

local API = {}
_G.AppState = API

-- State numbers
API.Settings = 1
API.CharacterSelection = 2
API.BagSelection = 3
API.SocialHub = 4
API.Mailbox = 5
API.Shop = 6
API.Minigame = 7
API.Study = 8
API.Anvil = 9
API.Cauldron = 10
API.BountyBoard = 11
API.Stash = 12
API.Adventure = 13
API.LevelUp = 14
API.Inventory = 15
API.ItemFound = 16


-- Server/Client
function API.GetStateForPlayer(player)
	return player:GetResource("AppState")
end


-- Server
function API.SetStateForPlayer(player, newState)
	local currentState = API.GetStateForPlayer(player)
	
	-- TODO: Verify transition is valid from `current` to `new`
	
	Events.Broadcast("AppState.Exit", player, currentState, newState)
	
	player:SetResource("AppState", newState)
	
	Events.Broadcast("AppState.Enter", player, newState, currentState)
end

if Environment.IsServer() then
	Events.ConnectForPlayer("AppState.Set", function(player, newState)
		API.SetStateForPlayer(player, newState)
	end)
end


-- Client
local _localPlayerState = 0
local _prevLocalPlayerState = 0

-- Client
function API.GetLocalState()
	return _localPlayerState
end

function DoLocalStateChange(newState)
	local player = Game.GetLocalPlayer()
	
	Events.Broadcast("AppState.Exit", player, _localPlayerState, newState)
	
	_prevLocalPlayerState = _localPlayerState
	_localPlayerState = newState
	
	Events.Broadcast("AppState.Enter", player, newState, _prevLocalPlayerState)
end

-- Client
function API.SetLocalState(newState)
	Events.BroadcastToServer("AppState.Set", newState)
	
	DoLocalStateChange(newState)
end

if Environment.IsClient() then
	Game.GetLocalPlayer().resourceChangedEvent:Connect(function(player, resourceId, newState)
		if resourceId == "AppState" 
		and newState ~= _localPlayerState then
			DoLocalStateChange(newState)
		end
	end)
end


