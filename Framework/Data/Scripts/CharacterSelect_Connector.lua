
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local LOAD_GEAR_ON_JOIN = script:GetCustomProperty("LoadGearOnJoin")

local DataKey = 'Cselect'
local EAPI = _G['Character.EquipAPI']
local NewCharacterEvent = 'NewCharacter'

local PRE_TRAVEL_EVENT = "GoingToTravel"


function OnPlayerJoined(player)
	player.serverUserData.transferData = player:GetJoinTransferData()
	--print("CharacterSelect_Connector OnPlayerJoined",player.serverUserData.transferData.spawnKey)
	if LOAD_GEAR_ON_JOIN or player:GetJoinTransferData().spawnKey then
		LoadGear(player)
	end
end

-- Leaving the game
Events.Connect(PRE_TRAVEL_EVENT, function(player)
	SaveGear(player)
end)


Events.Connect(
	'AppState.Enter',
	function(player, newState, prevPlayerState)
		while not _G.AppState do
			Task.Wait()
		end
		while not EAPI do
			Task.Wait()
			EAPI = _G['Character.EquipAPI']
		end
		if newState == _G.AppState.SocialHub and prevPlayerState == _G.AppState.BagSelection then
			local Csave = _G['Character.SaveApi']
			local lastCharId = Csave.GetLastPlayedCharacterId(player)
			--print("CharacterSelect_Connector, lastCharId = "..tostring(lastCharId))
			
			SelectCharacter(player, lastCharId)
		
		elseif newState == _G.AppState.BagSelection then
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
		--print("Selecting character")
		SelectCharacter(player, lastCharId)
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

Game.playerJoinedEvent:Connect(OnPlayerJoined)