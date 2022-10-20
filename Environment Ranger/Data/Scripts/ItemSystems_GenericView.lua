function Tick(dt)
    if script.parent.clientUserData.isVisible then
        script.parent.visibility = Visibility.INHERIT
    else
        script.parent.visibility = Visibility.FORCE_OFF
    end
end