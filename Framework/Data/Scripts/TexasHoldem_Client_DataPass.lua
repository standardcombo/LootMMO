local data = {}
local GameSetting = {}
local TEXAS_POKER_SETTINGS = require(script:GetCustomProperty("TexasPoker_Settings"))

function GameSetting:SetData(key, value)
    data[key] = value
end 

function GameSetting:GetData(key)
    return data[key] or TEXAS_POKER_SETTINGS[key]
end 
function GameSetting:ClearData()
    data = {}
end 

return GameSetting