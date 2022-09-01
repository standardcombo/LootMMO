local ID = script:GetCustomProperty("Id")

function ToggleVisibility(inId, value)
    if inId ~= ID then return end
    if not value then
        script.parent.visibility = Visibility.FORCE_OFF
    else
        script.parent.visibility = Visibility.INHERIT
    end
end

Events.Connect("ToggleVisibility", ToggleVisibility)