local UITEXT_BOX = script:GetCustomProperty('UITextBox'):WaitForObject()
 

function Tick()
    UITEXT_BOX.text = tostring(STATS_CONNECTOR.GetStat(Game.GetLocalPlayer(), 'Level'))
end
