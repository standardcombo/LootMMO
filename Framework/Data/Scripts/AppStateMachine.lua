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

--AppState Events
API.EnterKey = "AppState.Enter"
API.ExitKey = "AppState.Exit"

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
API.Ability = 170
API.Adventure = 180

-- Server/Client
function API.GetStateForPlayer(player)
	return player:GetResource('AppState')
end

-- Server
function API.SetStateForPlayer(player, newState)
	local currentState = API.GetStateForPlayer(player)
	
	--print("AppStateMachine::SetStateForPlayer() ".. player.name ..", newState = ".. newState)
	
	-- TODO: Verify transition is valid from `current` to `new`

	Events.Broadcast(API.ExitKey, player, currentState, newState)

	player:SetResource('AppState', newState)

	Events.Broadcast(API.EnterKey, player, newState, currentState)
end

if Environment.IsServer() then
	Events.ConnectForPlayer(
		'AppState.Set',
		function(player, newState)
			API.SetStateForPlayer(player, newState)
		end
	)
end

-- Client
local _localPlayerState = 0
local _prevLocalPlayerState = 0

-- Client
function API.GetLocalState()
	return _localPlayerState
end

function DoLocalStateChange(newState)
	if newState == 0 and _localPlayerState then
		return
	end
	--print("DoLocalStateChange new = ".. newState ..", prev = ".. _localPlayerState)

	local player = Game.GetLocalPlayer()

	Events.Broadcast(API.ExitKey, player, _localPlayerState, newState)

	_prevLocalPlayerState = _localPlayerState
	_localPlayerState = newState

	Events.Broadcast(API.EnterKey, player, newState, _prevLocalPlayerState)
end

-- Client
function API.SetLocalState(newState)
	DoLocalStateChange(newState)

	Events.BroadcastToServer('AppState.Set', newState)
end

if Environment.IsClient() then
	-- Give other client scripts a chance to connect event listeners
	Task.Wait()

	Game.GetLocalPlayer().resourceChangedEvent:Connect(
		function(player, resourceId, newState)
			if resourceId == 'AppState' and newState ~= _localPlayerState then
				DoLocalStateChange(newState)
			end
		end
	)
	DoLocalStateChange(Game.GetLocalPlayer():GetResource('AppState'))
end
