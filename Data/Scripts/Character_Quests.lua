local COMPONET_DATATYPE = require(script:GetCustomProperty('ComponetDatatype'))
local component =
setmetatable(
	{
		tableElements = {

		},
		eventElements = {
			"QuestsUpdated"
		}
	},
	{ __index = COMPONET_DATATYPE }
)
component.id = 'Quests'
component.autoNetorked = false

function component:Serialize()

end

function component:Deserialize(data)

end

return component
