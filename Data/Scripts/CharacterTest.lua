while not _G['Character.Contsructor'] do
    Task.Wait()
end

local character = _G['Character.Contsructor']
local EquipAPI = _G['Character.EquipAPI']
local SaveAPI = _G['Character.SaveApi']
local CLASS = _G['Character.Classes']

function OnReceiveMessage(player, params)
    local splitString = {CoreString.Split(params.message, ' ')}
    if splitString[1] == '/help' then
        Chat.BroadcastMessage('All Commands \n /class class \n /stat stat value \n /classes \n /mystats \n /addxp ')
        return
    end
    if splitString[1] == '/class' then
        local newCharacter = EquipAPI.GetCurrentCharacter(player)
        local class = newCharacter:GetComponent('Class')
        if class then
            class:SetClass(splitString[2])
            class:EquipOwner()
        end
        return
    end
    if splitString[1] == '/newchar' then
        local newCharacter = character.NewCharacter()
        newCharacter:SetOwner(player)
    end
    if splitString[1] == '/stat' then
        local newCharacter = EquipAPI.GetCurrentCharacter(player)
        local stats = newCharacter:GetComponent('Stats')
        if stats then
            stats:SetTempStat(splitString[2], tonumber(splitString[3]))
        end
        return
    end
    if splitString[1] == '/addpoint' then
        local newCharacter = EquipAPI.GetCurrentCharacter(player)
        local points = newCharacter:GetComponent('Points')
        if points then
            points:AddPoint()
        end
        return
    end
    if splitString[1] == '/classes' then
        local message = ''
        for key, value in pairs(CLASS.GetClasses()) do
            message = message .. key .. ' | '
        end
        Chat.BroadcastMessage(message)
    end
    if splitString[1] == '/mystats' then
        local newCharacter = EquipAPI.GetCurrentCharacter(player)
        local stats = newCharacter:GetComponent('Stats')
        local message = ''
        for key, value in pairs(stats:GetTempStats()) do
            message = message .. key .. value .. ' | '
        end
        Chat.BroadcastMessage(message)
    end
    if splitString[1] == '/addxp' then
        local newCharacter = EquipAPI.GetCurrentCharacter(player)
        local level = newCharacter:GetComponent('Level')
        level:AddXP(tonumber(splitString[2]))
    end
end

Chat.receiveMessageHook:Connect(OnReceiveMessage)
