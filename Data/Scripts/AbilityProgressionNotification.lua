local EquipAPI = _G["Character.EquipAPI"]
local CHARACTERCLASSES = _G["Character.Classes"]
local LOCAL_PLAYER = Game.GetLocalPlayer()
local progressionChangedEvent


local function SendNotification()
	Events.Broadcast("PlayerNotification")
end

local function EquipProgressionCheck(character, progression)
	local class = character:GetComponent("Class")
	local points = character:GetComponent("Points")
	local classname = class:GetClass()

	if classname == "None" and progression:GetProgressionKey("ClassSelect") then
		SendNotification()
	end

	if CHARACTERCLASSES.GetMainClass(classname) and classname ~= "None" then
		SendNotification()
	end

	for i = 1, 5 do
		local slotCheck   = progression:GetProgressionKey("AbilitySlot" .. tostring(i))
		local acceptCheck = progression:GetProgressionKey("AcceptSlot" .. tostring(i))
		if slotCheck and not acceptCheck then
			SendNotification()
		end
	end


	if points.unspentPoints > 0 then
		SendNotification()
	end

end

local commonkeyTable = {
	["AbilitySlot"] = true,
	["ClassSelect"] = true,
	["PotionSlot"] = true,
	["SubClassSelect"] = true,
	["LevelUp"] = true,
}


local function UpdateProgression(progression, key, elementTable, value)
	if elementTable then
		if commonkeyTable[elementTable["CommonKey"]] then
			SendNotification()
		end
	end
end

local function EquipPlayer(char, player)
	if LOCAL_PLAYER ~= player then return end
	local progression = char:GetComponent("Progression")
	progressionChangedEvent = progression.progressionUpdatedEvent:Connect(UpdateProgression)
	EquipProgressionCheck(char, progression)
end

local function UnequipPlayer(char, player)
	if LOCAL_PLAYER ~= player then return end
	if progressionChangedEvent then
		progressionChangedEvent:Disconnect()
	end
end

EquipAPI.playerEquippedEvent:Connect(EquipPlayer)
EquipAPI.playerUnequippedEvent:Connect(UnequipPlayer)
