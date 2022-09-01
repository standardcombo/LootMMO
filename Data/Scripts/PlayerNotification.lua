local NOTIFIER = script:GetCustomProperty('Notifier'):WaitForObject()
local LEVEL_UP_ICON = script:GetCustomProperty('LevelUpIcon'):WaitForObject()

local EquipAPI = _G['Character.EquipAPI']
local pointsUpdatedEvent = nil
local hasSeen = true

function ToggleSeen()
    if hasSeen then
        LEVEL_UP_ICON.visibility = Visibility.FORCE_OFF
        NOTIFIER.visibility = Visibility.FORCE_OFF
    else
        LEVEL_UP_ICON.visibility = Visibility.INHERIT
        NOTIFIER.visibility = Visibility.INHERIT
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
