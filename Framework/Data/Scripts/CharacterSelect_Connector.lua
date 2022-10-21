
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local LOAD_GEAR_ON_JOIN = script:GetCustomProperty("LoadGearOnJoin")

while not _G.AppState do
	Task.Wait()
end
local appstate = _G.AppState
local DataKey = 'Cselect'
local EAPI = _G['Character.EquipAPI']
local NewCharacterEvent = 'NewCharacter'


Game.playerJoinedEvent:Connect(function(player)
	if LOAD_GEAR_ON_JOIN then
		LoadGear(player)
	end
end)

Game.playerLeftEvent:Connect(function(player)
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

		-- TODO quest data

		CSave.SavePlayerCharacter(player, character)
	end
end

function LoadGear(player)
	local data = Storage.GetPlayerData(player)
	if data.travel then
		local CSave = _G['Character.SaveApi']
		
		local lastBagData = CSave.GetLastPlayedLootBag(player)
		local lastCharId = CSave.GetLastPlayedCharacterId(player)

		player.serverUserData.currentBag = LOOT_BAG_PARSER.Parse(lastBagData)

		Task.Wait(1)
		if not Object.IsValid(player) then return end
		
		local success = SelectCharacter(player, lastCharId)
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

