local STATS_API = require(script:GetCustomProperty('Stats_Api'))
function OnActionPressed(player, action, value)
    if action == 'LevelUp' then
        STATS_API.SetStats(player, {Level = STATS_API.GetStat(player, 'Level') + 1})
    end
    if action == 'LevelDown' then
        STATS_API.SetStats(player, {Level = STATS_API.GetStat(player, 'Level') - 1})
    end
end

Input.actionPressedEvent:Connect(OnActionPressed)
