
local EVENT_CLASS_SELECTED = "ClassSelection.Selected"

local LOCAL_PLAYER = Game.GetLocalPlayer()

function ClassSelectionRecieved(player, class)
	local EAPI         = _G["Character.EquipAPI"]
	local Classes      = _G['Character.Classes']

	local Classdata = Classes.GetClass(class)
	if not (Classdata) then
		return
	end
	local Character = EAPI.GetCurrentCharacter(player)
	if not Character then
		return
	end
	local Class = Character:GetComponent('Class')
	local Progression = Character:GetComponent('Progression')
	if not Classdata['MainClass']['Identifier'] == Class:GetClass() then
		return
	end
	local isMain = (Classes.GetMainClass(class) ~= nil)

	if isMain then
		if Progression:GetProgressionKey('ClassSelect') then
			Events.BroadcastToServer("CCselection", class)
			Class:SetClass(class)
		end
		return
	elseif Progression:GetProgressionKey('SubClassSelect') then
		Events.BroadcastToServer("CCselection", class)
		Class:SetClass(class)
		return
	end
end

Events.Connect(EVENT_CLASS_SELECTED, function(classChoice)
	ClassSelectionRecieved(LOCAL_PLAYER, classChoice)
end)

--[[
Events.Connect("ClassSelection.Subclass", function(subclassChoice)
	ClassSelectionRecieved(LOCAL_PLAYER, subclassChoice)
	Task.Wait()
	Events.Broadcast("Ability_PanelRefresh")
end)
]]