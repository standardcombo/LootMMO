while not _G['Character.EquipAPI'] do
	Task.Wait()
end
local CSave = _G['Character.SaveApi']

local CHARACTERCONSTUCT = _G['Character.Constructor']
local ReturnCall = 'RCcall'
local SelectCharacterEvent = 'SelectCharacter'
local NewCharacterEvent = 'NewCharacter'
local DeleteCharacterEvent = 'DeleteCharacter'

local DataKey = 'Cselect'

function UpdatePlayerData(player)
	local playercharacters = CSave.GetSavedPlayerCharacterData(player)
	local SortCharacterData = {}
	for index, data in ipairs(playercharacters) do
		local newChar = CHARACTERCONSTUCT.NewMicroCharacter()
		newChar:Deserialize(data)
		local Level = newChar:GetComponent('Level')
		local Class = 'None'
		for key, value in pairs(data.components) do
			if value.id == 'Class' then
				Class = value.data
				break
			end
		end

		table.insert(
			SortCharacterData,
			{
				lastPlayed = newChar.lastPlayed,
				level = Level:GetLevel(),
				id = newChar.id,
				class = Class
			}
		)
	end

	table.sort(
		SortCharacterData,
		function(a, b)
			return a.lastPlayed.secondsSinceEpoch > b.lastPlayed.secondsSinceEpoch
		end
	)

	for key, value in pairs(SortCharacterData) do
		value.lastPlayed = value.lastPlayed:ToIsoString()
	end

	player:SetPrivateNetworkedData(DataKey, SortCharacterData)
end

function PlayerJoined(player)
	UpdatePlayerData(player)
end

function Acknowledge(player)
	Events.BroadcastToPlayer(player, ReturnCall)
end

function UpdatePlayersDataOnRemove(character, player)
	Task.Wait()
	if Object.IsValid(player) then
		UpdatePlayerData(player)
	end
end

function SelectCharacter(player, characterId)
	local playercharacters = CSave.GetSavedPlayerCharacterData(player)
	for index, value in ipairs(playercharacters) do
		if value.id == characterId then
			CSave.SetLastPlayedCharacterId(player, characterId)
			
			Acknowledge(player)
			return
		end
	end
end

function NewCharacterSelected(player)
	CSave.SetLastPlayedCharacterId(player, "New")
	Acknowledge(player)
end

function MakeNewCharacter(player)
	assert(player)
	
	local currentCharacter = CHARACTERCONSTUCT.NewCharacter()
	currentCharacter:SetOwner(player)
	currentCharacter.autoSave = true
	currentCharacter.removeOwnerEvent:Connect(UpdatePlayersDataOnRemove)
	
	Acknowledge(player)
	UpdatePlayerData(player)
end

function DeleteCharacter(player, characterId)
	CSave.DeleteSavedPlayerCharacter(player, characterId)
	UpdatePlayerData(player)
end

for key, player in pairs(Game.GetPlayers()) do
	PlayerJoined(player)
end

Game.playerJoinedEvent:Connect(PlayerJoined)

Events.ConnectForPlayer(SelectCharacterEvent, SelectCharacter)
Events.ConnectForPlayer(NewCharacterEvent, NewCharacterSelected)
Events.ConnectForPlayer(DeleteCharacterEvent, DeleteCharacter)
Events.Connect(NewCharacterEvent .. "S", MakeNewCharacter)
