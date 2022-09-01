local parent = script.parent
local propUniqueID = script:GetCustomProperty("UniqueID")
local openSound = script:GetCustomProperty("OpenSound")
local closeSound = script:GetCustomProperty("CloseSound")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local isOn = false

function SetUIInteraction(value)
    UI.SetCanCursorInteractWithUI(value)
    UI.SetCursorVisible(value)

    LOCAL_PLAYER:GetDefaultCamera().isDistanceAdjustable = not value

    UI.SetSocialMenuEnabled(not value)

    Events.Broadcast("ToggleVisibility", "HUD", not value)
    Events.BroadcastToServer("ToggleUI", value)
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == propUniqueID then
		if toggle then
			parent.visibility = Visibility.INHERIT
            if openSound then
                World.SpawnAsset(openSound)
            end
		else
			parent.visibility = Visibility.FORCE_OFF
            if closeSound then
                World.SpawnAsset(closeSound)
            end
        end
        isOn = toggle
        SetUIInteraction(toggle)
    else
        if isOn and uniqueId == "CoreModal" then
            SetUIInteraction(false)
        end
        isOn = false
        parent.visibility = Visibility.FORCE_OFF
	end
end

Events.Connect("ToggleUI", OnToggleUI)
parent.visibility = Visibility.FORCE_OFF