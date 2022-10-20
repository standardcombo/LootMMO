local propLight = script:GetCustomProperty("Light"):WaitForObject()
local propFlame = script:GetCustomProperty("Flame"):WaitForObject()

function Dawn()
 propLight.visibility =  Visibility.FORCE_OFF
 propFlame.visibility =  Visibility.FORCE_OFF
end

function Dusk()
 propLight.visibility =  Visibility.INHERIT
 propFlame.visibility =  Visibility.INHERIT
end


Events.Connect("Dawn", Dawn)
Events.Connect("Dusk", Dusk)