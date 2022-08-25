while not _G['Character.Contsructor'] do
    Task.Wait()
end
local CHARACTER = _G['Character.Contsructor']
local API = {}
while not _G.CC_Util do
    Task.Wait()
end
local CC_Util = _G.CC_Util
local LUAEVENT = CC_Util:WaitForlibrary('Lua Event')
API.playerEquippedEvent = LUAEVENT.NewSafeEvent()
API.playerUnequippedEvent = LUAEVENT.NewSafeEvent()
local function EnvironmentBypas()
    if Environment.IsClient() then
        return 'clientUserData'
    end
    return 'serverUserData'
end
function API.GetCurrentCharacter(player)
    local bypas = EnvironmentBypas()
    return player[bypas].CurrentCharacter
end
function API.UnequipCharacter(player)
    if not player:IsA('Player') then
        return
    end
    local currentlyEquipped = API.GetCurrentCharacter(player)
    local bypas = EnvironmentBypas()
    player[bypas].CurrentCharacter = nil
    if currentlyEquipped and currentlyEquipped:GetOwner() == player then
        currentlyEquipped:RemoveOwner()
        API.playerUnequippedEvent:Trigger(currentlyEquipped, player)
    end
end
function API.EquipCharacter(character, player)
    if not player:IsA('Player') then
        return
    end
    API.UnequipCharacter(player)
    local bypas = EnvironmentBypas()
    player[bypas].CurrentCharacter = character
    API.playerEquippedEvent:Trigger(character, player)
end
function _UnequipCharacter(character, player)
    API.UnequipCharacter(player)
end
function _EquipCharacter(character, player)
    API.EquipCharacter(character, player)
end
function SetupCharacterConnection(newCharacter)
    newCharacter.setOwnerEvent:Connect(_EquipCharacter)
    newCharacter.removeOwnerEvent:Connect(_UnequipCharacter)
end

CHARACTER.newCharacterFinished:Connect(SetupCharacterConnection)

_G['Character.EquipAPI'] = API
return API
