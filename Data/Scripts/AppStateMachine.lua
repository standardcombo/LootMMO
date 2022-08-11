
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
API.None = 0
API.Settings = 10
API.CharacterSelection = 20
API.BagSelection = 30
API.SocialHub = 40
API.Mailbox = 50
API.Shop = 60
API.Minigame = 70
API.Study = 80
API.Anvil = 90
API.Cauldron = 100
API.BountyBoard = 110
API.Stash = 120
API.Adventure = 130
API.LevelUp = 140
API.Inventory = 150
API.ItemFound = 160


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
	DoLocalStateChange(Game.GetLocalPlayer():GetResource("AppState"))
end


