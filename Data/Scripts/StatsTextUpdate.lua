local UITEXT_BOX = script:GetCustomProperty('UITextBox'):WaitForObject()
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))

function Tick()
    UITEXT_BOX.text = tostring(STATS_CONNECTOR.GetStat(Game.GetLocalPlayer(), 'Level'))
end
