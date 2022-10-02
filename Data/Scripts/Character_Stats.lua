local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
setmetatable(
	{
		tableElements = {
			'stats',
			'tempStats'
		},
		eventElements = {
			'statsUpdatedEvent',
			'tempStatsUpdatedEvent'
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = 'Stats'
component.autoNetorked = true
function TriggerEvent(event, ...)
	if event then
		event:Trigger(...)
	end
end

function component:SetStat(stat, statValue)
	local oldStats = self:GetStats()
	oldStats[stat] = statValue or 0
	self:SetStats(oldStats)
end

function component:SetStats(stats)
	if stats then
		for key, value in pairs(stats) do
			self:GetStats()[key] = value
		end
		TriggerEvent(self.statsUpdatedEvent, self, self:GetStats())
	end
end

function component:GetStats()
	return self.stats
end

function component:GetStat(stat)
	local stats = self:GetStats()
	return stats[stat] or 0
end

function component:SetTempStat(stat, statValue)
	local oldStats = self:GetTempStats()
	oldStats[stat] = statValue or 0
	self:SetTempStats(oldStats)
end

function component:SetTempStats(stats)
	if stats then
		for key, value in pairs(stats) do
			self:GetTempStats()[key] = value
		end
		TriggerEvent(self.tempStatsUpdatedEvent, self, self:GetTempStats())
	end
end

function component:ResetTempStats()
	self:SetTempStats(self:GetStats())
end

function component:ResetTempStat(stat)
	self:SetTempStat(self:GetStat(stat))
end

function component:GetTempStats()
	return self.tempStats
end

function component:GetTempStat(stat)
	local stats = self:GetTempStats()
	return (stats or {})[stat] or 0
end

function component:Init()
	self:ResetTempStats()
end

function component:Serialize()
	return {}--self:GetStats()
end

function component:Deserialize(data)
	--self:SetStats(data)
end

return component
