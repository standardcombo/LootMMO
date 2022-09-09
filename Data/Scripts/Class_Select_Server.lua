local classConfirmSelection = 'CCselection'
local replyCall = 'ClassRply'
Task.Wait()
local EAPI = _G['Character.EquipAPI']
local Classes = _G['Character.Classes']
local ReturnCodes = {
    Fail = 1,
    Success = 2
}

function ReplyToPlayer(player, code)
    Events.BroadcastToPlayer(player, replyCall, code)
end

function ClassSelectionRecieved(player, class)
    local Classdata = Classes.GetClass(class)
    if not (Classdata) then
        ReplyToPlayer(player, ReturnCodes.Fail)
        return
    end
    local Character = EAPI.GetCurrentCharacter(player)
    if not Character then
        ReplyToPlayer(player, ReturnCodes.Fail)
        return
    end
    local Class = Character:GetComponent('Class')
    local Progression = Character:GetComponent('Progression')
    if not Classdata['MainClass']['Identifier'] == Class:GetClass() then
        ReplyToPlayer(player, ReturnCodes.Fail)
        return
    end
    local isMain = (Classes.GetMainClass(class) ~= nil)

    if isMain then
        if Progression:GetProgressionKey('ClassSelect') then
            ReplyToPlayer(player, ReturnCodes.Success)
            Class:SetClass(class)
        end
        ReplyToPlayer(player, ReturnCodes.Fail)
        return
    elseif Progression:GetProgressionKey('SubClassSelect') then
        ReplyToPlayer(player, ReturnCodes.Success)
        Class:SetClass(class)
        return
    end

    ReplyToPlayer(player, ReturnCodes.Fail)
end

Events.ConnectForPlayer(classConfirmSelection, ClassSelectionRecieved)
