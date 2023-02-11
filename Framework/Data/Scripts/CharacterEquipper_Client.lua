while not _G['Character.Constructor'] do
	Task.Wait()
end


local CHARACTER = _G['Character.Constructor']
local networkKey = 'Character_Equipped'
local LOCALPLAYER = Game.GetLocalPlayer()
local lastCharacter = nil

function RemoveCharacter()
	if lastCharacter then
		lastCharacter:RemoveOwner()
	end
	lastCharacter = nil
end

function UpdateCharacter(data)
	if lastCharacter then
		lastCharacter:Deserialize(data)
	end
end

function NewCharacter(data)
	lastCharacter = CHARACTER.NewCharacter()
	UpdateCharacter(data)
	lastCharacter:SetOwner(LOCALPLAYER)
end

function EquipedCharacterChanged(player, key)
	if key ~= networkKey then
            return
        end

        local characterData = player:GetPrivateNetworkedData(key)
        if not characterData then
            RemoveCharacter()
            return
        end

        if not lastCharacter or characterData.id ~= lastCharacter.id then
            NewCharacter(characterData)
            return
        end
        UpdateCharacter(characterData)
end

EquipedCharacterChanged(LOCALPLAYER, networkKey)
LOCALPLAYER.privateNetworkedDataChangedEvent:Connect(EquipedCharacterChanged)
