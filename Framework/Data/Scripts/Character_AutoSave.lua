local CSave = _G['Character.SaveApi']
local EAPI = _G['Character.EquipAPI']

local function Save(character, player)
	if not (character and player) then
		return
	end
	if not character.autoSave == true then
		return
	end
	character.lastPlayed = DateTime.CurrentTime()
	CSave.SavePlayerCharacter(player, character)
end

-- Auto save on leave
function OnPlayerLeft(player)
	local character = EAPI.GetCurrentCharacter(player)
	if character then
		if character.autoSave then
			Save(character, player)
		end
		character:Destroy()
	end
end

function OnPlayerEquipped(character, player)
	character.removeOwnerEvent:Connect(Save)
end

Game.playerLeftEvent:Connect(OnPlayerLeft)
EAPI.playerEquippedEvent:Connect(OnPlayerEquipped)
