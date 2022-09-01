local lastToggle = false
local lastId = ""

function OnToggleUI(uniqueId, toggle)
    lastToggle = toggle
    lastId = uniqueId
end

function OnEscape(player, param)
    if lastToggle then
        param.openPauseMenu = false
        Events.Broadcast("ToggleUI", lastId, false)
    end
end

Events.Connect("ToggleUI", OnToggleUI)
Input.escapeHook:Connect(OnEscape)