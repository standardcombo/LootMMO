local NOTIFIER = script:GetCustomProperty('Notifier'):WaitForObject()
local LEVEL_UP_ICON = script:GetCustomProperty('LevelUpIcon'):WaitForObject()
local SOUND = script:GetCustomProperty('Sound'):WaitForObject()
local EquipAPI = _G['Character.EquipAPI']
local pointsUpdatedEvent = nil
local hasSeen = true

function CalculateNotifiers()


end 

function Show()
    ROOT.visibility = Visibility.INHERIT
end

function Hide()
    ROOT.visibility = Visibility.FORCE_OFF
end

function Seen()
    if LEVEL_UP_ICON.visibility == Visibility.FORCE_OFF then
        return
    end
    LEVEL_UP_ICON.visibility = Visibility.FORCE_OFF
    NOTIFIER.visibility = Visibility.FORCE_OFF
end

function NotSeen()
    if LEVEL_UP_ICON.visibility == Visibility.INHERIT then
        return
    end
    LEVEL_UP_ICON.visibility = Visibility.INHERIT
    NOTIFIER.visibility = Visibility.INHERIT
    SOUND:Play()
end

function ToggleSeen()
    if hasSeen then
        Seen()
    else
        NotSeen()
    end
end

function UpdatedSeen()
    hasSeen = false
    ToggleSeen()
end

function EquipPlayer(Character, Player)
    local points = Character:GetComponent('Points')
    if points then
        points.pointChangedEvent:Connect(UpdatedSeen)
        if points.unspentPoints > 0 then 

            UpdatedSeen()
        end 
    end
end

function UnEquipPlayer()
    if pointsUpdatedEvent then
        pointsUpdatedEvent:Disconnect()
        pointsUpdatedEvent = nil
    end
end

 
EquipAPI.playerEquippedEvent:Connect(EquipPlayer)
EquipAPI.playerUnequippedEvent:Connect(UnEquipPlayer)
