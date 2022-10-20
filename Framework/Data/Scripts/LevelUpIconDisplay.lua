local ICON = script:GetCustomProperty("icon"):WaitForObject()

local EquipAPI = _G["Character.EquipAPI"]
local CHARACTERCLASSES = _G["Character.Classes"]
local LOCAL_PLAYER = Game.GetLocalPlayer()
local pointChangedEvent
local pointSpentEvent



local function Update(points)
	if points.unspentPoints > 0 then
		ICON.visibility = Visibility.INHERIT
	else
		ICON.visibility = Visibility.FORCE_OFF
	end
end

local function EquipPlayer(char, player)
	if LOCAL_PLAYER ~= player then return end
	local points = char:GetComponent("Points")
	pointChangedEvent = points.pointChangedEvent:Connect(Update)
	Update(points)
end

local function UnequipPlayer(char, player)
	if LOCAL_PLAYER ~= player then return end
	if pointChangedEvent then
		pointChangedEvent:Disconnect()
		pointChangedEvent = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(EquipPlayer)
EquipAPI.playerUnequippedEvent:Connect(UnequipPlayer)
