while not _G.AppState do
    Task.Wait()
end
local appstate = _G.AppState
local DataKey = 'Cselect'
local EAPI = _G['Character.EquipAPI']
local NewCharacterEvent = 'NewCharacter'

function HasCharacters(player)
    local data = player:GetPrivateNetworkedData(DataKey)
    return #data > 0
end

Events.Connect(
    'AppState.Enter',
    function(player, newState, prevPlayerState)
        if newState == appstate.SocialHub and prevPlayerState == appstate.BagSelection then
            if HasCharacters(player) then
                appstate.SetStateForPlayer(player, appstate.CharacterSelection)
            else
                Events.Broadcast(NewCharacterEvent, player)
            end
            return
        end
        if newState == appstate.BagSelection then
            local character = EAPI.GetCurrentCharacter(player)
            if character then
                character:Destroy()
            end
            return
        end
    end
)
