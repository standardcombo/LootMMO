
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local LOAD_GEAR_ON_JOIN = script:GetCustomProperty("LoadGearOnJoin")

local waitCount = 0
while not _G.AppState do
	Task.Wait()
	waitCount = waitCount + 1
end

local appstate = _G.AppState
local DataKey = 'Cselect'
local EAPI = _G['Character.EquipAPI']
local NewCharacterEvent = 'NewCharacter'

local PRE_TRAVEL_EVENT = "GoingToTravel"


function OnPlayerJoined(player)
	if LOAD_GEAR_ON_JOIN then
		LoadGear(player)
	end
end
Game.playerJoinedEvent:Connect(OnPlayerJoined)

-- Leaving the game
Events.Connect(PRE_TRAVEL_EVENT, function(player)
	SaveGear(player)
end)


Events.Connect(
	'AppState.Enter',
	function(player, newState, prevPlayerState)
		if newState == appstate.SocialHub and prevPlayerState == appstate.BagSelection then
			local Csave = _G['Character.SaveApi']
			local lastCharId = Csave.GetLastPlayedCharacterId(player)
			--print("CharacterSelect_Connector, lastCharId = "..tostring(lastCharId))
			
			SelectCharacter(player, lastCharId)
		
		elseif newState == appstate.BagSelection then
			local character = EAPI.GetCurrentCharacter(player)
			if character then
				character:Destroy()
			end
			return
		end
	end
)


function SaveGear(player)
	local character = _G['Character.EquipAPI'].GetCurrentCharacter(player)
	if character then
		local CSave = _G['Character.SaveApi']

		local serializedBag = LOOT_BAG_PARSER.Serialize(player.serverUserData.currentBag)
		CSave.SetLastPlayedLootBag(player, serializedBag)
		CSave.SetLastPlayedCharacterId(player, character.id)

		CSave.SavePlayerCharacter(player, character)
	end
end

function LoadGear(player)
	local data = Storage.GetPlayerData(player)

	local CSave = _G['Character.SaveApi']
	
	local lastBagData = CSave.GetLastPlayedLootBag(player)
	local lastCharId = CSave.GetLastPlayedCharacterId(player)

	if lastBagData then
		player.serverUserData.currentBag = LOOT_BAG_PARSER.Parse(lastBagData)
	else
		warn("No Loot bag selection found.")
	end

	if lastCharId then
		Task.Wait(1)
		if not Object.IsValid(player) then return end
		
		local success = SelectCharacter(player, lastCharId)
	else
		warn("No character data found.")
	end
end

function SelectCharacter(player, characterId)
	if characterId == "New" or characterId == nil then
		-- Creates a new character
		RequestNewCharacter(player)
		return
	end
	
	-- Loads the last one played
    local playercharacters = _G['Character.SaveApi'].GetSavedPlayerCharacterData(player)
    for index, value in ipairs(playercharacters) do
        if value.id == characterId then
            local newCharacter = _G['Character.Constructor'].NewCharacter()
            newCharacter:Deserialize(value)
            newCharacter:SetOwner(player)
            newCharacter.autoSave = true
            return
        end
    end
    -- Failed to load, create a new character
	RequestNewCharacter(player)
end
function RequestNewCharacter(player)
	Events.Broadcast(NewCharacterEvent .. "S", player)
end

if waitCount > 0 then
	for _,p in ipairs(Game.GetPlayers()) do
		OnPlayerJoined(p)
	end
end

