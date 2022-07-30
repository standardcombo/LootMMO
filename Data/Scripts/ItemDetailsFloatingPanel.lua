
local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local NAME = script:GetCustomProperty("Name"):WaitForObject()


function SetItem(item)
	local def = _G.Items.GetDefinition(item.name)
	
	ICON:SetImage(def.icon)
	ICON.isFlippedHorizontal = def.flipIconH
	ICON.isFlippedVertical = def.flipIconV
	
	NAME.text = item.fullName
	
	-- TODO: Stat bonuses
	
	-- TODO: Triggered ability description
end

